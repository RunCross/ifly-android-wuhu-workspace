package com.runcross.maback;


import java.util.List;

import com.runcross.maback.action.ActionDone;
import com.runcross.maback.action.ActionRegistry;
import com.runcross.maback.action.ActionRegistry.Action;
import com.runcross.maback.data.Card;
import com.runcross.maback.data.ErrorData;
import com.runcross.maback.data.Info;


public class Think {
	
//	private static final String AP_HALF = "101";
//	private static final String BC_HALF = "111";
	private static final String AP_FULL = "1";
	private static final String BC_FULL = "2";
	
	private static final int EXPLORE_NORMAL = 60;
	private static final int EXPLORE_URGENT = 80;
	private static final int GFL_PRI = 50;
	private static final int GFL_HI_PRI = 70;
	private static final int GF_PRI = 25;
	private static final int USE_PRI = 99;
	public static ActionRegistry.Action doIt (List<ActionRegistry.Action> possible) throws Exception {
		Action best = Action.NOTHING;
		int score = Integer.MIN_VALUE + 20;
		for (int i = 0; i < possible.size(); i++) {
			switch (possible.get(i)) {
			case LOGIN:
				return ActionRegistry.Action.LOGIN;
			case ADD_AREA:
				return Action.ADD_AREA;
			case GET_FLOOR_INFO:
				return Action.GET_FLOOR_INFO;
			case GET_FAIRY_LIST:
				if (Info.FairyBattleFirst) {
					if (score < GFL_HI_PRI) {
						best = Action.GET_FAIRY_LIST;
						score = GFL_HI_PRI;
					}
				} else {
					if (score < GFL_PRI) {
						best = Action.GET_FAIRY_LIST;
						score = GFL_PRI;
					}
				}
				break;
			case GOTO_FLOOR:
				if (score < GF_PRI) {
					best = Action.GOTO_FLOOR;
					score = GF_PRI;
				}
				break;
			case PRIVATE_FAIRY_BATTLE:
				if (Info.Profile == 2) {
					ActionDone.info.fairy.No = "2";
					return Action.PRIVATE_FAIRY_BATTLE;
				}
				if (Think.canBattle()) return Action.PRIVATE_FAIRY_BATTLE;
				break;
			case EXPLORE:
				int p = explorePoint();
				if (p > score) {
					best = Action.EXPLORE;
					score = p;
				}
				break;
			case GUILD_BATTLE:
				ActionDone.info.gfairy.No = Info.PublicFairyBattle.No;
				return Action.GUILD_BATTLE;
			case GUILD_TOP:
				return Action.GUILD_TOP;
			case GET_FAIRY_REWARD:
				return Action.GET_FAIRY_REWARD;
			case PFB_GOOD:
				return Action.PFB_GOOD;
			case RECV_PFB_GOOD:
				return Action.RECV_PFB_GOOD;
			case NOTHING:
				break;
			case SELL_CARD:
				if (cardsToSell()) return Action.SELL_CARD;
				break;
			case LV_UP:
				decideUpPoint();
				return Action.LV_UP;
			case USE:
				int ptr = decideUse();
				if (ptr > score) {
					best = Action.USE;
					score = ptr;
				}
				break;
			default:
				break;
			}
		}
		return best;
	}
	
	private static int decideUse() {
		
		if (Info.autoUseAp) {
			if (ActionDone.info.ap < Info.autoApLow) {
				switch (Info.autoApType) {
				case ALL:
//					if (ActionDone.info.halfApToday > 0 && ActionDone.info.halfAp > 0) {
//						ActionDone.info.toUse = AP_HALF;
//						return USE_PRI;
//					} else {
						if (ActionDone.info.fullAp > Info.autoApFullLow) {
							ActionDone.info.toUse = AP_FULL;
							return USE_PRI;
						}
//					}
					break;
				case FULL_ONLY:
					if (ActionDone.info.fullAp > Info.autoApFullLow) {
						ActionDone.info.toUse = AP_FULL;
						return USE_PRI;
					}
					break;
				case HALF_ONLY:
//					if (ActionDone.info.halfApToday > 0 && ActionDone.info.halfAp > 0) {
//						ActionDone.info.toUse = AP_HALF;
//						return USE_PRI;
//					}
					break;
				default:
					break;
				
				}
			}
		}
		if (Info.autoUseBc) {
			if (ActionDone.info.bc < Info.autoBcLow) {
				switch (Info.autoBcType) {
				case ALL:
//					if (ActionDone.info.halfBcToday > 0 && ActionDone.info.halfBc > 0) {
//						ActionDone.info.toUse = BC_HALF;
//						return USE_PRI;
//					} else {
						if (ActionDone.info.fullBc > Info.autoBcFullLow) {
							ActionDone.info.toUse = BC_FULL;
							return USE_PRI;
						}
//					}
					break;
				case FULL_ONLY:
					if (ActionDone.info.fullBc > Info.autoBcFullLow) {
						ActionDone.info.toUse = BC_FULL;
						return USE_PRI;
					}
					break;
				case HALF_ONLY:
//					if (ActionDone.info.halfBcToday > 0 && ActionDone.info.halfBc > 0) {
//						ActionDone.info.toUse = BC_HALF;
//						return USE_PRI;
//					}
					break;
				default:
					break;
				
				}
			}
		}
		return Integer.MIN_VALUE;
	}

