package db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class DBHelper extends SQLiteOpenHelper {

	private static final String DATABASE_NAME = "mawconfig.db";
	private static final int DATABASE_VERSION = 1;

	public DBHelper(Context context) {
		// CursorFactory设置为null,使用默认值
		super(context, DATABASE_NAME, null, DATABASE_VERSION);
	}

	// 数据库第一次被创建时onCreate会被调用
	@Override
	public void onCreate(SQLiteDatabase db) {
		db.execSQL("CREATE TABLE IF NOT EXISTS config"
				+ "'(id'  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,"
				+ "'username'  TEXT NOT NULL,"
				+ "'password'  TEXT NOT NULL,"
				+ "'sessionId'  TEXT,"
				+ "'user_agent'  TEXT NOT NULL DEFAULT 'Million/236 (t03gchn; t03gzc; 4.1.2) samsung/t03gzc/t03gchn:4.1.2/JZO54K/N7100ZCDMD3:user/release-keys GooglePlay',"
				+ "'fairy_battle_first'  BOOL NOT NULL DEFAULT false,"
				+ "'rare_fairy_use_normal_deck'  BOOL NOT NULL DEFAULT false,"
				+ "'allow_bc_insuffient'  BOOL NOT NULL DEFAULT false,"
				+ "'one_ap_only'  BOOL NOT NULL DEFAULT true,"
				+ "'auto_add_point'  BOOL NOT NULL DEFAULT false,"
				+ "'allow_attack_same_fairy'  BOOL NOT NULL DEFAULT false,"
				+ "'night_mode'  BOOL NOT NULL DEFAULT true,"
				+ "'receive_battle_present'  BOOL NOT NULL DEFAULT true,"
				+ "'guild_battle_percent'  DOUBLE NOT NULL DEFAULT 0.51,"
				+ "'keep_guild_battle_tickets'  INTEGER NOT NULL DEFAULT 8,"
				+ "'debug'  BOOL NOT NULL DEFAULT false,"
				+ "'savelog'  BOOL NOT NULL DEFAULT true,"
				+ "'auto_use_ap'  BOOL NOT NULL DEFAULT false,"
				+ "'aplow'  INTEGER NOT NULL DEFAULT 1,"
				+ "'ap_full_low'  INTEGER NOT NULL DEFAULT 10,"
				+ "'autoApType'  INTEGER NOT NULL DEFAULT 1,"
				+ "'auto_use_bc'  BOOL NOT NULL DEFAULT false,"
				+ "'bclow'  INTEGER NOT NULL DEFAULT 50,"
				+ "'bc_full_low'  INTEGER NOT NULL DEFAULT 10,"
				+ "'autoBcType'  INTEGER NOT NULL DEFAULT 1,"
				+ "'FairyDeckNo'  INTEGER NOT NULL DEFAULT 0,"
				+ "'FairyDeckBc'  INTEGER NOT NULL DEFAULT 0,"
				+ "'RareFairyDeckNo'  INTEGER NOT NULL DEFAULT 0,"
				+ "'RareFairyDeckBc'  INTEGER NOT NULL DEFAULT 0,"
				+ "'GuildFairyDeckNo'  INTEGER NOT NULL DEFAULT 0,"
				+ "'GuildFairyDeckBc'  INTEGER NOT NULL DEFAULT 0,"
				+ "'FriendFairyBattleRareNo'  INTEGER NOT NULL DEFAULT 0,"
				+ "'FriendFairyBattleRareBc'  INTEGER NOT NULL DEFAULT 0,"
				+ "'FriendFairyBattleNormalNo'  INTEGER NOT NULL DEFAULT 0,"
				+ "'FriendFairyBattleNormalBc'  INTEGER NOT NULL DEFAULT 0,"
				+ "'LowerBCDeckNo'  INTEGER NOT NULL DEFAULT 0,"
				+ "'LowerBCDeckBc'  INTEGER NOT NULL DEFAULT 0,"
				+ "CONSTRAINT 'uni' UNIQUE ('username' ASC)" + ");");
		db.execSQL("CREATE TABLE IF NOT EXISTS 'last' ('id'  INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,'last'  TEXT);");
	}

	// 如果DATABASE_VERSION值被改为2,系统发现现有数据库版本不同,即会调用onUpgrade
	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// db.execSQL("ALTER TABLE person ADD COLUMN other STRING");
	}
}