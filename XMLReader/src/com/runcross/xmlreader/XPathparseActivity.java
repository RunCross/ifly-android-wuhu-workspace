package com.runcross.xmlreader;

import java.io.IOException;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import android.app.Activity;
import android.os.Bundle;

public class XPathparseActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();

		try {
			InputSource input = new InputSource(getAssets().open("books2.xml"));
			// NodeList nodelist = (NodeList)
			// xpath.evaluate("//*[local-name()='name']", input,
			// XPathConstants.NODESET);
			NodeList nodelist = (NodeList) xpath.evaluate(
					"//*[namespace-uri()='http://www.books.org/people' and local-name()='name']",
					input, XPathConstants.NODESET);
			System.out.println(nodelist.getLength());
			for (int i = 0; i < nodelist.getLength(); i++) {
				Element name = (Element) (nodelist.item(i));

				System.out.println(name.getFirstChild().getNodeValue()+"-"+name.getNodeName());
			}

		} catch (IOException e) {
			e.printStackTrace();
		} catch (XPathExpressionException e) {
			e.printStackTrace();
		}

	}
}
