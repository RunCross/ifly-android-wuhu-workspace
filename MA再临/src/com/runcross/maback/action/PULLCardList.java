package com.runcross.maback.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;

import android.util.Xml;

import com.runcross.maback.data.Card;

public class PULLCardList {

	/**
     * PULL方式获取XML文件内容
     * @param inStream
     * @return
     * @throws Throwable
     */
    public static void getCards(byte[] result) throws Throwable{
//        List<Card> cards =  null;
        Card card = null; 
        InputStream inStream = new ByteArrayInputStream(result);
        
        XmlPullParser parser = Xml.newPullParser();
        parser.setInput(inStream, "UTF-8");
        int eventType = parser.getEventType();
        
        int i=0;
        while(eventType != XmlPullParser.END_DOCUMENT){//判断文件是否是文件的结尾，END_DOCUMENT文件结尾常量
            switch(eventType){
//            case XmlPullParser.START_DOCUMENT://文件开始，START_DOCUMENT文件开始开始常量
//                cards = new ArrayList<Card>();
//                break;
                
            case XmlPullParser.START_TAG://元素标签开始，START_TAG标签开始常量
                String name = parser.getName();
                if("user_card".equals(name)){
                    card = new Card();
//                    card.serialId = parser.getAttributeValue(0);
                    System.out.println("new "+ i++);
                }
                
                if(card != null){
                    if("serialId".equals(name)){
                        card.serialId = parser.nextText();
                    }
                    if("holography".equals(name)){
                        card.holo = parser.nextText().equals("0");
                    }                    
                    if("lv".equals(name)){
                        card.lv = Integer.parseInt(parser.nextText());
                    }
                    if("lv_max".equals(name)){
                        card.lvMax = Integer.parseInt(parser.nextText());
                    }
                    if("hp".equals(name)){
                        card.hp = Integer.parseInt(parser.nextText());
                    }
                    if("power".equals(name)){
                        card.atk = Integer.parseInt(parser.nextText());                    }
                    if("plus_limit_count".equals(name)){
                        card.plusLimit = Integer.parseInt(parser.nextText());
                    }
                   
                }
                break;                
            case XmlPullParser.END_TAG://元素标签结束，END_TAG结束常量
                if("Card".equals(parser.getName())){
                	card.exist = true;
                	ActionDone.info.cardList.add(card);
                    card = null;
                }
                break;
            }
            //获取当前元素标签的类型
            eventType = parser.next();            
        }
    }

}
