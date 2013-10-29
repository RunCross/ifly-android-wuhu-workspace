package com.runcross.bilibili.data;

import java.util.HashMap;
import java.util.Map;

public class SESSION {

	private static Map<String, Object> session;
	
	static{
	  session = new HashMap<String, Object>();	  
	}
	
	
	public static void put(String key, Object value){
		session.put(key, value);
	} 
	
	public static Object get(String key){		
		return session.get(key);
	}
	
	public static boolean isempty(){
		return session.isEmpty();
	}
	
	public static Object remove(Object key){
		return session.remove(key);
	}
	
}
