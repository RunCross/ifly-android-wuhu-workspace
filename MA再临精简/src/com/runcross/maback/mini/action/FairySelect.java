package com.runcross.maback.mini.action;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.apache.http.client.ClientProtocolException;
import org.xmlpull.v1.XmlPullParser;

import android.util.Xml;

import com.runcross.maback.full.action.ActionDone;
import com.runcross.maback.full.data.Card;
import com.runcross.maback.mini.data.HTTPLink;
import com.runcross.maback.mini.run.Go;

public class FairySelect {

	public static final String fairyselect = HTTPLink.host+"connect/app/menu/fairyselect?cyt=1";
	private static byte[] response;
	
	
	public static boolean run() throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException, ClientProtocolException, IOException{
		response = Go.network.ConnectToServer(fairyselect,null, false);
		
		
		
		return parse(response);;
	}

	public static boolean parse(byte[] result) throws Throwable{
//      List<Card> cards =  null;       
      InputStream inStream = new ByteArrayInputStream(result);
      
      XmlPullParser parser = Xml.newPullParser();
      parser.setInput(inStream, "UTF-8");
      int eventType = parser.getEventType();
      
      int i=0;
      while(eventType != XmlPullParser.END_DOCUMENT){//�ж��ļ��Ƿ����ļ��Ľ�β��END_DOCUMENT�ļ���β����
          switch(eventType){
//          case XmlPullParser.START_DOCUMENT://�ļ���ʼ��START_DOCUMENT�ļ���ʼ��ʼ����
//              cards = new ArrayList<Card>();
//              break;
              
          case XmlPullParser.START_TAG://Ԫ�ر�ǩ��ʼ��START_TAG��ǩ��ʼ����
              String name = parser.getName();
              switch (name){
              case "code":
            	  if(parser.next() != 0){
//            		  Go.policy.push(Go.RELOGIN);
            		  return false;
            	  }
            	  
              case "user":
            	  
            	  break;
              }
              if("user".equals(name)){
                  card = new Card();
//                  card.serialId = parser.getAttributeValue(0);
//                  System.out.println("new "+ i++);
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
          case XmlPullParser.END_TAG://Ԫ�ر�ǩ������END_TAG��������
              if("Card".equals(parser.getName())){
              	card.exist = true;
              	ActionDone.info.cardList.add(card);
                  card = null;
              }
              break;
          }
          //��ȡ��ǰԪ�ر�ǩ������
          eventType = parser.next();            
      }
      
      return true;
  }
	
}
