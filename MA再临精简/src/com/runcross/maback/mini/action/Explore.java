package com.runcross.maback.mini.action;


import java.util.ArrayList;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathFactory;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.w3c.dom.Document;

import com.runcross.maback.mini.run.Go;
import com.runcross.maback.mini.data.HTTPLink;
import com.runcross.maback.mini.data.Info;;

public class Explore {
	
	private static final String URL_EXPLORE = HTTPLink.host+"connect/app/exploration/guild_explore?cyt=1";
	private static byte[] response;
	
	public static boolean run() throws Exception {
		ArrayList<NameValuePair> post = new ArrayList<NameValuePair>();
		post.add(new BasicNameValuePair("area_id", Go.info.front.areaId));
		post.add(new BasicNameValuePair("auto_build", "1"));
		post.add(new BasicNameValuePair("floor_id", Go.info.front.floorId));
		try {
			response = Go.network.ConnectToServer(URL_EXPLORE, post, false);
		} catch (Exception ex) {
			if (ex.getMessage().startsWith("302")) {
				Go.info.events.push(Info.EventType.innerMapJump);
				return false;
			}
			throw ex;
		}

		Document doc;
		try {
			doc = Go.ParseXMLBytes(response);
		} catch (Exception ex) {
			throw ex;
		}
		
		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();
		
		try {
			String code = xpath.evaluate("/response/header/error/code", doc);
			if (!code.equals("0")) {
				if (code.equals("8000")) {
					Go.info.events.push(Info.EventType.cardFull);
				}
//				ErrorData.currentErrorType = ErrorData.ErrorType.ExploreResponse;
//				ErrorData.currentDataType = ErrorData.DataType.text;
//				ErrorData.text = xpath.evaluate("/response/header/error/message", doc);
				return false;
			}
			
			Go.info.username = xpath.evaluate("//your_data/name", doc);
			Go.info.lv = Integer.parseInt(xpath.evaluate("//town_level", doc));
			Go.info.ap = Integer.parseInt(xpath.evaluate("//ap/current", doc));
			Go.info.apMax = Integer.parseInt(xpath.evaluate("//ap/max", doc));
			Go.info.bc = Integer.parseInt(xpath.evaluate("//bc/current", doc));
			Go.info.bcMax = Integer.parseInt(xpath.evaluate("//bc/max", doc));
			Go.info.guildId = xpath.evaluate("//your_data/party_id", doc);
			
//			Go.info.SetTimeoutByAction(Name);
			
			// TODO: 添加升级事件
			Go.info.exp = Integer.parseInt(xpath.evaluate("//explore/next_exp", doc));
			
			Go.info.ExploreProgress = xpath.evaluate("//explore/progress", doc);
			Go.info.ExploreGold = xpath.evaluate("//explore/gold", doc);
			Go.info.ExploreExp = xpath.evaluate("//explore/get_exp", doc);
			
			int evt = Integer.parseInt(xpath.evaluate("//explore/event_type", doc));
			switch (evt) {
			case 22:
				// fairy battle
				Go.info.fairy = new FairyBattleInfo();
				Go.info.fairy.Type = FairyBattleInfo.PRIVATE | FairyBattleInfo.SELF;
				Go.info.fairy.FairyName = xpath.evaluate("//ex_fairy/fairy/name", doc);
				Go.info.fairy.FairyLevel = xpath.evaluate("//ex_fairy/fairy/lv", doc);
				Go.info.fairy.SerialId = xpath.evaluate("//ex_fairy/fairy/serial_id", doc);
				Go.info.fairy.UserId = xpath.evaluate("//ex_fairy/fairy/discoverer_id", doc);
				
				Go.info.events.push(Info.EventType.privateFairyAppear);
				Go.info.events.push(Info.EventType.gotoFloor);
				Go.info.events.push(Info.EventType.recvPFBGood);
				Go.info.ExploreResult = "Fairy Appear";
				break;
			case 5:
				// floor or area clear
				if (Boolean.valueOf(xpath.evaluate("count(//next_floor)>0", doc, XPathConstants.BOOLEAN).toString())) {
					// floor clear
					Floor f = new Floor();
					f.areaId = xpath.evaluate("//next_floor/area_id", doc);
					f.floorId = xpath.evaluate("//next_floor/floor_info/id", doc);
					f.cost = Integer.parseInt(xpath.evaluate("//next_floor/floor_info/cost", doc));
					Go.info.front = f;
					Go.info.floor.put(f.cost, f);
					Go.info.ExploreResult = "Floor Clear";
				} else {
					Go.info.events.push(Info.EventType.areaComplete);
					Go.info.ExploreResult = "Area Clear";
				}
				break;
			case 12:
				// AP
				Go.info.ExploreResult = String.format("AP recover(%d)", 
						Integer.parseInt(xpath.evaluate("//explore/recover", doc)));
				break;
			case 13:
				// BC
				Go.info.ExploreResult = String.format("BC recover(%d)", 
						Integer.parseInt(xpath.evaluate("//explore/recover", doc)));
				break;
			case 19:
				int delta = Integer.parseInt(xpath.evaluate("//special_item/after_count", doc)) - 
							Integer.parseInt(xpath.evaluate("//special_item/before_count", doc));
				Go.info.ExploreResult = String.format("Gather(%d)", delta);
				break;
			case 2:
				Go.info.ExploreResult = "Meet People";
				break;
			case 3:
				Go.info.ExploreResult = "Get Card";
				break;
			default:
				Go.info.ExploreResult = String.format("Code: %d", evt);
				break;
			}
			
		} catch (Exception ex) {
			throw ex;
		}
		return true;
	}
	
}
