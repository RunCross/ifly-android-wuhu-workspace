package com.runcross.xmlreader.parse;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

import com.runcross.xmlreader.bean.BookInfo;

import android.util.Log;
import android.util.Xml;

public class PraseXml {
	public List<BookInfo> Dom(InputStream in) {
		List<BookInfo> bookInfos = new ArrayList<BookInfo>();
		DocumentBuilderFactory factory = null;
		DocumentBuilder builder = null;
		Document document = null;
		factory = DocumentBuilderFactory.newInstance();
		try {
			// 找到xml，并加载文档
			builder = factory.newDocumentBuilder();
			document = builder.parse(in);
			// 找到根Element
			Element root = document.getDocumentElement();
			NodeList bookInfonodes = root.getElementsByTagName("book"); // 遍历根节点所有子节点
			BookInfo book = null;
			for (int i = 0; i < bookInfonodes.getLength(); i++) {
				book = new BookInfo(); // 获取BookInfo元素节点
				Element bookInfoElement = (Element) bookInfonodes.item(i);
				// 获取BookInfo中name属性值
				book.setName(bookInfoElement.getAttribute("name"));
				book.setDate(bookInfoElement.getAttribute("publishdate"));
				// 获取BookInfo下introduction标签
				Element introduction = (Element) bookInfoElement
						.getElementsByTagName("introduction").item(0);
				book.setInstr(introduction.getFirstChild()
						.getNodeValue());				
				Log.v("BookInfo", book.toString());
				bookInfos.add(book);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		} finally {
			try {
				in.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return bookInfos;
	}

	public List<BookInfo> Sax(InputSource insource) {
		List<BookInfo> bookInfos = null;
		SAXParserFactory factory = SAXParserFactory.newInstance();
		try {
			SAXParser parser = factory.newSAXParser();
			// 获取事件源
			XMLReader xmlReader = parser.getXMLReader();
			// 设置处理器
			BookInfoHandler handler = new BookInfoHandler();
			xmlReader.setContentHandler(handler);
			// 解析xml文档
			// xmlReader.parse(new InputSource(new URL(xmlPath).openStream()));
			xmlReader.parse(insource);
			bookInfos = handler.getBookInfos();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return bookInfos;
	}

	public List<BookInfo> Pull(InputStream in) throws XmlPullParserException,
			IOException {
		List<BookInfo> books = new ArrayList<BookInfo>();
		// 获得XmlPullParser解析器
		XmlPullParser xmlParser = Xml.newPullParser();
		BookInfo book = null;
		xmlParser.setInput(in, "utf-8");
		// 获得解析到的事件类别，这里有开始文档，结束文档，开始标签，结束标签，文本等等事件。
		int evtType = xmlParser.getEventType();
		// 一直循环，直到文档结束
		while (evtType != XmlPullParser.END_DOCUMENT) {
			switch (evtType) {
			case XmlPullParser.START_TAG:
				// 如果是BookInfo标签开始，则说明需要实例化对象了
				if (xmlParser.getName().equals("book")) {
					// 取出BookInfo标签中的一些属性值
					book = new BookInfo();
					book.setName(xmlParser.getAttributeValue(null, "name"));
					book.setDate(xmlParser.getAttributeValue(null, "publishdate"));
				} else if (book != null) {
					// 如果遇到introduction标签，则读取它内容
					if (xmlParser.getName().equals("introduction")) {
						book.setInstr(xmlParser.nextText());	
					}
				}
				break;
			case XmlPullParser.END_TAG:
				// 如果遇到BookInfo标签结束，则把BookInfo对象添加进集合中
				if (xmlParser.getName().equals("book") && book != null) {
					books.add(book);
					book = null;
				}
				break;
			default:
				break;
			}
			// 如果xml没有结束，则导航到下一个BookInfo节点
			evtType = xmlParser.next();
		}

		return books;
	}
}
