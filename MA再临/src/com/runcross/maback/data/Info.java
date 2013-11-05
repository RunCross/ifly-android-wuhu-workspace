package com.runcross.maback.data;

import com.runcross.maback.util.Network;


public class Info {
	public static Info info;
	public static Network network;
	public static String LoginId = "";
	public static String LoginPw = "";
	public static int maxbc ;
	public static int bc ;
	public static int maxap ;
	public static int ap ;
	public static String nichen ;
	
	static {
		network = new Network();
		
	}
}
