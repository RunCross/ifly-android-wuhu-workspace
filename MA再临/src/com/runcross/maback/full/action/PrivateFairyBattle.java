package com.runcross.maback.full.action;


import java.util.ArrayList;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.w3c.dom.Document;

import com.runcross.maback.full.action.ActionRegistry.Action;
import com.runcross.maback.full.data.ErrorData;
import com.runcross.maback.full.data.FairyBattleInfo;
import com.runcross.maback.full.data.HTTPLink;
import com.runcross.maback.full.data.Info;

public class PrivateFairyBattle {
	public static final Action Name = Action.PRIVATE_FAIRY_BATTLE;
	
	private static final String URL_PRIVATE_BATTLE = HTTPLink.host+"connect/app/private_fairy/private_fairy_battle?cyt=1";
	
	private static byte[] response;
	
	public static boolean run() throws Exception {
		ArrayList<NameValuePair> post = new ArrayList<NameValuePair>();
		post.add(new BasicNameValuePair("no", ActionDone.info.fairy.No));
		post.add(new BasicNameValuePair("serial_id", ActionDone.info.fairy.SerialId));
		post.add(new BasicNameValuePair("user_id", ActionDone.info.fairy.UserId));
		try {
			response = ActionDone.network.ConnectToServer(URL_PRIVATE_BATTLE, post, false);
		} catch (Exception ex) {
			ErrorData.currentDataType = ErrorData.DataType.text;
			ErrorData.currentErrorType = ErrorData.ErrorType.ConnectionError;
			ErrorData.text = ex.getLocalizedMessage();
			throw ex;
		}

		Document doc;
		try {
			doc = ActionDone.ParseXMLBytes(response);
		} catch (Exception ex) {
			ErrorData.currentDataType = ErrorData.DataType.bytes;
			ErrorData.currentErrorType = ErrorData.ErrorType.PrivateFairyBattleDataError;
			ErrorData.bytes = response;
			throw ex;
		}
		
		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();
		
		try {
			if (!xpath.evaluate("/response/header/error/code", doc).equals("0")) {
				ErrorData.currentErrorType = ErrorData.ErrorType.PrivateFairyBattleResponse;
				ErrorData.currentDataType = ErrorData.DataType.text;
				ErrorData.text = xpath.evaluate("/response/header/error/message", doc);
				return false;
			}
			if (ActionDone.info.LatestFairyList.size() > 1000) ActionDone.info.LatestFairyList.poll();
			ActionDone.info.LatestFairyList.offer(ActionDone.info.fairy);
			
			if ((Boolean)xpath.evaluate("count(//private_fairy_top) > 0", doc, XPathConstants.BOOLEAN)) {
				ActionDone.info.events.push(Info.EventType.fairyBattleEnd);
				return true;
			}
			ParseUserDataInfo.parse(doc);
			ParseCardList.parse(doc);
			if (xpath.evaluate("//battle_result/winner", doc).equals("1")) {
				ActionDone.info.events.push(Info.EventType.fairyBattleWin);
			} else {
				ActionDone.info.events.push(Info.EventType.fairyBattleLose);
			}
			
			//ActionDone.info.fairy.FairyName = xpath.evaluate("//battle_vs_info/player[last()]/name", doc);
			ActionDone.info.SetTimeoutByAction(Name);
			
			String spec = xpath.evaluate("//private_fairy_reward_list/special_item/after_count", doc);
			if (spec.length() != 0) {
				ActionDone.info.gather = Integer.parseInt(spec);
			} else {
				ActionDone.info.gather = -1;
			}
			
			// æ£?Ÿ¥è§‰é†’
			if ((Boolean)xpath.evaluate("count(//ex_fairy/rare_fairy)>0", doc, XPathConstants.BOOLEAN)) {
				// Yes
				ActionDone.info.fairy.Type = FairyBattleInfo.PRIVATE | FairyBattleInfo.SELF | FairyBattleInfo.RARE;
				ActionDone.info.fairy.FairyLevel = xpath.evaluate("//ex_fairy/rare_fairy/lv", doc);
				ActionDone.info.fairy.SerialId = xpath.evaluate("//ex_fairy/rare_fairy/serial_id", doc);
				ActionDone.info.fairy.UserId = xpath.evaluate("//ex_fairy/rare_fairy/discoverer_id", doc);
				ActionDone.info.fairy.fairyCurrHp = Integer.parseInt(xpath.evaluate("//ex_fairy/rare_fairy/hp", doc));
				ActionDone.info.fairy.fairyMaxHp = Integer.parseInt(xpath.evaluate("//ex_fairy/rare_fairy/hp_max", doc));
				ActionDone.info.events.push(Info.EventType.fairyTransform);
			}
			
			
		} catch (Exception ex) {
			if (ErrorData.currentErrorType != ErrorData.ErrorType.none) throw ex;
			ErrorData.currentDataType = ErrorData.DataType.bytes;
			ErrorData.currentErrorType = ErrorData.ErrorType.PrivateFairyBattleDataParseError;
			ErrorData.bytes = response;
			throw ex;
		}
		
		return true;
		
	}
}
