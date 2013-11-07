package com.runcross.maback.action;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;

import com.runcross.maback.data.Info;

public class ParseUserDataInfo {
	public static void parse(Document doc) throws NumberFormatException, XPathExpressionException {
		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();

		ActionDone.info.username = xpath.evaluate("//your_data/name", doc);
		ActionDone.info.lv = Integer.parseInt(xpath.evaluate("//your_data/town_level", doc));
		ActionDone.info.ap = Integer.parseInt(xpath.evaluate("//your_data/ap/current", doc));
		ActionDone.info.apMax = Integer.parseInt(xpath.evaluate("//your_data/ap/max", doc));
		ActionDone.info.bc = Integer.parseInt(xpath.evaluate("//your_data/bc/current", doc));
		ActionDone.info.bcMax = Integer.parseInt(xpath.evaluate("//your_data/bc/max", doc));
		ActionDone.info.guildId = xpath.evaluate("//your_data/party_id", doc);
		ActionDone.info.money = Long.parseLong(xpath.evaluate("//your_data/gold", doc));
		if ((Boolean)xpath.evaluate("count(//your_data/free_ap_bc_point)>0", doc, XPathConstants.BOOLEAN)) {
			ActionDone.info.pointToAdd = Integer.parseInt(xpath.evaluate("//your_data/free_ap_bc_point", doc));
			if (ActionDone.info.pointToAdd > 0) ActionDone.info.events.push(Info.EventType.levelUp);
		}
		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=202])>0", doc, XPathConstants.BOOLEAN)) {
			ActionDone.info.ticket = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=202]/num", doc));
			if (ActionDone.info.ticket > 0) ActionDone.info.events.push(Info.EventType.ticketFull);
		}
//		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=1])>0", doc, XPathConstants.BOOLEAN)) {
//			ActionDone.info.fullAp = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=1]/num", doc));
//		}
//		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=2])>0", doc, XPathConstants.BOOLEAN)) {
//			ActionDone.info.fullBc = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=2]/num", doc));
//		}
//		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=101])>0", doc, XPathConstants.BOOLEAN)) {
//			ActionDone.info.halfAp = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=101]/num", doc));
//			ActionDone.info.halfApToday = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=101]/times", doc));
//		}
//		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=111])>0", doc, XPathConstants.BOOLEAN)) {
//			ActionDone.info.halfBc = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=111]/num", doc));
//			ActionDone.info.halfBcToday = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=111]/times", doc));
//		}
		
		
		
			
	}
}
