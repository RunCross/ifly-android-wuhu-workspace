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
		factory.setNamespaceAware(true);// 名称空间支持

		try {
			// 找到xml，并加载文档
			builder = factory.newDocumentBuilder();
			document = builder.parse(in);
			// 找到根Element
			Element root = document.getDocumentElement();
			System.out.println(root.getAttribute("xmlns:android"));
			NodeList buttonNodes = root.getElementsByTagName("Button"); // 遍历根节点所有子节点			
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
	// // 获取事件源
	// XMLReader xmlReader = parser.getXMLReader();
	// // 设置处理器
	// BookInfoHandler handler = new BookInfoHandler();
	// xmlReader.setContentHandler(handler);
	// // 解析xml文档
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
		// 获得XmlPullParser解析器
		XmlPullParser xmlParser = Xml.newPullParser();
		xmlParser.setInput(in, "utf-8");
		// 获得解析到的事件类别，这里有开始文档，结束文档，开始标签，结束标签，文本等等事件。
		int evtType = xmlParser.getEventType();
		// 一直循环，直到文档结束
		while (evtType != XmlPullParser.END_DOCUMENT) {
			switch (evtType) {
			case XmlPullParser.START_TAG:
				// 如果是BookInfo标签开始，则说明需要实例化对象了
				if (xmlParser.getName().equals("Button")) {
					// 取出BookInfo标签中的一些属性值
					System.out.println(xmlParser
							.getAttributeValue("http://schemas.android.com/apk/res/android", "id"));

				}
				break;
			case XmlPullParser.END_TAG:
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
