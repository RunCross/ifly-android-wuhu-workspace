package com.firstgroup.iflytekdaily.work;

import java.util.Map;

import org.json.JSONException;

import com.firstgroup.iflytekdaily.util.HttpClientUtil;
import com.firstgroup.iflytekdaily.util.Session;

public class ChangePass {

	public static boolean change(String oldStr, String newStr){
		
		String param = "?funID=7&username="+Session.get("username")+
				"&oldpsw="+oldStr+
				"&newpsw="+newStr+
				"&key="+Session.get("key");
		boolean flag = false;
		try {
			String result = HttpClientUtil.getLoginUser(param);
			flag = parse(result);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
		
	}

	private static boolean parse(String result) {
		Map<String, String> resu = null;
		try {
			resu = HttpClientUtil.turnToJSon(result);
			if("0".equals(resu.get("StateCode"))){
				return true;
			}
		} catch (JSONException e) {
			e.printStackTrace();
		}
		return false;
		
	}
}
