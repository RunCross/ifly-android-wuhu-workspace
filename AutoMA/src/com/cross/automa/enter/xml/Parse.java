package com.cross.automa.enter.xml;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory; 

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/**
 * 解析xml
 * @author RunCross
 *
 */
public class Parse {

	/**
	 * 根据rule解析xml返回想要值
	 * @param input xml输入流
	 * @param rule xpathguize
	 * @return string集合
	 */
	public static List<String> get(InputStream input,String rule){
		
		//待返回值
		List<String> result = new ArrayList<String>();
		
		//构建doc
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
        DocumentBuilder builder;
		try {
			builder = dbf.newDocumentBuilder();
			Document doc = builder.parse(input);
			//System.out.println(doc.getFirstChild().getNodeName());
			//构建xpath规则
			XPathFactory factory = XPathFactory.newInstance();  
			XPath xpath = factory.newXPath();
			
			// 选取所有class元素的name属性  
			// XPath语法介绍： http://w3school.com.cn/xpath/  
			XPathExpression expr = xpath.compile(rule);  
						
			NodeList nodes = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);
			
			//查找符合规则节点
			for (int i = 0; i < nodes.getLength(); i++) {  
				//System.out.println("name = " + nodes.item(i).getNodeValue());				
//				System.out.println("type "+nodes.item(i).getFirstChild().getNodeType());
//				System.out.println("value "+nodes.item(i).getFirstChild().getNodeValue());
//				System.out.println("name "+nodes.item(i).getNodeName());
				String st = new String(nodes.item(i).getFirstChild().getNodeValue());
				result.add(st);
			}
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (XPathExpressionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
        return result;
	}
	/**
	 * 
	 * @param input
	 * @param rule
	 * @return
	 */
public static List<String> get(String input,String rule){
		
		//待返回值
		List<String> result = new ArrayList<String>();
		
		//构建doc
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();  
        DocumentBuilder builder;
		try {
			builder = dbf.newDocumentBuilder();
			//Document doc = builder.parse(input);
			Document doc = builder.parse(new InputSource(new ByteArrayInputStream(input.getBytes("UTF-8")))); 
//			System.out.println(doc.getFirstChild().getNodeName());
			//构建xpath规则
			XPathFactory factory = XPathFactory.newInstance();  
			XPath xpath = factory.newXPath();
			
			// 选取所有class元素的name属性  
			// XPath语法介绍： http://w3school.com.cn/xpath/  
			XPathExpression expr = xpath.compile(rule);  
						
			NodeList nodes = (NodeList) expr.evaluate(doc, XPathConstants.NODESET);
			
			//查找符合规则节点
			for (int i = 0; i < nodes.getLength(); i++) {  
				//System.out.println("name = " + nodes.item(i).getNodeValue());				
//				System.out.println("type "+nodes.item(i).getFirstChild().getNodeType());
//				System.out.println("value "+nodes.item(i).getFirstChild().getNodeValue());
//				System.out.println("name "+nodes.item(i).getNodeName());
				String st = new String();
				st = nodes.item(i).getFirstChild().getNodeValue();
				result.add(st);
			}
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (XPathExpressionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
        return result;
	}
}
