package com.runcross.maback.action;

import java.util.ArrayList;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;
import org.apache.http.NameValuePair;
import org.w3c.dom.Document;

import com.runcross.maback.action.ActionRegistry.Action;
import com.runcross.maback.data.ErrorData;
import com.runcross.maback.data.HTTPLink;

public class GetFairyReward {
	public static final Action Name = Action.GET_FAIRY_REWARD;
	
	private static final String URL_GET_FAIRY_REWARD = HTTPLink.host+"connect/app/private_fairy/private_fairy_rewards?cyt=1";
	private static byte[] response;
	
	public static boolean run() throws Exception {
		Document doc;
		try {
			response = ActionDone.network.ConnectToServer(URL_GET_FAIRY_REWARD, new ArrayList<NameValuePair>(), false);
		} catch (Exception ex) {
			ErrorData.currentDataType = ErrorData.DataType.text;
			ErrorData.currentErrorType = ErrorData.ErrorType.ConnectionError;
			ErrorData.text = ex.getMessage();
			throw ex;
		}
		
		try {
			doc = ActionDone.ParseXMLBytes(response);
		} catch (Exception ex) {
			ErrorData.currentDataType = ErrorData.DataType.bytes;
			ErrorData.currentErrorType = ErrorData.ErrorType.GetFairyRewardDataError;
			ErrorData.bytes = response;
			throw ex;
		}
		
		try {
			XPathFactory factory = XPathFactory.newInstance();
			XPath xpath = factory.newXPath();
			if (!xpath.evaluate("/response/header/error/code", doc).equals("1010")) {
				ErrorData.currentErrorType = ErrorData.ErrorType.GetFairyRewardResponse;
				ErrorData.currentDataType = ErrorData.DataType.text;
				ErrorData.text = xpath.evaluate("/response/header/error/message", doc);
				return false;
			} else {
				ErrorData.text = xpath.evaluate("/response/header/error/message", doc);
				return true;
			}
			
		} catch (Exception ex) {
			if (ErrorData.currentErrorType == ErrorData.ErrorType.none) {
				throw ex;
			}
		}
		
		return false;
	}
	
}
