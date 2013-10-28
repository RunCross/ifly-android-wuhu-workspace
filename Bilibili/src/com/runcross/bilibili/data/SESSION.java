package com.runcross.bilibili.data;

import java.util.HashMap;
import java.util.Map;

public class SESSION {

	private static Map<String, Object> session;
	
	static{
	  session = new HashMap<String, Object>();	
	}
	
	
	public void put(String key, Object value){
		session.put(key, value);
	} 
	
	public Object get(String key){
		return session.get(key);
	}
	
}
