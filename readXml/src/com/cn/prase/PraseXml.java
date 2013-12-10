package com.cn.prase;

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

import android.util.Log;
import android.util.Xml;

import com.cn.data.River;

public class PraseXml {
	public List<River> Dom(InputStream in) {
		List<River> rivers = new ArrayList<River>();
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
			NodeList rivernodes = root.getElementsByTagName("river"); // 遍历根节点所有子节点
			River river = null;
			for (int i = 0; i < rivernodes.getLength(); i++) {
				river = new River(); // 获取river元素节点
				Element riverElement = (Element) rivernodes.item(i);
				// 获取river中name属性值
				river.setName(riverElement.getAttribute("name"));
				river.setLength(Integer.parseInt(riverElement
						.getAttribute("length")));
				// 获取river下introduction标签
				Element introduction = (Element) riverElement
						.getElementsByTagName("introduction").item(0);
				river.setIntroduction(introduction.getFirstChild()
						.getNodeValue());
				Element imageUrl = (Element) riverElement.getElementsByTagName(
						"imageurl").item(0);
				river.setImageurl(imageUrl.getFirstChild().getNodeValue());
				Log.v("river", river.toString());
				rivers.add(river);
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
		return rivers;
	}

	public List<River> Sax(InputSource insource) {
		List<River> rivers = null;
		SAXParserFactory factory = SAXParserFactory.newInstance();
		try {
			SAXParser parser = factory.newSAXParser();
			// 获取事件源
			XMLReader xmlReader = parser.getXMLReader();
			// 设置处理器
			RiverHandler handler = new RiverHandler();
			xmlReader.setContentHandler(handler);
			// 解析xml文档
			// xmlReader.parse(new InputSource(new URL(xmlPath).openStream()));
			xmlReader.parse(insource);
			rivers = handler.getRivers();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return rivers;
	}

	public List<River> Pull(InputStream in) throws XmlPullParserException,
			IOException {
		List<River> rivers = new ArrayList<River>();
		// 获得XmlPullParser解析器
		XmlPullParser xmlParser = Xml.newPullParser();
		River river = null;
		xmlParser.setInput(in, "utf-8");
		// 获得解析到的事件类别，这里有开始文档，结束文档，开始标签，结束标签，文本等等事件。
		int evtType = xmlParser.getEventType();
		// 一直循环，直到文档结束
		while (evtType != XmlPullParser.END_DOCUMENT) {
			switch (evtType) {
			case XmlPullParser.START_TAG:
				String tag = xmlParser.getName();
				// 如果是river标签开始，则说明需要实例化对象了
				if (xmlParser.getName().equals("river")) {
					// 取出river标签中的一些属性值
					river = new River();
					river.setName(xmlParser.getAttributeValue(null, "name"));
					river.setLength(Integer.parseInt(xmlParser
							.getAttributeValue(null, "length")));
				} else if (river != null) {
					// 如果遇到introduction标签，则读取它内容
					if (xmlParser.getName().equals("introduction")) {
						String a = xmlParser.getName();
						river.setIntroduction(xmlParser.nextText());
					} else if (xmlParser.getName().equals("imageurl")) {
						String a = xmlParser.getName();
						river.setImageurl(xmlParser.nextText());
					}
				}
				break;
			case XmlPullParser.END_TAG:
				// 如果遇到river标签结束，则把river对象添加进集合中
				if (xmlParser.getName().equals("river") && river != null) {
					rivers.add(river);
					Log.v("river", river.toString());
					river = null;
				}
				break;
			default:
				break;
			}
			// 如果xml没有结束，则导航到下一个river节点
			evtType = xmlParser.next();
		}

		return rivers;
	}
}
