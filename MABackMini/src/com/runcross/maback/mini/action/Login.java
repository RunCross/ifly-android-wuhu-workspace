package com.runcross.maback.mini.action;


import java.util.ArrayList;
import net.Process;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.w3c.dom.Document;

import com.runcross.maback.mini.info.GetUserInfo;
import com.runcross.maback.mini.start.Info;


public class Login {

	
	private static final String URL_CHECK_INSPECTION = Info.LoginServer +"/connect/app/check_inspection?cyt=1";
	//登陆url
	private static final String URL_LOGIN = Info.LoginServer + "/connect/app/login?cyt=1";

	//返回结果
	private static byte[] result;
	
	public static boolean run() throws Exception {
		try {
			return run(true);
		} catch (Exception ex) {
			throw ex;
		}
	}
	
	public static boolean run(boolean jump) throws Exception {
		Document doc;
		
		if (!jump) {
			try {
				result = Process.connect.connectToServer(URL_CHECK_INSPECTION, new ArrayList<NameValuePair>());
			} catch (Exception ex) {
				throw ex;
			}
		}
		
		ArrayList<NameValuePair> al = new ArrayList<NameValuePair>();
		al.add(new BasicNameValuePair("login_id",Info.LoginId));
		al.add(new BasicNameValuePair("password",Info.LoginPw));
		try {
			result = Process.connect.connectToServer(URL_LOGIN, al);
		} catch (Exception ex) {
			throw ex;
		}
		try {
			doc = Process.ParseXMLBytes(result);
			
		} catch (Exception ex) {
			throw ex;
		}
		try {
			return parse(doc);
		} catch (Exception ex) {
			throw ex;
		}
	}
	
	private static boolean parse(Document doc) throws Exception {
		try {
			
//			CreateXML.createXML(doc, "userInfo");
			
            if (ExceptionCatch.catchException(doc)) {
				return false;
			}
			
			GetUserInfo.getUserInfo(doc,true);
			
		} catch (Exception ex) {
			throw ex;
		}
		return true;
	}
	
}
