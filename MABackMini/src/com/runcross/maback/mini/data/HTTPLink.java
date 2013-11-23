package com.runcross.maback.mini.data;

public class HTTPLink {

	public static int world = 1;
	
	public static String host = "http://game"+world+"-cbt.ma.sdo.com:10001/";
	
	public static void init(int world,int country){
		
		switch(country){
		  case 1:
			host = "http://game"+world+"-cbt.ma.sdo.com:10001/";
			break;
			
		}//switch
		
	}//method
	
}
