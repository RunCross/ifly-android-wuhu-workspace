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
			// �ҵ�xml���������ĵ�
			builder = factory.newDocumentBuilder();
			document = builder.parse(in);
			// �ҵ���Element
			Element root = document.getDocumentElement();
			NodeList rivernodes = root.getElementsByTagName("river"); // �������ڵ������ӽڵ�
			River river = null;
			for (int i = 0; i < rivernodes.getLength(); i++) {
				river = new River(); // ��ȡriverԪ�ؽڵ�
				Element riverElement = (Element) rivernodes.item(i);
				// ��ȡriver��name����ֵ
				river.setName(riverElement.getAttribute("name"));
				river.setLength(Integer.parseInt(riverElement
						.getAttribute("length")));
				// ��ȡriver��introduction��ǩ
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
			// ��ȡ�¼�Դ
			XMLReader xmlReader = parser.getXMLReader();
			// ���ô�����
			RiverHandler handler = new RiverHandler();
			xmlReader.setContentHandler(handler);
			// ����xml�ĵ�
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
		// ���XmlPullParser������
		XmlPullParser xmlParser = Xml.newPullParser();
		River river = null;
		xmlParser.setInput(in, "utf-8");
		// ��ý��������¼���������п�ʼ�ĵ��������ĵ�����ʼ��ǩ��������ǩ���ı��ȵ��¼���
		int evtType = xmlParser.getEventType();
		// һֱѭ����ֱ���ĵ�����
		while (evtType != XmlPullParser.END_DOCUMENT) {
			switch (evtType) {
			case XmlPullParser.START_TAG:
				String tag = xmlParser.getName();
				// �����river��ǩ��ʼ����˵����Ҫʵ����������
				if (xmlParser.getName().equals("river")) {
					// ȡ��river��ǩ�е�һЩ����ֵ
					river = new River();
					river.setName(xmlParser.getAttributeValue(null, "name"));
					river.setLength(Integer.parseInt(xmlParser
							.getAttributeValue(null, "length")));
				} else if (river != null) {
					// �������introduction��ǩ�����ȡ������
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
				// �������river��ǩ���������river������ӽ�������
				if (xmlParser.getName().equals("river") && river != null) {
					rivers.add(river);
					Log.v("river", river.toString());
					river = null;
				}
				break;
			default:
				break;
			}
			// ���xmlû�н������򵼺�����һ��river�ڵ�
			evtType = xmlParser.next();
		}

		return rivers;
	}
}
