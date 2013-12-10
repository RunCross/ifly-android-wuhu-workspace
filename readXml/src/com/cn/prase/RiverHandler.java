package com.cn.prase;

import java.util.ArrayList;
import java.util.List;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import android.util.Log;

import com.cn.data.River;

public class RiverHandler extends DefaultHandler {
	private River river=null;
	private List<River> rivers=null;
	private String tag=null;
	
	public void startDocument() throws SAXException {
		rivers = new ArrayList<River>();
	}
	public void startElement(String uri, String localName, String qName,
			Attributes attributes) {
		if (localName.equals("river")) {
			river = new River();
			/** 导航到river开始节点后 **/
			river.setName(attributes.getValue("name"));
			river.setLength(Integer.parseInt(attributes.getValue("length")));
		}
		tag=localName;
	}

	/** 导航到结束标签触发 **/
	public void endElement(String uri, String localName, String qName) {
		// 如果读取的是river标签结束，则把River添加进集合中
		if (localName.equals("river")) {
			rivers.add(river);
			river=null;
		}
		tag=null;
	}

	// 这里是读取到节点内容时候回调
	public void characters(char[] ch, int start, int length) {
		String data = new String(ch, start, length);
		if (tag!=null) {
			Log.v("tag", tag);
			// 解决null问题
			
			Log.v("data", data);
			if(tag.equals("imageurl")&&river.getImageurl()==""){
				river.setImageurl(data);
			}
			else if(tag.equals("introduction")&&river.getIntroduction()==""){
				river.setIntroduction(data);
			}
		} 
	}

	public List<River> getRivers() {
		return rivers;
	}
}
