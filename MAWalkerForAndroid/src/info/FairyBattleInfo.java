package info;

public class FairyBattleInfo {
	public String GuildId = "";
	public String UserId = "";
	public String SerialId = "";
	public String No = "2";
	public final String Spp = "dummy";

	public static final int RARE = 0x1;
	public static final int SELF = 0x2;
	public static final int PRIVATE = 0x4;
	/**
	 * 故： <br />
	 * 妖精（自）：P|S|~R = 6 <br />
	 * 妖精（自，觉醒）：P|S|R = 7 <br />
	 * 妖精（他） P|~S|~R = 4 <br />
	 * 妖精（他，觉醒）：P|~S|R = 5 <br />
	 * 外敌：~P|-|- = 0
	 */
	public int Type = 0;
	public String FairyName = "";
	public String FairyLevel = "";
	public String Finder = "";

	// 外敌相关
	public long GuildTotalHP = 0;
	public long OwnGuildHP = 0;
	public long RivalGuildHP = 0;
	public String ChainCounter = "0"; // 连击数
	public String weak = "";

	public boolean equals(FairyBattleInfo b) {
		return this.UserId.equals(b.UserId) && this.SerialId.equals(b.SerialId);
	}

	public FairyBattleInfo(FairyBattleInfo fbi) {
		this.GuildId = fbi.GuildId;
		this.UserId = fbi.UserId;
		this.SerialId = fbi.SerialId;
		this.No = fbi.No;
		this.Type = fbi.Type;
		this.FairyName = fbi.FairyName;
		this.FairyLevel = fbi.FairyLevel;
		this.Finder = fbi.Finder;
	}

	public FairyBattleInfo() {

	}

	public static String GetWeak(String num2) {
		String str2 = "";
		switch (Integer.valueOf(num2)) {
		case 1:
			str2 = "士兵";
			break;

		case 2:
			str2 = "武斗";
			break;

		case 3:
			str2 = "操纵";
			break;

		case 4:
			str2 = "弓手";
			break;

		case 5:
			str2 = "风水";
			break;

		case 6:
			str2 = "曜魔";
			break;

		case 7:
			str2 = "会长";
			break;

		case 8:
			str2 = "妹";
			break;

		case 9:
			str2 = "武斗";
			break;

		default:
			str2 = "未知";
			break;
		}
		return str2;
	}
}
