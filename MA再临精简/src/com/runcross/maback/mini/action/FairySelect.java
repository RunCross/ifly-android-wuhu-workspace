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

import com.runcross.maback.mini.data.HTTPLink;
import com.runcross.maback.mini.run.Go;

public class FairySelect {

	public static final String fairyselect = HTTPLink.host+"connect/app/menu/fairyselect?cyt=1";
	private static byte[] response;
	
	
	public static boolean run() throws Throwable{
		response = Go.network.ConnectToServer(fairyselect,null, false);
		
		
		
		return parse(response);
	}

	public static boolean parse(byte[] result) throws Throwable{
//      List<Card> cards =  null;       
      InputStream inStream = new ByteArrayInputStream(result);
      
      XmlPullParser parser = Xml.newPullParser();
      parser.setInput(inStream, "UTF-8");
      int eventType = parser.getEventType();
      
      int i=0;
      while(eventType != XmlPullParser.END_DOCUMENT){//判断文件是否是文件的结尾，END_DOCUMENT文件结尾常量
          switch(eventType){
//          case XmlPullParser.START_DOCUMENT://文件开始，START_DOCUMENT文件开始开始常量
//              cards = new ArrayList<Card>();
//              break;
              
          case XmlPullParser.START_TAG://元素标签开始，START_TAG标签开始常量
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
                 
              
              break;                
          case XmlPullParser.END_TAG://元素标签结束，END_TAG结束常量
              if("Card".equals(parser.getName())){
              }
              break;
          }
          //获取当前元素标签的类型
          eventType = parser.next();            
      }
      
      return true;
  }
	
}
