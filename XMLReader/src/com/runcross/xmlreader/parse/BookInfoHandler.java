package com.runcross.xmlreader.parse;

import java.util.ArrayList;
import java.util.List;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import android.util.Log;
import com.runcross.xmlreader.bean.BookInfo;

public class BookInfoHandler extends DefaultHandler {
	private BookInfo book=null;
	private List<BookInfo> books=null;
	private String tag=null;
	
	public void startDocument() throws SAXException {
		books = new ArrayList<BookInfo>();
	}
	public void startElement(String uri, String localName, String qName,
			Attributes attributes) {
		if (localName.equals("book")) {
			book = new BookInfo();
			/** ������BookInfo��ʼ�ڵ�� **/
			book.setName(attributes.getValue("name"));
			book.setDate(attributes.getValue("publishdate"));		
		}
		tag=localName;
	}

	/** ������������ǩ���� **/
	public void endElement(String uri, String localName, String qName) {
		// �����ȡ����BookInfo��ǩ���������BookInfo��ӽ�������
		if (localName.equals("book")) {
			books.add(book);
			System.out.println("ins"+book.getInstr());
			book=null;
		}
		tag=null;
	}

	// �����Ƕ�ȡ���ڵ�����ʱ��ص�
	public void characters(char[] ch, int start, int length) {
		String data = new String(ch, start, length);
		if (tag!=null) {
//			Log.v("tag", tag);
			// ���null����
//			Log.v("data", data);
			
			if(tag.equals("introduction")&&null == book.getInstr()){
				book.setInstr(data);
			}			
		} 
	}

	public List<BookInfo> getBookInfos() {
		return books;
	}
}
