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
			/** 导航到BookInfo开始节点后 **/
			book.setName(attributes.getValue("name"));
			book.setDate(attributes.getValue("publishdate"));		
		}
		tag=localName;
	}

	/** 导航到结束标签触发 **/
	public void endElement(String uri, String localName, String qName) {
		// 如果读取的是BookInfo标签结束，则把BookInfo添加进集合中
		if (localName.equals("book")) {
			books.add(book);
			System.out.println("ins"+book.getInstr());
			book=null;
		}
		tag=null;
	}

	// 这里是读取到节点内容时候回调
	public void characters(char[] ch, int start, int length) {
		String data = new String(ch, start, length);
		if (tag!=null) {
//			Log.v("tag", tag);
			// 解决null问题
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
