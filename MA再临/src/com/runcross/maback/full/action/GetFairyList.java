package com.runcross.maback.full.action;


import java.util.ArrayList;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.apache.http.NameValuePair;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.runcross.maback.full.action.Log;
import com.runcross.maback.full.action.ActionRegistry.Action;
import com.runcross.maback.full.data.ErrorData;
import com.runcross.maback.full.data.FairyBattleInfo;
import com.runcross.maback.full.data.FairySelectUser;
import com.runcross.maback.full.data.HTTPLink;
import com.runcross.maback.full.data.Info;
import com.runcross.maback.full.data.PFBGood;

public class GetFairyList {
	public static final Action Name = Action.GET_FAIRY_LIST;

	private static final String URL_FAIRY_LIST = HTTPLink.host+"connect/app/private_fairy/private_fairy_select?cyt=1";
	
	private static byte[] response;
	
	public static boolean run() throws Exception {
		try {
			response = ActionDone.network.ConnectToServer(URL_FAIRY_LIST, new ArrayList<NameValuePair>(), false);
		} catch (Exception ex) {
			ErrorData.currentDataType = ErrorData.DataType.text;
			ErrorData.currentErrorType = ErrorData.ErrorType.ConnectionError;
			ErrorData.text = ex.getMessage();
			throw ex;
		}

		Document doc;
		try {
			doc = ActionDone.ParseXMLBytes(response);
		} catch (Exception ex) {
			ErrorData.currentDataType = ErrorData.DataType.bytes;
			ErrorData.currentErrorType = ErrorData.ErrorType.FairyListDataError;
			ErrorData.bytes = response;
			throw ex;
		}
		
		try {
			return parse(doc);
		} catch (Exception ex) {
			throw ex;
		}
		
	}
	private static boolean parse(Document doc) throws Exception {

		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();
		
		
		try {
			if (!xpath.evaluate("/response/header/error/code", doc).equals("0")) {
				ErrorData.currentErrorType = ErrorData.ErrorType.FairyListResponse;
				ErrorData.currentDataType = ErrorData.DataType.text;
				ErrorData.text = xpath.evaluate("/response/header/error/message", doc);
				return false;
			}
			
			if (!xpath.evaluate("//remaining_rewards", doc).equals("0")) {
				if (Info.receiveBattlePresent) {
					ActionDone.info.events.push(Info.EventType.fairyReward);
				}
			}
			
			//获取放妖的用�?			
			NodeList fairyuser = (NodeList)xpath.evaluate("//fairy_select/user", doc, XPathConstants.NODESET);
			for(int i = 0; i < fairyuser.getLength(); i++)
			{
				Node f = fairyuser.item(i).getFirstChild();
				FairySelectUser fsu = new FairySelectUser();
				do {
					if (f.getNodeName().equals("id")) {
						fsu.userID = f.getFirstChild().getNodeValue();
					} else if (f.getNodeName().equals("name")) {
						fsu.userName = f.getFirstChild().getNodeValue();
					}
					f = f.getNextSibling();
				} while (f != null);
				if(!ActionDone.info.FairySelectUserList.containsKey(fsu.userID))
				{
					ActionDone.info.FairySelectUserList.put(fsu.userID,fsu);
				}
			}
		
			
			// TODO: 这两周先是只寻找0BC的，之后再扩�?			//NodeList fairy = (NodeList)xpath.evaluate("//fairy_select/fairy_event[put_down=4]/fairy", doc, XPathConstants.NODESET);
			NodeList fairy = (NodeList)xpath.evaluate("//fairy_select/fairy_event[put_down=1]/fairy", doc, XPathConstants.NODESET);
			
			ArrayList<FairyBattleInfo> fbis = new ArrayList<FairyBattleInfo>();
			for (int i = 0; i < fairy.getLength(); i++) {
				Node f = fairy.item(i).getFirstChild();
				FairyBattleInfo fbi = new FairyBattleInfo();
				boolean attack_flag = false;
				do {
					if (f.getNodeName().equals("serial_id")) {
						fbi.SerialId = f.getFirstChild().getNodeValue();
					} else if (f.getNodeName().equals("discoverer_id")) {
						fbi.UserId = f.getFirstChild().getNodeValue();
					} else if (f.getNodeName().equals("lv")) {
						fbi.FairyLevel = f.getFirstChild().getNodeValue();
					} else if (f.getNodeName().equals("name")) {
						fbi.FairyName = f.getFirstChild().getNodeValue();
					} else if (f.getNodeName().equals("rare_flg")) {
						if (f.getFirstChild().getNodeValue().equals("1")) {
							fbi.Type = FairyBattleInfo.PRIVATE | FairyBattleInfo.RARE;
						} else {
							fbi.Type = FairyBattleInfo.PRIVATE;
						}
					} else if (f.getNodeName().equals("hp")){
						fbi.fairyCurrHp = Integer.parseInt(f.getFirstChild().getNodeValue());
					} else if (f.getNodeName().equals("hp_max")){
						fbi.fairyMaxHp = Integer.parseInt(f.getFirstChild().getNodeValue());
					}
					f = f.getNextSibling();
				} while (f != null);
				if (Info.AllowAttackSameFairy) {
					fbis.add(fbi);
				} else {
					for (FairyBattleInfo bi : ActionDone.info.LatestFairyList) {
						if (bi.equals(fbi)) {
							// 已经舔过
							attack_flag = true;
							break;
						}
					}
					if (!attack_flag) fbis.add(fbi);
				}
				
			}
			
			
			if (fbis.size() > 1) ActionDone.info.events.push(Info.EventType.fairyAppear); // 以便再次寻找
			if (fbis.size() > 0) {
				ActionDone.info.events.push(Info.EventType.gotoFloor);
				ActionDone.info.events.push(Info.EventType.recvPFBGood);
				ActionDone.info.events.push(Info.EventType.fairyCanBattle);
				ActionDone.info.fairy = new FairyBattleInfo(fbis.get(0));
			}
			
			NodeList fairy1 = (NodeList) xpath.evaluate(
					"//fairy_select/fairy_event[put_down=5]/fairy", doc,
					XPathConstants.NODESET);

			int aa = fairy1.getLength();

			Log.log("" + aa + "");
			for (int i = 0; i < fairy1.getLength(); i++) {
				Node f = fairy1.item(i).getFirstChild();
				String serial_Id = "";
				String user_Id = "";
				do {
					if (f.getNodeName().equals("serial_id")) {
						serial_Id = f.getFirstChild().getNodeValue();
					} else if (f.getNodeName().equals("discoverer_id")) {
						user_Id = f.getFirstChild().getNodeValue();
					}
					f = f.getNextSibling();
				} while (f != null);
				ActionDone.info.PFBGoodList.push(new PFBGood(serial_Id, user_Id));
			}
			if(!ActionDone.info.PFBGoodList.isEmpty())
			{
				ActionDone.info.events.push(Info.EventType.PFBGood);
			}

			ActionDone.info.SetTimeoutByAction(Name);
			
		} catch (Exception ex) {
			if (ErrorData.currentErrorType != ErrorData.ErrorType.none) throw ex;
			ErrorData.currentDataType = ErrorData.DataType.bytes;
			ErrorData.currentErrorType = ErrorData.ErrorType.FairyListDataParseError;
			ErrorData.bytes = response;
			throw ex;
		}
		
		return true;

	}
}
