package com.runcross.maback.mini.info;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;

import com.runcross.maback.mini.start.Info;


import net.Process;

public class GetUserInfo {
	
	public static void getUserInfo(Document doc,boolean getId) throws Exception{
		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();
		Process.info.cookie = xpath.evaluate("//session_id", doc);
		Info.userName = xpath.evaluate("//your_data/name", doc);
		Info.userLv = xpath.evaluate("//your_data/town_level", doc);
		Info.apMax = Integer.parseInt(xpath.evaluate("//your_data/ap/max", doc));
		Info.apCurrent = Integer.parseInt(xpath.evaluate("//your_data/ap/current", doc));
		Info.bcMax = Integer.parseInt(xpath.evaluate("//your_data/bc/max", doc));
		Info.bcCurrent = Integer.parseInt(xpath.evaluate("//your_data/bc/current", doc));
		Process.info.freeApBcPoint = Integer.parseInt(xpath.evaluate("//your_data/free_ap_bc_point", doc));
		if(getId){
			Process.info.userId = xpath.evaluate("/response/body/login/user_id", doc);
			String wolf = xpath.evaluate("//your_data/owner_card_list/user_card[master_card_id=124][lv=50]/serial_id", doc);
			//找不到50的表示可能为闪卡，尝试找60的
			if(null == wolf || wolf.equals("")){
				wolf = xpath.evaluate("//your_data/owner_card_list/user_card[master_card_id=124][lv=60]/serial_id", doc);
			}
//			if(Info.pvpCard.equals("") && (null == wolf || wolf.equals(""))){
//				Info.isPVP = "0";
//			}else{
//				if(Info.pvpCard.equals("")){
//					Info.pvpCard = wolf+",empty,empty,empty,empty,empty,empty,empty,empty,empty,empty,empty";
//					Info.pvpLr = wolf;
//				}
//			}
			//还是找不到则表示没满破
			if(null == wolf || wolf.equals("")){
				wolf = xpath.evaluate("//your_data/owner_card_list/user_card[master_card_id=124]/serial_id", doc);
			}
			
			if(null == wolf || wolf.equals("")){
				Info.wolf = Info.wolf+",empty,empty,empty,empty,empty,empty,empty,empty,empty,empty,empty";
			}else{
				Info.wolf = wolf+",empty,empty,empty,empty,empty,empty,empty,empty,empty,empty,empty";
				Info.wolfLr = wolf;
				Info.lickCost = 2;
			}
		}
	}

}
