package walker;

import java.util.ArrayList;

import info.Deck;

public class Config {

	// login info
	public String LoginId = "";
	public String LoginPw = "";
	public int Profile = 1;

	/**
	 * 优先进行妖精战
	 */
	public boolean FairyBattleFirst = true;
	/**
	 * 不使用狼舔觉醒
	 */
	public boolean RareFairyUseNormalDeck = false;
	/**
	 * 允许deck不满足的情况下依旧走图和攻击
	 */
	public boolean AllowBCInsuffient = false;
	/**
	 * 只走cost1的图
	 */
	public boolean OneAPOnly = false;
	/**
	 * 自动加点
	 */
	public boolean AutoAddp = true;
	/**
	 * 允许舔同一个怪
	 */
	public boolean AllowAttackSameFairy = true;
	/**
	 * debug输出xml
	 */
	public boolean debug = false;
	/**
	 * night mode 开关
	 */
	public boolean nightModeSwitch = true;
	/**
	 * 保存log
	 */
	public boolean saveLog = false;

	/**
	 * 自动收集妖精战礼物
	 */
	public boolean receiveBattlePresent = true;

	/**
	 * 判断外敌战胜利HP的比例(默认0.51)
	 */
	public double GuildBattlePercent = 0.51;

	/**
	 * 出击书保留数量(默认8张)
	 */
	public int keepGuildBattleTicksts = 8;

	/**
	 * cookie登陆的sessionId
	 */
	public String sessionId = "";

	// 吃药相关的开关
	public boolean autoUseAp = false;
	public boolean autoUseBc = false;

	public enum autoUseType {
		HALF_ONLY, FULL_ONLY, ALL
	}

	public autoUseType autoApType = autoUseType.HALF_ONLY;
	public autoUseType autoBcType = autoUseType.HALF_ONLY;
	public int autoApLow = 1;
	public int autoBcLow = 50;
	public int autoApFullLow = 10;
	public int autoBcFullLow = 10;

	// deck
	public Deck FriendFairyBattleRare = new Deck();
	public Deck PublicFairyBattle = new Deck();
	public Deck PrivateFairyBattleNormal = new Deck();
	public Deck PrivateFairyBattleRare = new Deck();
	public Deck FriendFairyBattleNormal = new Deck();
	public Deck LowerBCDeck = new Deck(); // 舔妖卡组

	/**
	 * 能被卖的卡列表
	 */
	public ArrayList<String> CanBeSold = new ArrayList<String>();

	/**
	 * 保留的卡列表
	 */
	public ArrayList<String> KeepCard = new ArrayList<String>();

	/**
	 * UserAgent
	 */
	public String UserAgent = "";

	public static String b2s(boolean b) {
		if (b)
			return "1";
		else
			return "0";
	}

	public static String at2s(autoUseType aut) {
		switch (aut) {
		case FULL_ONLY:
			return "0";
		case ALL:
			return "2";
		case HALF_ONLY:
		default:
			return "1";
		}
	}
}
