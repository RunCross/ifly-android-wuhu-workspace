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
			// �ҵ�xml���������ĵ�
			builder = factory.newDocumentBuilder();
			document = builder.parse(in);
			// �ҵ���Element
			Element root = document.getDocumentElement();
			NodeList bookInfonodes = root.getElementsByTagName("book"); // �������ڵ������ӽڵ�
			BookInfo book = null;
			for (int i = 0; i < bookInfonodes.getLength(); i++) {
				book = new BookInfo(); // ��ȡBookInfoԪ�ؽڵ�
				Element bookInfoElement = (Element) bookInfonodes.item(i);
				// ��ȡBookInfo��name����ֵ
				book.setName(bookInfoElement.getAttribute("name"));
				book.setDate(bookInfoElement.getAttribute("publishdate"));
				// ��ȡBookInfo��introduction��ǩ
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
			// ��ȡ�¼�Դ
			XMLReader xmlReader = parser.getXMLReader();
			// ���ô�����
			BookInfoHandler handler = new BookInfoHandler();
			xmlReader.setContentHandler(handler);
			// ����xml�ĵ�
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
		// ���XmlPullParser������
		XmlPullParser xmlParser = Xml.newPullParser();
		BookInfo book = null;
		xmlParser.setInput(in, "utf-8");
		// ��ý��������¼���������п�ʼ�ĵ��������ĵ�����ʼ��ǩ��������ǩ���ı��ȵ��¼���
		int evtType = xmlParser.getEventType();
		// һֱѭ����ֱ���ĵ�����
		while (evtType != XmlPullParser.END_DOCUMENT) {
			switch (evtType) {
			case XmlPullParser.START_TAG:
				// �����BookInfo��ǩ��ʼ����˵����Ҫʵ����������
				if (xmlParser.getName().equals("book")) {
					// ȡ��BookInfo��ǩ�е�һЩ����ֵ
					book = new BookInfo();
					book.setName(xmlParser.getAttributeValue(null, "name"));
					book.setDate(xmlParser.getAttributeValue(null, "publishdate"));
				} else if (book != null) {
					// �������introduction��ǩ�����ȡ������
					if (xmlParser.getName().equals("introduction")) {
						book.setInstr(xmlParser.nextText());	
					}
				}
				break;
			case XmlPullParser.END_TAG:
				// �������BookInfo��ǩ���������BookInfo������ӽ�������
				if (xmlParser.getName().equals("book") && book != null) {
					books.add(book);
					book = null;
				}
				break;
			default:
				break;
			}
			// ���xmlû�н������򵼺�����һ��BookInfo�ڵ�
			evtType = xmlParser.next();
		}

		return books;
	}
}
