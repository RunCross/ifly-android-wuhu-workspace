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

import android.util.Xml;

import com.runcross.xmlreader.bean.BookInfo;

public class MainParase {
	public void Dom(InputStream in) {
		DocumentBuilderFactory factory = null;
		DocumentBuilder builder = null;
		Document document = null;
		factory = DocumentBuilderFactory.newInstance();
		factory.setNamespaceAware(true);// ���ƿռ�֧��

		try {
			// �ҵ�xml���������ĵ�
			builder = factory.newDocumentBuilder();
			document = builder.parse(in);
			// �ҵ���Element
			Element root = document.getDocumentElement();
			System.out.println(root.getAttribute("xmlns:android"));
			NodeList buttonNodes = root.getElementsByTagName("Button"); // �������ڵ������ӽڵ�			
			System.out.println(buttonNodes.getLength());
			for (int i = 0; i < buttonNodes.getLength(); i++) {
				Element buttonElement = (Element) buttonNodes.item(i);
				System.out.println(buttonElement.getAttributeNS("http://schemas.android.com/apk/res/android", "id"));
				System.out.println(buttonElement.getAttribute("id"));

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
		// return bookInfos;
	}

	// public List<BookInfo> Sax(InputSource insource) {
	// List<BookInfo> bookInfos = null;
	// SAXParserFactory factory = SAXParserFactory.newInstance();
	// try {
	// SAXParser parser = factory.newSAXParser();
	// // ��ȡ�¼�Դ
	// XMLReader xmlReader = parser.getXMLReader();
	// // ���ô�����
	// BookInfoHandler handler = new BookInfoHandler();
	// xmlReader.setContentHandler(handler);
	// // ����xml�ĵ�
	// // xmlReader.parse(new InputSource(new URL(xmlPath).openStream()));
	// xmlReader.parse(insource);
	// bookInfos = handler.getBookInfos();
	// } catch (ParserConfigurationException e) {
	// e.printStackTrace();
	// } catch (SAXException e) {
	// e.printStackTrace();
	// } catch (IOException e) {
	// e.printStackTrace();
	// }
	// return bookInfos;
	// }

	public List<BookInfo> Pull(InputStream in) throws XmlPullParserException,
			IOException {
		List<BookInfo> books = new ArrayList<BookInfo>();
		// ���XmlPullParser������
		XmlPullParser xmlParser = Xml.newPullParser();
		xmlParser.setInput(in, "utf-8");
		// ��ý��������¼���������п�ʼ�ĵ��������ĵ�����ʼ��ǩ��������ǩ���ı��ȵ��¼���
		int evtType = xmlParser.getEventType();
		// һֱѭ����ֱ���ĵ�����
		while (evtType != XmlPullParser.END_DOCUMENT) {
			switch (evtType) {
			case XmlPullParser.START_TAG:
				// �����BookInfo��ǩ��ʼ����˵����Ҫʵ����������
				if (xmlParser.getName().equals("Button")) {
					// ȡ��BookInfo��ǩ�е�һЩ����ֵ
					System.out.println(xmlParser
							.getAttributeValue("http://schemas.android.com/apk/res/android", "id"));

				}
				break;
			case XmlPullParser.END_TAG:
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