	private static boolean canBattle() {
		switch (ActionDone.info.fairy.Type) {
		case 0:
			ActionDone.info.gfairy.No = Info.PublicFairyBattle.No;
			break;
		case 4:
			if (Info.AllowBCInsuffient == false && ActionDone.info.bc < Info.FriendFairyBattleNormal.BC) return false;
			if (ActionDone.info.bc < 2) return false;
			ActionDone.info.fairy.No = Info.FriendFairyBattleNormal.No;
			break;
		case 5:
			if(Info.AllowBCInsuffient == false) {
				if(ActionDone.info.bc < Info.FriendFairyBattleRare.BC) {
					return false;
				} else {
					ActionDone.info.fairy.No = Info.FriendFairyBattleRare.No;
				}
			} else if(ActionDone.info.bc >= 2) {
				ActionDone.info.fairy.No = Info.FriendFairyBattleRare.No;
			} else {
				return false;
			}
			break;
		case 6:
			if (Info.AllowBCInsuffient == false && ActionDone.info.bc < Info.PrivateFairyBattleNormal.BC) return false;
			if (ActionDone.info.bc < 2) return false;
			ActionDone.info.fairy.No = Info.PrivateFairyBattleNormal.No;
			break;
		case 7:
			if(Info.AllowBCInsuffient == false) {
				if(ActionDone.info.bc < Info.PrivateFairyBattleRare.BC) {
					return false;
				} else {
					ActionDone.info.fairy.No = Info.PrivateFairyBattleRare.No;
				}
			} else if(ActionDone.info.bc >= 2) {
				ActionDone.info.fairy.No = Info.PrivateFairyBattleRare.No;
			} else {
				return false;
			}
			break;
		default:
			return false;
		}
		return true;
	}
	
	private static void decideUpPoint() {
		if (Info.Profile == 1) {
			//主号全加BC
			ActionDone.info.apUp = 0;
			ActionDone.info.bcUp = ActionDone.info.pointToAdd;
		} else if (Info.Profile == 2) {
			//小号全加AP
			ActionDone.info.apUp = ActionDone.info.pointToAdd;
			ActionDone.info.bcUp = 0;
		}
	}
	
	private static int explorePoint() throws Exception {
		try {
			if (ActionDone.info.MinMapAP == Integer.MAX_VALUE) {
				ErrorData.currentDataType = ErrorData.DataType.text;
				ErrorData.currentErrorType = ErrorData.ErrorType.InternalError;
				ErrorData.text = "Internal Error: Invalid MinMapAP";
				throw new Exception();
			}
			if (Info.Profile == 2) {
				if (ActionDone.info.ap < 1) return Integer.MIN_VALUE;
				ActionDone.info.front = ActionDone.info.floor.get(ActionDone.info.MinMapAP);
				return EXPLORE_URGENT;
			}
			if (ActionDone.info.bc == 0) return Integer.MIN_VALUE;
			// 首先确定楼层
			if (ActionDone.info.AllClear) {
				int ap = ActionDone.info.ap / ActionDone.info.bc * Info.PrivateFairyBattleNormal.BC;
				if (ap > ActionDone.info.MinMapAP) {
					ActionDone.info.front = ActionDone.info.floor.get(ap);
				} else {
					ActionDone.info.front = ActionDone.info.floor.get(ActionDone.info.MinMapAP);
				}
			}
			if (Info.ThisAPOnly != -1) {
				if (ActionDone.info.floor.containsKey(Info.ThisAPOnly)) {
					ActionDone.info.front = ActionDone.info.floor.get(Info.ThisAPOnly);
				} else {
					ErrorData.currentErrorType = ErrorData.ErrorType.ConfigureParameterError;
					ErrorData.currentDataType = ErrorData.DataType.text;
					ErrorData.text = "Configure Parameter Error: Value of `this_ap_only` is invalid or not reachable.";
					throw new Exception();
				}
				
			}
			// 判断是否可以行动
			if (ActionDone.info.front == null) ActionDone.info.front = ActionDone.info.floor.get(ActionDone.info.MinMapAP);
			if (!Info.AllowBCInsuffient && ActionDone.info.bc < Info.PrivateFairyBattleNormal.BC) return Integer.MIN_VALUE;
			if (ActionDone.info.ap < ActionDone.info.front.cost) return Integer.MIN_VALUE;
			if (ActionDone.info.ap == ActionDone.info.apMax) return EXPLORE_URGENT;
		} catch (Exception ex) {
			if (ErrorData.currentErrorType == ErrorData.ErrorType.none) {
				ex.printStackTrace();
			} else {
				throw ex;
			}
			return Integer.MIN_VALUE;
		}
		return EXPLORE_NORMAL;
	}
	private static boolean cardsToSell() {
		if (Info.Profile == 2) {
			int count = 0;
			String toSell = "";
			for (Card c : ActionDone.info.cardList) {
				if (!Info.KeepCard.contains(c.serialId)) {
					if (toSell.isEmpty()) {
						toSell = c.serialId;
					} else {
						toSell += "," + c.serialId;
					}
					count++;
				}
				if (count >= 30) break;
			}
			ActionDone.info.toSell = toSell;
			return false; // 测试状�?
			//return !toSell.isEmpty();
		} else if (Info.Profile == 1) {
			int count = 0;
			String toSell = "";
			for (Card c : ActionDone.info.cardList) {
				if (!c.exist) continue;
				if (c.holo && c.hp >= 3500) continue; //闪卡不卖，但是低等级的闪卡照样要�?				if (c.hp > 6000) continue; //防止不小心把贵重卡片卖了 
				if (Info.CanBeSold.contains(c.cardId)) {
					if (toSell.isEmpty()) {
						toSell = c.serialId;
					} else {
						toSell += "," + c.serialId;
					}
					count++;
					c.exist = false;
				}
				if (count >= 30) break;
			}
			
			ActionDone.info.toSell = toSell;
			return !toSell.isEmpty();
		}
		return false;
		
	}
	
}
