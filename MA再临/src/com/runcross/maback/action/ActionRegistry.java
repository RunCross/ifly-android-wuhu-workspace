package com.runcross.maback.action;

public class ActionRegistry {
	public static enum Action {
		NOTHING,
		LOGIN,
		GET_FLOOR_INFO, // 将会刷新area和floor
		ADD_AREA,
		GOTO_FLOOR,	// 快�?取得AP，BC以及经验值和物品等信�?		
		GET_FAIRY_LIST,
		PRIVATE_FAIRY_BATTLE,
		EXPLORE,
		GET_FAIRY_REWARD,
		GUILD_TOP,
		GUILD_BATTLE,
		SELL_CARD,
		LV_UP,
		PFB_GOOD,
		RECV_PFB_GOOD,
		USE
	}
}
