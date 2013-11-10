package com.runcross.stumangersimple.session;

import java.util.HashMap;
import java.util.Map;

public class SESSION  {

	private static Map<String , Object> session;
	static {
		
		session = new HashMap<String, Object>();
	}
	public Object get(String key){
		return session.get(key);
	}
	
	public void put(String key,Object value){
		session.put(key, value);
	}
	
	public Object remove(String key){
		return session.remove(key);
	}
	
	public void clear(){
		session.clear();		
	}
	
	public boolean isEmpty(){
		return session.isEmpty();
	}		
	
}
