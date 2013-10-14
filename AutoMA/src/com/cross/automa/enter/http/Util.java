package com.cross.automa.enter.http;

import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPInputStream;

import com.cross.automa.enter.xml.Parse;

/**
 * 发送http请求
 * @author RunCross
 * @since 2013-08-11
 *
 */
public class Util {
	
	//编码
	public static final String encode = "utf-8";
	
	//cookies
	static String sessionid = null; 

	/**
	 * 发送请求获取参数
	 * @param ur 地址
	 * @param params 参数
	 * @param rule 解析的xml节点
	 * @return 
	 */
	public static List<String> getXml(String ur,String params,String rule){
		List<String> result = null;
		URL url = null;
		try {
			url = new URL(new String(ur+params));
			
		} catch (MalformedURLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

				int responseCode = -1;
				HttpURLConnection con = null;
				try {
					con = (HttpURLConnection) url.openConnection();
					if(sessionid != null) { 
						//sessionid值格式：J=AD5F5C9EEB16C71EC3725DBF209F6178，是键值对，不是单指值
						con.setRequestProperty("cookie", sessionid); 
					}
					con.setRequestProperty("User-Agent", "User-Agent: Mozilla/100 (GT-N7000; GT-N7000; 2.3.4) samsung/GT-N7000/GT-N7000:2.3.4/GRJ22/eng.build.20120314.185218:eng/release-keys");// IE代理进行下载
					// 取得sessionid. 
					String cookieval = con.getHeaderField("set-cookie"); 
					if(cookieval != null) { 
					sessionid = cookieval.substring(0, cookieval.indexOf(";")); 
					}
					
					con.setConnectTimeout(60000);
					con.setReadTimeout(60000);
					
					// 获得网页返回信息码
					responseCode = con.getResponseCode();
					
					//联网错误处理
					if (responseCode == -1 || responseCode >= 400) {
						//System.out.println(url.toString() + " : connection is failure...");
						con.disconnect();
						result = new ArrayList<String>();
						result.add(new String("联网失败"));
						return result;
					}					

					//返回的是被压缩过的，需要GZIPInputStream包装解压
					InputStream inStr = new GZIPInputStream(con.getInputStream());
					//解析流
					result = Parse.get(inStr, rule);
					//关闭
					inStr.close();
				} catch (IOException e) {
					e.printStackTrace();
					System.out.println("error: " + url.toString());
				} finally {
					con.disconnect();
				}
				return result;
			}
	
	
}
