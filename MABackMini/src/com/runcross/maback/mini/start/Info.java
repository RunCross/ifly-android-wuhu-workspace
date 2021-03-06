package com.runcross.maback.mini.start;


import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

import com.runcross.maback.mini.info.CardConfigInfo;
import com.runcross.maback.mini.info.FairyInfo;
import com.runcross.maback.mini.info.FloorInfo;
import com.runcross.maback.mini.info.NoNameInfo;
import com.runcross.maback.mini.info.UserCardsInfo;

public class Info {
	
	// login info
	public static String LoginId = "";
	public static String LoginPw = "";
	public static String LoginServer = "";
	public static int sleepTime = 0;
//	public static String isPVP = "";
	public static String isRun = "";
	public static String dayFirst = "1";
	public static int whatMap = 0;
	public static String isBattlePrivateFariy = "";
	public static int waitTime = 5;
//	public static int stopRunWhenBcMore = 0;
//	public static String autoPoint = "bc";
//	public static String userAgent = "";
	public static String runFactor = "0";
	public static int hasPrivateFairyStopRun = 0;
	//用于标记当前是否可以跑图，默认可以
	public static int canRun = 1;
	
	//卡组资料
//	public static int whenBcMoreThan = 0;
//	public static String pvpCard = "";
//	public static String pvpLr = "";
//	public static int pvpCost = 0;
//	public static String battleCard = "";
//	public static String battleLr = "";
//	public static int battleCost = 0;
	public static String wolf = "";
	public static String wolfLr = "";
	public static int lickCost = 2;
//	public static String battleBoss = "";
//	public static String battleBossLr = "";
	
	//user info 
	public String cookie = "";
	public String userId = "";
	public static String userName = "";
	public static String userLv = "";
	public static int apMax = 0;
	public static int apCurrent = 0;
	public static int bcMax = 0;
	public static int bcCurrent = 0;
	public int freeApBcPoint = 0;  //可分配点数
	
	//floor info
	public String floorId = "";
	public int floorCost = 0;
	public String event_type = "";
	public int progress = 0;
	public int lvup = 0;
	public int getExp = 0;
	public int runGold = 0;
	public String nextFloorId = "";
	public int nextFloorCost = 0;
	public int areaClear = 0;
	public int bossId = 0;
	
	
	//battle result
	public String battleResult = "";
	public int gold = 0;
	//默认10000
	public int nextExp = 600;
	public int exp = 0;
	public boolean isLvUp = false;

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
		pvp,
		getNoNameList,
		fairyHistory,
		changeCardItems,
		getCardItem,
		fairyInfo
	}
	
	public Stack<EventType> events;
	
	//无名集合
	public List<NoNameInfo> noNameList;
	
	//妖精集合
	public List<FairyInfo> fairyInfos;
	
	//未攻击过的妖精集合
	public List<FairyInfo> canBattleFairyInfos;
	
	public List<FloorInfo> floorInfos;
	
	//用户的所有卡片
	public List<UserCardsInfo> userCardsInfos;
	
	//卡组信息
	public static List<CardConfigInfo> cardConfigInfos = new ArrayList<CardConfigInfo>();
	
	public Info() {
		noNameList = new ArrayList<NoNameInfo>();
		fairyInfos = new ArrayList<FairyInfo>();
		userCardsInfos = new ArrayList<UserCardsInfo>();
		canBattleFairyInfos = new ArrayList<FairyInfo>();
		floorInfos = new ArrayList<FloorInfo>();
		events = new Stack<EventType>();
		events.push(EventType.notLoggedIn);
	}
	
}
