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
			/** ������river��ʼ�ڵ�� **/
			river.setName(attributes.getValue("name"));
			river.setLength(Integer.parseInt(attributes.getValue("length")));
		}
		tag=localName;
	}

	/** ������������ǩ���� **/
	public void endElement(String uri, String localName, String qName) {
		// �����ȡ����river��ǩ���������River��ӽ�������
		if (localName.equals("river")) {
			rivers.add(river);
			river=null;
		}
		tag=null;
	}

	// �����Ƕ�ȡ���ڵ�����ʱ��ص�
	public void characters(char[] ch, int start, int length) {
		String data = new String(ch, start, length);
		if (tag!=null) {
			Log.v("tag", tag);
			// ���null����
			
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
