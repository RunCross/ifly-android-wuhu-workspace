package com.runcross.maback.mini.action;

public class ActionRegistry {
	public static enum Action {
		NOTHING,
		LOGIN,
		GET_FLOOR_INFO, // 将会刷新area和floor
		ADD_AREA,
		GOTO_FLOOR,	// 快速取得AP，BC以及经验值和物品等信息
		GET_FAIRY_LIST,
		PRIVATE_FAIRY_BATTLE,
		EXPLORE,
		GET_FAIRY_REWARD,
		GUILD_TOP,
		GUILD_BATTLE,
		SELL_CARD,
		LV_UP,
		PVP,
		GET_NONAME_LIST,
		FAIRY_HISTORY,
		CHANGE_CARD_ITEMS,
		GET_CARD_ITEM,
		FAIRY_INFO
	}
}