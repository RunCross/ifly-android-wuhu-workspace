package com.runcross.maback.full.action;


import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;



import com.runcross.maback.full.Think;
import com.runcross.maback.full.action.ActionRegistry.Action;
import com.runcross.maback.full.data.ErrorData;
import com.runcross.maback.full.data.Info;
import com.runcross.maback.full.data.Info.TimeoutEntry;
import com.runcross.maback.full.util.Network;
/**
 * 执行部分
 */
public class ActionDone {
	public static Info info;
	
	public static Network network= new Network();
	static {
		info = new Info();
		network = new Network();
	}
	public void auto() throws Exception {
		try {
			if (ErrorData.currentErrorType != ErrorData.ErrorType.none) {
				rescue();
			} else {
				long start = System.currentTimeMillis();
				execute(Think.doIt(getPossibleAction()));
				long delta = System.currentTimeMillis() - start;
				if (delta < 5000) Thread.sleep(5000 - delta);
				if (Info.nightModeSwitch && info.events.empty() && info.NoFairy) Thread.sleep(600000); // 鍗婂閫熷害鎱㈢�?
			}
		} catch (Exception ex) {
			throw ex;
		}
	}
	
	private void rescue() {
//		Log.log(ErrorData.currentErrorType.toString());
		switch (ErrorData.currentDataType) {
		case bytes:
			if (ErrorData.bytes != null) {
//				Log.log(new String(ErrorData.bytes));	
			} else {
//				Log.log("Set type to byte, but no message");
			}
			break;
		case text:
			Log.log(ErrorData.text);
			break;
		default:
			break;
		}
		ErrorData.clear();
	}
	
	private List<Action> getPossibleAction() {
		ArrayList<Action> result = new ArrayList<Action>();
		if (info.events.size() != 0) {
			switch(info.events.pop()) {
			case notLoggedIn:
			case cookieOutOfDate:
				result.add(Action.LOGIN);
				break;
			case fairyTransform:
				Log.log("Rare Fairy Appear");
			case privateFairyAppear:
			case fairyCanBattle:
				result.add(Action.PRIVATE_FAIRY_BATTLE);
				break;
			case fairyReward:
				if (info.ticket > 0) {
					result.add(Action.GUILD_TOP);
				} else if (info.ticket < 0) {
					Log.log("Keep reward");
				} else {
					result.add(Action.GET_FAIRY_REWARD);
				}
				break;
			case innerMapJump:
				Log.log("Map Status Changed!");
			case needFloorInfo:	
				result.add(Action.GET_FLOOR_INFO);
				break;
			case areaComplete:
				result.add(Action.ADD_AREA);
				break;
			case cardFull:
				result.add(Action.SELL_CARD);
				break;
			case fairyAppear:
				result.add(Action.GET_FAIRY_LIST);
				break;
			case getFairyReward:
				break;
			case guildBattle:
				result.add(Action.GUILD_BATTLE);
				break;
			case guildTopRetry:
			case guildTop:
			case ticketFull:
				result.add(Action.GUILD_TOP);
				break;
			case needAPBCInfo:
				result.add(Action.GOTO_FLOOR);
				break;
			case levelUp:
				if (Info.AutoAddp == false) {
					//Log.log("鑷姩鍔犵偣宸插叧闂�?;
				} else {
					result.add(Action.LV_UP);				
				}
			case fairyBattleEnd:
			case fairyBattleLose:
			case fairyBattleWin:			
				break;
			case PFBGood:
				result.add(Action.PFB_GOOD);
				break;
			case recvPFBGood:
				result.add(Action.RECV_PFB_GOOD);
				break;
			case gotoFloor:
				result.add(Action.GOTO_FLOOR);
				break;
			}
			if (!result.isEmpty())	return result;
		}
		ArrayList<TimeoutEntry> te = info.CheckTimeout();
		for (TimeoutEntry e : te) {
			switch (e) {
			case apbc:
				ActionDone.info.events.push(Info.EventType.needAPBCInfo);
				break;
			case fairy:
				ActionDone.info.events.push(Info.EventType.fairyAppear);
				break;
			case login:
				ActionDone.info.events.push(Info.EventType.cookieOutOfDate);
				break;
			case map:
				ActionDone.info.events.push(Info.EventType.needFloorInfo);
				break;
			case ticket:
				if (info.ticket > 0) ActionDone.info.events.push(Info.EventType.cardFull);
				break;
			case reward:
			default:
				break;
			}				
		}
		result.add(Action.EXPLORE);
		result.add(Action.USE);
		// result.add(Action.GOTO_FLOOR);
		if (Info.FairyBattleFirst) result.add(Action.GET_FAIRY_LIST);
		return result;
	}
	
