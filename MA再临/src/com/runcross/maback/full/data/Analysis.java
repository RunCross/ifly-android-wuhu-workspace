package com.runcross.maback.full.data;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;

//import com.sun.org.apache.xml.internal.serialize.OutputFormat;
//import com.sun.org.apache.xml.internal.serialize.XMLSerializer;

public class Analysis {
	public static Document ParseXMLBytes1(byte[] in) throws Exception {
		ByteArrayInputStream bais = null;
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			bais = new ByteArrayInputStream(in);
			Document document = builder.parse(bais);
			return document;
		} catch (Exception e) {
			throw e;
		}
	}
	
	public static Document ParseXMLBytes(byte[] in) throws Exception {
		ByteArrayInputStream bais = null;
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			bais = new ByteArrayInputStream(in);
			Document document = builder.parse(bais);
//			if(Info.debug) doc2FormatString(document); //杈撳嚭xml
			return document;
		} catch (Exception e) {
			throw e;
		}
	}

//	public static void doc2FormatString(Document doc) {	
//		String docString = "";
//		if(doc != null){
//			StringWriter stringWriter = new StringWriter();
//			try{
//				OutputFormat format = new OutputFormat(doc,"UTF-8",true);
//				//format.setIndenting(true);//璁剧疆鏄惁缂╄繘锛岄粯璁や负true
//				//format.setIndent(4);//璁剧疆缂╄繘瀛楃鏁�?			//format.setPreserveSpace(false);//璁剧疆鏄惁淇濇寔鍘熸潵鐨勬牸寮�榛樿涓�false
//				//format.setLineWidth(500);//璁剧疆琛屽搴�				
//				XMLSerializer serializer = new XMLSerializer(stringWriter,format);
//				serializer.asDOMSerializer();
//				serializer.serialize(doc);
//				docString = stringWriter.toString();
//			}catch(Exception e){
//				e.printStackTrace();
//			}finally{
//				if(stringWriter != null){
//		        	try {
//						stringWriter.close();
//					} catch (IOException e) {
//						e.printStackTrace();
//					}
//	        	}
//			}
//		}
//		File f=new File("xml/");
//		// 鍒涘缓鏂囦欢澶�        if (!f.exists()) 
//		{
//            f.mkdirs();
//        }
//		
//		//System.out.println(docString);
//		 File fp=new File(String.format("xml/%d.xml", System.currentTimeMillis()));
//	     try {
//	    	 PrintWriter pfp ;
//			pfp = new PrintWriter(fp);
////		       pfp.print(docString);
//		       pfp.close();
//		} catch (FileNotFoundException e) {
//			e.printStackTrace();
//		}
//		//return docString;
//	}
}
