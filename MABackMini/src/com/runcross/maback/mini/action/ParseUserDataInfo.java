package com.runcross.maback.mini.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Document;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

import android.util.Xml;

import com.runcross.maback.mini.data.Info;
import com.runcross.maback.mini.run.Go;

public class ParseUserDataInfo {
	public static void parse(Document doc) throws NumberFormatException, XPathExpressionException {
		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();

		Go.info.username = xpath.evaluate("//your_data/name", doc);
		Go.info.lv = Integer.parseInt(xpath.evaluate("//your_data/town_level", doc));
		Go.info.ap = Integer.parseInt(xpath.evaluate("//your_data/ap/current", doc));
		Go.info.apMax = Integer.parseInt(xpath.evaluate("//your_data/ap/max", doc));
		Go.info.bc = Integer.parseInt(xpath.evaluate("//your_data/bc/current", doc));
		Go.info.bcMax = Integer.parseInt(xpath.evaluate("//your_data/bc/max", doc));
		Go.info.guildId = xpath.evaluate("//your_data/party_id", doc);
		Go.info.money = Long.parseLong(xpath.evaluate("//your_data/gold", doc));
		if ((Boolean)xpath.evaluate("count(//your_data/free_ap_bc_point)>0", doc, XPathConstants.BOOLEAN)) {
			Go.info.pointToAdd = Integer.parseInt(xpath.evaluate("//your_data/free_ap_bc_point", doc));
			if (Go.info.pointToAdd > 0) Go.info.events.push(Info.EventType.levelUp);
		}
		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=202])>0", doc, XPathConstants.BOOLEAN)) {
			Go.info.ticket = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=202]/num", doc));
			if (Go.info.ticket > 0) Go.info.events.push(Info.EventType.ticketFull);
		}
//		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=1])>0", doc, XPathConstants.BOOLEAN)) {
//			Go.info.fullAp = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=1]/num", doc));
//		}
//		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=2])>0", doc, XPathConstants.BOOLEAN)) {
//			Go.info.fullBc = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=2]/num", doc));
//		}
//		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=101])>0", doc, XPathConstants.BOOLEAN)) {
//			Go.info.halfAp = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=101]/num", doc));
//			Go.info.halfApToday = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=101]/times", doc));
//		}
//		if ((Boolean)xpath.evaluate("count(//your_data/itemlist[item_id=111])>0", doc, XPathConstants.BOOLEAN)) {
//			Go.info.halfBc = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=111]/num", doc));
//			Go.info.halfBcToday = Integer.parseInt(xpath.evaluate("//your_data/itemlist[item_id=111]/times", doc));
//		}
	
	}
	
	public static void parse(byte[] result) throws XmlPullParserException, IOException{
        InputStream inStream = new ByteArrayInputStream(result);
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(inStream, "UTF-8");
        int eventType = parser.getEventType();
        
//        int i=0;
        while(eventType != XmlPullParser.END_DOCUMENT){//判断文件是否是文件的结尾，END_DOCUMENT文件结尾常量
            switch(eventType){
//            case XmlPullParser.START_DOCUMENT://文件开始，START_DOCUMENT文件开始开始常量
//                cards = new ArrayList<Card>();
//                break;
                
            case XmlPullParser.START_TAG://元素标签开始，START_TAG标签开始常量
                String name = parser.getName();
                
                    if("name".equals(name)){
                    	Go.info.username = parser.nextText();
                    }
                    if("town_level".equals(name)){
                    	Go.info.lv = Integer.parseInt(parser.nextText());
                    }                    
                    if("ap".equals(name)){
                    	
                    	Go.info.ap = Integer.parseInt(parser.nextText());
                    	eventType = parser.next(); 
                    	Go.info.apMax = Integer.parseInt(parser.nextText());
                    }
                    if("bc".equals(name)){
                    	Go.info.bc = Integer.parseInt(parser.nextText());
                    	eventType = parser.next(); 
                    	Go.info.bcMax = Integer.parseInt(parser.nextText());
                    }
                    if("party_id".equals(name)){
                    	Go.info.guildId = parser.nextText();
                    }
                    if("gold".equals(name)){
                    	Go.info.money = Integer.parseInt(parser.nextText());                    }
                    
                break;                
            case XmlPullParser.END_TAG://元素标签结束，END_TAG结束常量
                
                break;
            }
            //获取当前元素标签的类型
            eventType = parser.next();            
        }
	}
	
}
