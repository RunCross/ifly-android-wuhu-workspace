package com.firstgroup.iflytekdaily.work;

import java.util.Map;

import org.json.JSONException;

import com.firstgroup.iflytekdaily.util.HttpClientUtil;
import com.firstgroup.iflytekdaily.util.Session;

public class EmailUpdate {

	public static String getMessage() throws JSONException, Exception{
		String param = "?funID=13"+"&username="+Session.get("username")+"&key="+Session.get("key");
		Map<String, String> map = HttpClientUtil.myInformTurnToJSon(HttpClientUtil.getLoginUser(param)); 
		return (String) map.get("Email");
		
	}
	
	public static String updateEmail(String email) throws Exception{
		String param = "?funID=14"+"&username="+Session.get("username")+"&email="+email+"&key="+Session.get("key");
//		System.out.println(param);
		
		return HttpClientUtil.turnToJSon(HttpClientUtil.getLoginUser(param)).get("Message");
	}
}