	private void execute(Action action) throws Exception {
		switch (action) {
		case LOGIN:
			try {
				if (Login.run()) {
					Log.log(String.format("User: %s, AP: %d/%d, BC: %d/%d, Card: %d/%d, ticket: %d, money: %d",
							info.username, info.ap, info.apMax, info.bc, info.bcMax,
							info.cardList.size(), info.cardMax, info.ticket, info.money));	
					info.events.push(Info.EventType.fairyAppear);
					info.events.push(Info.EventType.needFloorInfo);
				} else {
					info.events.push(Info.EventType.notLoggedIn);
				}
			} catch (Exception ex) {
				info.events.push(Info.EventType.notLoggedIn);
				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) {
					throw ex;
				}
			}
			break;
		case GET_FLOOR_INFO:
			try {
				if (GetFloorInfo.run()) {
					if (ActionDone.info.AllClear) {
						if (Info.ThisAPOnly == -1) {
							ActionDone.info.front = ActionDone.info.floor.get(ActionDone.info.MinMapAP);
						} else {
							if (ActionDone.info.floor.containsKey(Info.ThisAPOnly)) {
								ActionDone.info.front = ActionDone.info.floor.get(Info.ThisAPOnly);
							} else {
								ErrorData.currentErrorType = ErrorData.ErrorType.ConfigureParameterError;
								ErrorData.currentDataType = ErrorData.DataType.text;
								ErrorData.text = "Configure Parameter Error: Value of `this_ap_only` is invalid or not reachable.";
								throw new Exception();
							}
						}
					}
					Log.log(String.format("Area(%d) Front: %s>%s@c=%d", 
							info.area.size(), 
							info.area.get(Integer.parseInt(info.front.areaId)).areaName, 
							info.front.floorId, 
							info.front.cost));
				}
				
			} catch (Exception ex) {
				if (ex.getMessage() != null && ex.getMessage().equals("302")) {
					info.events.push(Info.EventType.innerMapJump);
					ErrorData.clear();
				} else {
					if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
				}
			}
			break;
		case ADD_AREA:
			try {
				if (AddArea.run()) {
					Log.log(String.format("Area(%d) Front: %s>%s@c=%d", 
							info.area.size(), 
							info.area.get(Integer.parseInt(info.front.areaId)).areaName, 
							info.front.floorId, 
							info.front.cost));
				}
				
			} catch (Exception ex) {
				if (ex.getMessage().equals("302")) {
					info.events.push(Info.EventType.innerMapJump);
					ErrorData.clear();
				} else {
					if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
				}
			}
			break;
		case GET_FAIRY_LIST:
			try {
				if (GetFairyList.run()) {
					if (!info.events.empty() && info.events.peek() == Info.EventType.fairyCanBattle) {
						Log.log("Other's fairy found!");
					} else {
						Log.log("No fairy found.");
					}
				} else {
					if (Info.FairyBattleFirst) info.events.push(Info.EventType.fairyAppear);
				}
			} catch (Exception ex) {
				if (ErrorData.currentErrorType == ErrorData.ErrorType.ConnectionError) {
					info.events.push(Info.EventType.fairyAppear); // 鍐嶆妫�祴
					Log.log("Retry@GetFairyList");
					ErrorData.clear();
				} else if (ErrorData.currentErrorType == ErrorData.ErrorType.none) {
					throw ex;
				}
			}
			
			break;
		case GOTO_FLOOR:
			try {
				if (GotoFloor.run()) {
					Log.log(String.format("Goto: AP: %d/%d, BC: %d/%d, Front:%s>%s",
							info.ap, info.apMax, info.bc, info.bcMax,
							info.area.get(Integer.parseInt(info.front.areaId)).areaName, 
							info.front.floorId));	
				} else {
					
				}
			} catch (Exception ex) {
				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
				
			}
			
			break;
		case PRIVATE_FAIRY_BATTLE:
			try {
				if (PrivateFairyBattle.run()) {
					String result = "";
					if (!info.events.empty()) {
						switch (info.events.peek()) {
						case fairyBattleEnd:
							result = "Too Late";
							info.events.pop();
							break;
						case fairyBattleLose:
							result = "Lose";
							info.events.pop();
							break;
						case fairyBattleWin:
							result = "Win";
							info.events.pop();
							break;
						default:
							break;
						}
					}
					String str = String.format("Fairy-Battle name=%s(%s), Lv: %s, HP: %d, MaxHP: %d, bc: %d/%d, ap: %d/%d, ticket: %d, %s",
							info.fairy.FairyName,
							info.FairySelectUserList.containsKey(info.fairy.UserId) ? info.FairySelectUserList.get(info.fairy.UserId).userName : "NA", 
							info.fairy.FairyLevel, 
							info.fairy.fairyCurrHp,
							info.fairy.fairyMaxHp,
							info.bc, 
							info.bcMax, 
							info.ap, 
							info.apMax, 
							info.ticket, result);
					if (info.gather != -1) str += String.format(", gather=%d", info.gather);
					Log.log(str);
				} else {
					
				}
			} catch (Exception ex) {
				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
			}
			break;
		case EXPLORE:
			try {
				if (Explore.run()) {
					Log.log(String.format("Explore[%s>%s]: AP: %d, Gold+%s=%d, Exp+%s, Progress:%s, Result: %s.", 
							info.area.get(Integer.parseInt(info.front.areaId)).areaName, info.front.floorId,info.ap,
							info.ExploreGold, info.money, info.ExploreExp, info.ExploreProgress, info.ExploreResult));
				} else {
					
				}
			} catch (Exception ex) {
				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
			}
			break;
//		case GUILD_BATTLE:
//			try {
//				if (GuildBattle.run()) {
//					String result = "";
//					if (!info.events.empty()) {
//						switch (info.events.peek()) {
//						case guildTopRetry:
//							result = "Too Late";
//							break;
//						case fairyBattleLose:
//							result = "Lose";
//							info.events.pop();
//							break;
//						case fairyBattleWin:
//							result = "Win";
//							info.events.pop();
//							break;
//						default:
//							break;
//						}
//					}
//					String str = String.format("Guild-Battle name=%s, Lv: %s, HP: %d, MaxHP: %d, bc: %d/%d, ap: %d/%d, ticket: %d, week:%s, %s",
//							info.gfairy.FairyName, info.gfairy.FairyLevel, info.gfairy.fairyCurrHp, info.gfairy.fairyMaxHp, info.bc, info.bcMax, info.ap, info.apMax, 
//							info.ticket, info.week, result);
//					Thread.sleep(5000);
//					Log.log(str);
//				} else {
//					
//				}
//			} catch (Exception ex) {
//				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
//			}
//			break;
//		case GUILD_TOP:
//			try {
//				if (GuildTop.run()) {
//					// nothing to do
//				} else {
//					if (info.NoFairy && Info.nightModeSwitch) Log.log("Night Mode");
//				}
//			} catch (Exception ex) {
//				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
//			}
//			break;
		case GET_FAIRY_REWARD:
			try {
				if (GetFairyReward.run()) {
					Log.log(ErrorData.text);
					ErrorData.clear();
				}
			} catch (Exception ex) {
				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
			}
			break;
		case LV_UP:
			try {
				if (LvUp.run()) {
					Log.log(String.format("Level UP! AP:%d BC:%d", ActionDone.info.apMax, ActionDone.info.bcMax));
				}
			} catch (Exception ex) {
				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
			}
			break;
		
//		case SELL_CARD:
//			try {
//				if (SellCard.run()) {
//					Log.log(ErrorData.text);
//					ErrorData.clear();
//				} else {
//					Log.log("Something wrong");
//				}
//			} catch (Exception ex) {
//				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
//			}
//			break;
//		case USE:
//			try {
//				if (Use.run()) {
//					Log.log(ErrorData.text);
//					ErrorData.clear();
//					Log.log(String.format("Bottles: FA:%d, HA:%d, HA(T):%d, FB:%d, HB:%d, HB(T):%d",
//							info.fullAp, info.halfAp, info.halfApToday,
//							info.fullBc, info.halfBc, info.halfBcToday));
//				} else {
//					Log.log("Sth Wrong @USE");
//				}
//			} catch (Exception ex) {
//				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
//			}
//			break;
//		case PFB_GOOD:
//			try {
//				if (PFBGood.run()) {
//					Log.log(ErrorData.text);
//					ErrorData.clear();
//				} else {
//					Log.log("Something wrong");
//				}
//			} catch (Exception ex) {
//				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
//				
//			}
//			break;
//		case RECV_PFB_GOOD:
//			try {
//				if (RecvPFBGood.run()) {
//					Log.log(ErrorData.text);
//					ErrorData.clear();
//				} else {
//					Log.log("Something wrong");
//				}
//			} catch (Exception ex) {
//				if (ErrorData.currentErrorType == ErrorData.ErrorType.none) throw ex;
//			}
//			break;
		case NOTHING:
			Thread.sleep(30000); // 鏃犱簨鍙仛浼戞�?0绉�			break;
		default:
			break;
		
		}
	}
		
	public static Document ParseXMLBytes(byte[] in) throws Exception {
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

}
