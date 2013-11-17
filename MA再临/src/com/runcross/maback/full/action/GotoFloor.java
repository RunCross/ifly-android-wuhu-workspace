package com.runcross.maback.full.action;

import java.util.ArrayList;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.w3c.dom.Document;

import com.runcross.maback.full.action.ActionRegistry.Action;
import com.runcross.maback.full.data.ErrorData;
import com.runcross.maback.full.data.HTTPLink;


public class GotoFloor {
	public static final Action Name = Action.GOTO_FLOOR;
	
	private static final String URL_GET_FLOOR = HTTPLink.host+"connect/app/exploration/get_floor?cyt=1";
	
	private static byte[] response;
	
	public static boolean run() throws Exception {
		ArrayList<NameValuePair> post = new ArrayList<NameValuePair>();
		post.add(new BasicNameValuePair("area_id", ActionDone.info.front.areaId));
		post.add(new BasicNameValuePair("check","1"));
		post.add(new BasicNameValuePair("floor_id",ActionDone.info.front.floorId));
		try {
			response = ActionDone.network.ConnectToServer(URL_GET_FLOOR, post, false);
		} catch (Exception ex) {
			//if (ex.getMessage().equals("302")) 
			// 上面的是为了截获里图跳转
			ErrorData.currentDataType = ErrorData.DataType.text;
			ErrorData.currentErrorType = ErrorData.ErrorType.ConnectionError;
			ErrorData.text = ex.getMessage();
			throw ex;
		}
		
		Document doc;
		try {
			doc = ActionDone.ParseXMLBytes(response);
		} catch (Exception ex) {
			ErrorData.currentDataType = ErrorData.DataType.bytes;
			ErrorData.currentErrorType = ErrorData.ErrorType.GotoFloorDataError;
			ErrorData.bytes = response;
			throw ex;
		}
		
		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();
		
		
		try {
			if (!xpath.evaluate("/response/header/error/code", doc).equals("0")) {
				ErrorData.currentErrorType = ErrorData.ErrorType.GotoFloorResponse;
				ErrorData.currentDataType = ErrorData.DataType.text;
				ErrorData.text = xpath.evaluate("/response/header/error/message", doc);
				return false;
			}
			ActionDone.info.username = xpath.evaluate("//your_data/name", doc);
			ActionDone.info.lv = Integer.parseInt(xpath.evaluate("//town_level", doc));
			ActionDone.info.ap = Integer.parseInt(xpath.evaluate("//ap/current", doc));
			ActionDone.info.apMax = Integer.parseInt(xpath.evaluate("//ap/max", doc));
			ActionDone.info.bc = Integer.parseInt(xpath.evaluate("//bc/current", doc));
			ActionDone.info.bcMax = Integer.parseInt(xpath.evaluate("//bc/max", doc));
			ActionDone.info.guildId = xpath.evaluate("//your_data/party_id", doc);
			
			ActionDone.info.SetTimeoutByAction(Name);
			
			ActionDone.info.exp = Integer.parseInt(xpath.evaluate("//get_floor/next_exp", doc));
			String spec = xpath.evaluate("//get_floor/special_item/before_count", doc);
			if (spec.length() != 0) {
				ActionDone.info.gather = Integer.parseInt(spec);
			} else {
				ActionDone.info.gather = -1;
			}
		} catch (Exception ex) {
			if (ErrorData.currentErrorType != ErrorData.ErrorType.none) throw ex;
			ErrorData.currentDataType = ErrorData.DataType.bytes;
			ErrorData.currentErrorType = ErrorData.ErrorType.GotoFloorDataParseError;
			ErrorData.bytes = response;
			throw ex;
		}
		
		return true;
	}
}
