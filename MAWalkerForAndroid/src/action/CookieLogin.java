package action;

import info.FairySelectUser;

import java.util.ArrayList;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

import org.apache.http.NameValuePair;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.w3c.dom.Document;

import com.example.maw.MainActivity;

import walker.Config;
import walker.ErrorData;
import walker.Info;
import walker.Process;

public class CookieLogin {
	public static final ActionRegistry.Action Name = ActionRegistry.Action.LOGIN;
	// URLs
	private static final String URL_CHECK_INSPECTION = "http://web.million-arthurs.com/connect/app/check_inspection?cyt=1";
	private static final String URL_MAINMENU= "http://web.million-arthurs.com/connect/app/mainmenu?cyt=1";
	// error type
	public static final String ERR_CHECK_INSPECTION = "CoolieLogin/check_inspection";
	public static final String ERR_MAINMENU = "CookieLogin/mainmenu";
	
	private static byte[] result;
	
	public static int run() throws Exception {
		try {
			return run(false);
		} catch (Exception ex) {
			throw ex;
		}
	}
	
	public static int run(boolean jump) throws Exception {
		Document doc;
		if (!jump) {
			try {
				if(!MainActivity.config.getString("SessionID", "").isEmpty())
				{
					BasicClientCookie c = new BasicClientCookie("S",MainActivity.config.getString("SessionID", ""));
					c.setDomain("web.million-arthurs.com");
					c.setPath("/");
					Process.network.cookie.addCookie(c);
//					System.out.println("Post logon cookies:");
//					List<Cookie> cookies = Process.network.cookie.getCookies();
//					if (cookies.isEmpty()) {
//						System.out.println("None");
//					} else {
//						for (int i = 0; i < cookies.size(); i++) {
//							System.out.println("- " + cookies.get(i).getName());
//							if (cookies.get(i).getName().equals("S")) {
//								System.out.println("- "
//										+ cookies.get(i).getValue());
//								System.out.println("- "
//										+ cookies.get(i).toString());
//							}
//						}
//					}
				}
				result = Process.network.ConnectToServer(URL_CHECK_INSPECTION, new ArrayList<NameValuePair>(), true);
			} catch (Exception ex) {
				ErrorData.currentDataType = ErrorData.DataType.text;
				ErrorData.currentErrorType = ErrorData.ErrorType.ConnectionError;
				ErrorData.text = ERR_CHECK_INSPECTION;
				throw ex;
			}
		}

//		System.out.println("Post logon cookies:");
//		List<Cookie> cookies = Process.network.cookie.getCookies();
//		if (cookies.isEmpty()) {
//			System.out.println("None");
//		} else {
//			for (int i = 0; i < cookies.size(); i++) {
//				System.out.println("- " + cookies.get(i).getName());
//				if (cookies.get(i).getName().equals("S"))
//					System.out.println("- " + cookies.get(i).getValue());
//			}
//		}

		try {
			result = Process.network.ConnectToServer(URL_MAINMENU, new ArrayList<NameValuePair>(),true);
		} catch (Exception ex) {
			ErrorData.currentDataType = ErrorData.DataType.text;
			ErrorData.currentErrorType = ErrorData.ErrorType.ConnectionError;
			ErrorData.text = ex.getMessage();
			ex.printStackTrace();
			throw ex;
		}
		try {
			doc = Process.ParseXMLBytes(result);
		} catch (Exception ex) {
			ErrorData.currentDataType = ErrorData.DataType.text;
			ErrorData.currentErrorType = ErrorData.ErrorType.LoginDataError;
			ErrorData.text = ERR_MAINMENU;
			throw ex;
		}
		try {
			return parse(doc);
		} catch (Exception ex) {
			throw ex;
		}
	}
	
	private static int parse(Document doc) throws Exception {
		try {
			XPathFactory factory = XPathFactory.newInstance();
			XPath xpath = factory.newXPath();
			if (!xpath.evaluate("/response/header/error/code", doc).equals("0")) {
				ErrorData.currentErrorType = ErrorData.ErrorType.LoginResponse;
				ErrorData.currentDataType = ErrorData.DataType.text;
				ErrorData.text = xpath.evaluate("/response/header/error/message", doc);
				return 0;
			}
			
			if (GuildDefeat.judge(doc)) {
				return 2;
			}
			
			if (!xpath.evaluate("//fairy_appearance", doc).equals("0")) {
				Process.info.events.push(Info.EventType.fairyAppear);
			}
			
			Process.info.userId = xpath.evaluate("//login/user_id", doc);
			ParseUserDataInfo.parse(doc);
			ParseCardList.parse(doc);
			
			Process.info.FairySelectUserList.put(Process.info.userId,
					new FairySelectUser(Process.info.userId,
							Process.info.username)); //添加自己到放妖的用户列表
			
			Process.info.SetTimeoutByAction(Name);
			
			Process.info.cardMax = Integer.parseInt(xpath.evaluate("//your_data/max_card_num",doc));
			
		} catch (Exception ex) {
			if (ErrorData.currentErrorType != ErrorData.ErrorType.none) throw ex;
			ErrorData.currentDataType = ErrorData.DataType.bytes;
			ErrorData.currentErrorType = ErrorData.ErrorType.LoginDataParseError;
			ErrorData.bytes = result;
			throw ex;
		}
		return 1;
	}
}
