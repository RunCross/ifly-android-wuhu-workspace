package com.firstgroup.iflytekstudaily.util;

import java.util.HashMap;
import java.util.Map;
/**
 * 共用信息交流
 * @author RunCross
 *
 */
public class Session {

	private static Map<String ,Object> session;
	static{
		session = new HashMap<String ,Object>();
	}
	
	/**
	 * 存入数据
	 * @param key
	 * @param value
	 */
	public static void put(String key,Object value){
		session.put(key, value);
	}
	
	
	/**
	 * 获取数据
	 * @param key
	 * @return
	 */
	public static Object get(String key){		
		return session.get(key);
	}
	
	/**
	 * 判断空
	 * @return
	 */
	public static boolean isEmpty(){
		return session.isEmpty();
	}
	
	
	/**
	 * 清除数据
	 */
	public static void clear(){
		session.clear();
	}
	
	/**
	 * 重新初始化
	 */
	public static void init(){
		session = null;
		session = new HashMap<String ,Object>();
	}
	
}
