
package walker;

import info.Area;
import info.Card;
import info.FairyBattleInfo;
import info.FairySelectUser;
import info.Floor;
import info.PFBGood;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Hashtable;
import java.util.LinkedList;
import java.util.Queue;
import java.util.Stack;

import action.ActionRegistry;

public class Info {
	// INFO: static variants are need to be configured in configure file

	// user info
	public String username = "";
	public int ap = 0;
	public int bc = 0;
	public int apMax = 0;
	public int bcMax = 0;
	public int exp = 0;
	public int gather = 0;
	public int rankPerson = 0;
	public int rankGroup = 0;
	public int rankGather = 0;
	public int lv = 0;
	public int cardMax = 0;
	public int rewardCount = 0;
	public int rewardMax = 0;
	public String guildId = "";
	public String userId = "";
	public int ticket = 0;
	public String week = "";
	public int pointToAdd = 0;
	public int apUp = 0;
	public int bcUp = 0;
	
	/**
	 * 自己放的妖是否被打死
	 */
	public boolean OwnFairyBattleKilled = true;
	
	// card list
	public ArrayList<Card> cardList;
	public String toSell = "";
	
	// area
	public Hashtable<Integer,Area> area;
	public boolean InnerMap = false;
	
	
	// floor
	public Hashtable<Integer,Floor> floor;
	public Floor front;
	public boolean AllClear = false;
	
	// fairy
	public FairyBattleInfo fairy;
	public FairyBattleInfo gfairy;
	public boolean NoFairy = false;
	public Queue<FairyBattleInfo> LatestFairyList = new LinkedList<FairyBattleInfo>();
	public Stack<PFBGood> PFBGoodList;
	public Hashtable<String,FairySelectUser> FairySelectUserList;
	
	// explore
	public String ExploreResult = "";
	public String ExploreProgress = "";
	public String ExploreGold = "";
	public String ExploreExp = "";
	
	
	//吃药相关
	public int fullBc = 0;
	public int fullAp = 0;
	public int halfBc = 0;
	public int halfAp = 0;
	public int halfBcToday = 0;
	public int halfApToday = 0;
	public String toUse = "";
	
	
	// timeout
	public enum TimeoutEntry {
		apbc,
		fairy,
		login,
		reward,
		map,
		ticket,
	}
	private Hashtable<TimeoutEntry,Long> timeout;
	public long GetTimeout(TimeoutEntry te) {
		return System.currentTimeMillis() - timeout.get(te);
	}
	public void SetTimeoutByEntry(TimeoutEntry te) {
		timeout.put(te, System.currentTimeMillis());
	}
	public void SetTimeoutByAction(ActionRegistry.Action act) {
		switch (act) {
		case LOGIN:	
			this.SetTimeoutByEntry(TimeoutEntry.fairy);
			this.SetTimeoutByEntry(TimeoutEntry.login);
		case PRIVATE_FAIRY_BATTLE:
		case GUILD_BATTLE:
			this.SetTimeoutByEntry(TimeoutEntry.ticket);
		case GOTO_FLOOR:
		case EXPLORE:
		case LV_UP:
			this.SetTimeoutByEntry(TimeoutEntry.apbc);
			break;
		case PFB_GOOD:
		case ADD_AREA:
		case GET_FLOOR_INFO:
			this.SetTimeoutByEntry(TimeoutEntry.map);
			break;
		case GET_FAIRY_LIST:
			this.SetTimeoutByEntry(TimeoutEntry.fairy);
			break;
		default:
			break;
		}
	}
	public ArrayList<TimeoutEntry> CheckTimeout() {
		ArrayList<TimeoutEntry> te = new ArrayList<TimeoutEntry>();
		if (GetTimeout(TimeoutEntry.apbc) > 180000) te.add(TimeoutEntry.apbc);
		if (GetTimeout(TimeoutEntry.fairy) > 60000) te.add(TimeoutEntry.fairy);
		if (Calendar.getInstance().get(Calendar.HOUR_OF_DAY) == 0) {
			if (GetTimeout(TimeoutEntry.login) > 3600000) te.add(TimeoutEntry.login);
		}
		if (GetTimeout(TimeoutEntry.reward) > 86400000l) te.add(TimeoutEntry.reward);
		if (GetTimeout(TimeoutEntry.map) > 86400000l) te.add(TimeoutEntry.map);
		if (GetTimeout(TimeoutEntry.ticket) > 600000) te.add(TimeoutEntry.ticket); 
		return te;
	}
	
	// event
	public enum EventType {
		notLoggedIn,
		cookieOutOfDate,
		needFloorInfo,
		innerMapJump,
		areaComplete,
		fairyAppear,
		fairyTransform,
		fairyReward,
		fairyCanBattle,
		fairyBattleWin,
		fairyBattleLose,
		fairyBattleEnd,
		cardFull,
		privateFairyAppear,
		guildTopRetry,
		guildBattle,
		guildTop,
		ticketFull,
		getFairyReward,
		needAPBCInfo,
		levelUp,
		PFBGood,
		recvPFBGood,
		gotoFloor,
		cookieLogin,
		updateInfo,
		partyRank
	}
	public Stack<EventType> events;
	
	
	public Info() {
		cardList = new ArrayList<Card>();
		area = new Hashtable<Integer,Area>();
		floor = new Hashtable<Integer,Floor>();
		front = new Floor();
		PFBGoodList = new Stack<PFBGood>();
		events = new Stack<EventType>();
		events.push(EventType.cookieLogin);
		FairySelectUserList = new Hashtable<String,FairySelectUser>();
		
		timeout = new Hashtable<TimeoutEntry,Long>();
		timeout.put(TimeoutEntry.apbc, (long) 0);
		timeout.put(TimeoutEntry.fairy, (long) 0);
		timeout.put(TimeoutEntry.login, (long) 0);
		timeout.put(TimeoutEntry.reward, (long) 0);
		timeout.put(TimeoutEntry.map, (long) 0);
		
		fairy = new FairyBattleInfo();
		gfairy = new FairyBattleInfo();
	}
	
}
