package com.runcross.maback.action;


import com.runcross.maback.data.Info;
import com.runcross.maback.util.Network;
/**
 * Ö´ÐÐ²¿·Ö
 */
public class ActionDone {
	public static Info info;
	
	public static Network network= new Network();
	public ActionDone() {
		info = new Info();
		network = new Network();
	}
	
}
