package com.firstgroup.iflytekstudaily.util;

import java.util.HashMap;
import java.util.Map;
/**
 * ������Ϣ����
 * @author RunCross
 *
 */
public class Session {

	private static Map<String ,Object> session;
	static{
		session = new HashMap<String ,Object>();
	}
	
	/**
	 * ��������
	 * @param key
	 * @param value
	 */
	public static void put(String key,Object value){
		session.put(key, value);
	}
	
	
	/**
	 * ��ȡ����
	 * @param key
	 * @return
	 */
	public static Object get(String key){		
		return session.get(key);
	}
	
	/**
	 * �жϿ�
	 * @return
	 */
	public static boolean isEmpty(){
		return session.isEmpty();
	}
	
	
	/**
	 * �������
	 */
	public static void clear(){
		session.clear();
	}
	
	/**
	 * ���³�ʼ��
	 */
	public static void init(){
		session = null;
		session = new HashMap<String ,Object>();
	}
	
}
