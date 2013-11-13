package db;

import java.util.ArrayList;
import java.util.List;

import walker.Config;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class DBManager {
	private DBHelper helper;
	private SQLiteDatabase db;

	public DBManager(Context context) {
		helper = new DBHelper(context);
		// 因为getWritableDatabase内部调用了mContext.openOrCreateDatabase(mName, 0,
		// mFactory);
		// 所以要确保context已初始化,我们可以把实例化DBManager的步骤放在Activity的onCreate里
		db = helper.getWritableDatabase();
	}

	/**
	 * add persons
	 * 
	 * @param persons
	 */
	public void add(Config config) {
		db.beginTransaction(); // 开始事务
		try {
			db.execSQL(
					"INSERT INTO config VALUES(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
					new Object[] { config.LoginId, config.LoginPw,
							config.sessionId, config.UserAgent,
							String.valueOf(config.FairyBattleFirst),
							String.valueOf(config.RareFairyUseNormalDeck),
							String.valueOf(config.AllowBCInsuffient),
							String.valueOf(config.OneAPOnly),
							String.valueOf(config.AutoAddp),
							String.valueOf(config.AllowAttackSameFairy),
							String.valueOf(config.debug),
							String.valueOf(config.saveLog),
							String.valueOf(config.nightModeSwitch),
							String.valueOf(config.receiveBattlePresent),
							String.valueOf(config.GuildBattlePercent),
							String.valueOf(config.keepGuildBattleTicksts),
							String.valueOf(config.autoUseAp),
							Config.at2s(config.autoApType),
							String.valueOf(config.autoApLow),
							String.valueOf(config.autoApFullLow),
							String.valueOf(config.autoUseBc),
							Config.at2s(config.autoBcType),
							String.valueOf(config.autoBcLow),
							String.valueOf(config.autoBcFullLow),
							config.FriendFairyBattleRare.No,
							String.valueOf(config.FriendFairyBattleRare.BC),
							config.FriendFairyBattleNormal.No,
							String.valueOf(config.FriendFairyBattleNormal.BC),
							config.PublicFairyBattle.No,
							String.valueOf(config.PublicFairyBattle.BC),
							config.PrivateFairyBattleNormal.No,
							String.valueOf(config.PrivateFairyBattleNormal.BC),
							config.PrivateFairyBattleRare.No,
							String.valueOf(config.PrivateFairyBattleRare.BC),
							config.LowerBCDeck.No,
							String.valueOf(config.LowerBCDeck.BC) });
			db.setTransactionSuccessful(); // 设置事务成功完成
		} finally {
			db.endTransaction(); // 结束事务
		}
	}

	/**
	 * update person's age
	 * 
	 * @param person
	 */
	public void updateConfig(Config config) {
		ContentValues cv = new ContentValues();
		cv.put("password", config.LoginPw);
		cv.put("sessionId", config.sessionId);
		cv.put("user_agent", config.UserAgent);
		cv.put("fairy_battle_first", String.valueOf(config.FairyBattleFirst));
		cv.put("rare_fairy_use_normal_deck",
				String.valueOf(config.RareFairyUseNormalDeck));
		cv.put("allow_bc_insuffient", String.valueOf(config.AllowBCInsuffient));
		cv.put("one_ap_only", String.valueOf(config.OneAPOnly));
		cv.put("auto_add_point", String.valueOf(config.AutoAddp));
		cv.put("allow_attack_same_fairy",
				String.valueOf(config.AllowAttackSameFairy));
		cv.put("debug", String.valueOf(config.debug));
		cv.put("savelog", String.valueOf(config.saveLog));
		cv.put("night_mode", String.valueOf(config.nightModeSwitch));
		cv.put("receive_battle_present",
				String.valueOf(config.receiveBattlePresent));
		cv.put("guild_battle_percent",
				String.valueOf(config.GuildBattlePercent));
		cv.put("keep_guild_battle_tickets",
				String.valueOf(config.keepGuildBattleTicksts));
		cv.put("auto_use_ap", String.valueOf(config.autoUseAp));
		cv.put("autoApType", Config.at2s(config.autoApType));
		cv.put("aplow", String.valueOf(config.autoApLow));
		cv.put("ap_full_low", String.valueOf(config.autoApFullLow));
		cv.put("auto_use_bc", String.valueOf(config.autoUseBc));
		cv.put("autoBcType", Config.at2s(config.autoBcType));
		cv.put("bclow", String.valueOf(config.autoBcLow));
		cv.put("bc_full_low", String.valueOf(config.autoBcFullLow));
		cv.put("FriendFairyBattleRareNo", config.FriendFairyBattleRare.No);
		cv.put("FriendFairyBattleRareBc",
				String.valueOf(config.FriendFairyBattleRare.BC));
		cv.put("FriendFairyBattleNormalNo", config.FriendFairyBattleNormal.No);
		cv.put("FriendFairyBattleNormalBc",
				String.valueOf(config.FriendFairyBattleNormal.BC));
		cv.put("GuildFairyDeckNo", config.PublicFairyBattle.No);
		cv.put("GuildFairyDeckBc", String.valueOf(config.PublicFairyBattle.BC));
		cv.put("FairyDeckNo", config.PrivateFairyBattleNormal.No);
		cv.put("FairyDeckBc",
				String.valueOf(config.PrivateFairyBattleNormal.BC));
		cv.put("RareFairyDeckNo", config.PrivateFairyBattleRare.No);
		cv.put("RareFairyDeckBc",
				String.valueOf(config.PrivateFairyBattleRare.BC));
		cv.put("LowerBCDeckNo", config.LowerBCDeck.No);
		cv.put("LowerBCDeckBc ", String.valueOf(config.LowerBCDeck.BC));

		db.update("config", cv, "username = ?", new String[] { config.LoginId });
	}

	/**
	 * delete old person
	 * 
	 * @param person
	 */
	public void deleteConfig(Config config) {
		db.delete("config", "username = ?",
				new String[] { String.valueOf(config.LoginId) });
	}

	/**
	 * query all persons, return list
	 * 
	 * @return List<Person>
	 */
	public List<Config> query() {
		ArrayList<Config> configs = new ArrayList<Config>();
		Cursor c = queryTheCursor();
		while (c.moveToNext()) {
			Config config = new Config();
			
			configs.add(config);
		}
		c.close();
		return configs;
	}

	/**
	 * query all persons, return cursor
	 * 
	 * @return Cursor
	 */
	public Cursor queryTheCursor() {
		Cursor c = db.rawQuery("SELECT * FROM username", null);
		return c;
	}

	/**
	 * close database
	 */
	public void closeDB() {
		db.close();
	}
}