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
import com.runcross.maback.full.data.Floor;
import com.runcross.maback.full.data.HTTPLink;
import com.runcross.maback.full.data.Info;

public class Explore {
	public static final Action Name = Action.EXPLORE;
	
	private static final String URL_EXPLORE = HTTPLink.host+"connect/app/exploration/guild_explore?cyt=1";
	private static byte[] response;
	
	public static boolean run() throws Exception {
		ArrayList<NameValuePair> post = new ArrayList<NameValuePair>();
		post.add(new BasicNameValuePair("area_id", ActionDone.info.front.areaId));
		post.add(new BasicNameValuePair("auto_build", "1"));
		post.add(new BasicNameValuePair("floor_id", ActionDone.info.front.floorId));
		try {
			response = ActionDone.network.ConnectToServer(URL_EXPLORE, post, false);
		} catch (Exception ex) {
			if (ex.getMessage().startsWith("302")) {
				ActionDone.info.events.push(Info.EventType.innerMapJump);
				return false;
			}
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
			ErrorData.currentErrorType = ErrorData.ErrorType.ExploreDataError;
			ErrorData.bytes = response;
			throw ex;
		}
		
		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();
		
		try {
			String code = xpath.evaluate("/response/header/error/code", doc);
			if (!code.equals("0")) {
				if (code.equals("8000")) {
					ActionDone.info.events.push(Info.EventType.cardFull);
				}
				ErrorData.currentErrorType = ErrorData.ErrorType.ExploreResponse;
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
			ActionDone.info.money = Long.parseLong(xpath.evaluate("//your_data/gold", doc));
			
			ActionDone.info.SetTimeoutByAction(Name);
			
			// TODO: 添加升级事件
			ActionDone.info.exp = Integer.parseInt(xpath.evaluate("//explore/next_exp", doc));
			
			ActionDone.info.ExploreProgress = xpath.evaluate("//explore/progress", doc);
			ActionDone.info.ExploreGold = xpath.evaluate("//explore/gold", doc);
			ActionDone.info.ExploreExp = xpath.evaluate("//explore/get_exp", doc);
			
			int evt = Integer.parseInt(xpath.evaluate("//explore/event_type", doc));
			switch (evt) {
			case 22:
				// fairy battle
				ActionDone.info.fairy = new FairyBattleInfo();
				ActionDone.info.fairy.Type = FairyBattleInfo.PRIVATE | FairyBattleInfo.SELF;
				ActionDone.info.fairy.FairyName = xpath.evaluate("//ex_fairy/fairy/name", doc);
				ActionDone.info.fairy.FairyLevel = xpath.evaluate("//ex_fairy/fairy/lv", doc);
				ActionDone.info.fairy.SerialId = xpath.evaluate("//ex_fairy/fairy/serial_id", doc);
				ActionDone.info.fairy.UserId = xpath.evaluate("//ex_fairy/fairy/discoverer_id", doc);
				ActionDone.info.fairy.fairyCurrHp = Integer.parseInt(xpath.evaluate("//ex_fairy/fairy/hp",doc));
				ActionDone.info.fairy.fairyMaxHp = Integer.parseInt(xpath.evaluate("//ex_fairy/fairy/hp_max",doc));
				
				ActionDone.info.events.push(Info.EventType.privateFairyAppear);
				ActionDone.info.events.push(Info.EventType.recvPFBGood);
				ActionDone.info.ExploreResult = "Fairy Appear";
				break;
			case 5:
				// floor or area clear
				if ((Boolean)xpath.evaluate("count(//next_floor)>0", doc, XPathConstants.BOOLEAN)) {
					// floor clear
					Floor f = new Floor();
					f.areaId = xpath.evaluate("//next_floor/area_id", doc);
					f.floorId = xpath.evaluate("//next_floor/floor_info/id", doc);
					f.cost = Integer.parseInt(xpath.evaluate("//next_floor/floor_info/cost", doc));
					ActionDone.info.front = f;
					ActionDone.info.floor.put(f.cost, f);
					ActionDone.info.ExploreResult = "Floor Clear";
				} else {
					ActionDone.info.events.push(Info.EventType.areaComplete);
					ActionDone.info.ExploreResult = "Area Clear";
				}
				break;
			case 12:
				// AP
				ActionDone.info.ExploreResult = String.format("AP recover(%d)", 
						Integer.parseInt(xpath.evaluate("//explore/recover", doc)));
				break;
			case 13:
				// BC
				ActionDone.info.ExploreResult = String.format("BC recover(%d)", 
						Integer.parseInt(xpath.evaluate("//explore/recover", doc)));
				break;
			case 19:
				int delta = Integer.parseInt(xpath.evaluate("//special_item/after_count", doc)) - 
							Integer.parseInt(xpath.evaluate("//special_item/before_count", doc));
				ActionDone.info.ExploreResult = String.format("Gather(%d)", delta);
				break;
			case 2:
				ActionDone.info.ExploreResult = "Meet People";
				break;
			case 3:
				ActionDone.info.ExploreResult = "Get Card";
				break;
			case 0:
				ActionDone.info.ExploreResult = "Nothing";
				break;
			default:
				ActionDone.info.ExploreResult = String.format("Code: %d", evt);
				break;
			}
			
		} catch (Exception ex) {
			if (ErrorData.currentErrorType != ErrorData.ErrorType.none) throw ex;
			ErrorData.currentDataType = ErrorData.DataType.bytes;
			ErrorData.currentErrorType = ErrorData.ErrorType.ExploreDataParseError;
			ErrorData.bytes = response;
			throw ex;
		}
		return true;
	}
	
}