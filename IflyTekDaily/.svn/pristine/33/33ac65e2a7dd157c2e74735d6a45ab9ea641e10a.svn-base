package com.firstgroup.iflytekdaily.work;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;

import android.content.Intent;
import android.widget.Toast;

import com.firstgroup.iflytekdaily.main.DailyWriteActivity;
import com.firstgroup.iflytekdaily.util.HttpClientUtil;
import com.firstgroup.iflytekdaily.util.Session;
/**
 * 提交当天的日报的方法  和补填其他天日报的方法
 * @author yi1992
 *
 */

public class CommitDailyUtil {
	/**
	 * 填写今日日报
	 */
	public static String commitTadayDaily(String todayJob, String needCoordinate,String userName,String key) {
		String resultFalg = "";
		
		try {
		//	String username = (String) Session.get("username");
		//	String key = (String) Session.get("key");
			String message = "?funID=" + 2 + "&username=" + userName + "&text="
					+ URLEncoder.encode(todayJob, "gb2312") + "&other="
					+ URLEncoder.encode(needCoordinate, "gb2312") + "&key="
					+ key;
			String result = HttpClientUtil.getLoginUser(message);
			Map<String, String> map = HttpClientUtil.turnToJSon(result);
			resultFalg = map.get("StateCode");

		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultFalg;

	}
	
	/**
	 * 补填其他天未填日报
	 */
	public static  String writeOtherDayDaily(String todayJob, String needCoordinate ,String dateStr){
		String resultFalg = "";
		String username = (String) Session.get("username");
		String key = (String) Session.get("key");
		try {
			
			String message = "?funID=" + 9 + "&username=" + username
					+ "&text=" + URLEncoder.encode(todayJob,"gb2312") + "&other=" + URLEncoder.encode(needCoordinate,"gb2312") +"&dailyDate"+dateStr+"&key="
					+ key;
			String result=HttpClientUtil.getLoginUser(message);
			Map<String, String> map=HttpClientUtil.turnToJSon(result);
			resultFalg = map.get("StateCode");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		

		 catch (Exception e) {
			e.printStackTrace();
		}
		return resultFalg;
	}

}
