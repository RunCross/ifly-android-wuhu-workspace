package com.runcross.maback.mini.run;

import java.io.ByteArrayInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;

import com.runcross.maback.mini.action.Explore;
import com.runcross.maback.mini.action.Login;
import com.runcross.maback.mini.data.Info;
import com.runcross.maback.mini.util.Network;

import android.app.IntentService;
import android.content.Intent;

public class Go extends IntentService {

	public static final int ADD_AREA = 0;
	public static final int BATTLE = 1;
	public static final int GET_FLOOR_INFO = 2;
	public static final int EXPLORER = 3;
	public static final int LOGIN = 4;
	public static final int RELOGIN = 5;
	public static final int BATTLESELF = 6;
	public static final int GET_FAIRY_LIST = 7;
	public static final int PRIVATE_FAIRY_BATTLE = 8;
	public static final int EXPLORE = 9;

	public static Info info;
	public static Network network = new Network();
	public static Stack<Integer> policy;
	public static Map<String,String> fairyList;

	private boolean isSelf;
	private int reconTime;

	static {
		info = new Info();
		network = new Network();
		policy.push(BATTLE);
		fairyList = new HashMap<String,String>();
	}

	public Go() {
		super("autoMa");
	}

	public Go(String name) {
		super(name);
	}

	@Override
	protected void onHandleIntent(Intent intent) {
		isSelf = intent.getBooleanExtra("self", false);
		reconTime = intent.getIntExtra("recon", 60);
		while (true) {
			if (policy.empty()) {
				policy.push(BATTLE);
			}

			// еп╤о
			switch (policy.pop()) {
			case LOGIN:
				try {
					Login.run(false);
				} catch (Exception e) {
					e.printStackTrace();
				}
				break;
			case RELOGIN:
				try {
					Login.run();
				} catch (Exception e) {
					e.printStackTrace();
				}
				break;
			case BATTLE:
				break;
			case BATTLESELF:
				break;
			case EXPLORER:
				break;
			case GET_FLOOR_INFO:
				// if (GetFloorInfo.run()) {
				// if (Process.info.AllClear)
				// if (Process.info.floor.contains(1))
				// Process.info.front = Process.info.floor.get(1);
				// else {
				// Process.info.front = Process.info.floor.get(2);
				// }
				// }
				break;
			case ADD_AREA:
				// if (AddArea.run()) {
				// MainActivity
				// .log(String.format(
				// "Area(%d) Front: %s>%s@c=%d",
				// info.area.size(),
				// info.area.get(Integer
				// .parseInt(info.front.areaId)).areaName,
				// info.front.floorId, info.front.cost));
				// }

				break;
			case GET_FAIRY_LIST:
				// if (GetFairyList.run()) {
				// if (!info.events.empty()
				// && info.events.peek() == Info.EventType.fairyCanBattle) {
				// MainActivity.log("Other's fairy found!");
				// } else {
				// MainActivity.log("No fairy found.");
				// }
				// } else {
				// if (MainActivity.config.getBoolean("fairy_battle_first",
				// false))
				// info.events.push(Info.EventType.fairyAppear);
				// }
				break;
			case PRIVATE_FAIRY_BATTLE:
					/*if (PrivateFairyBattle.run()) {
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
						String str = String
								.format("PFB name=%s(%s), Lv: %s, bc: %d/%d, ap: %d/%d, ticket: %d, %s",
										info.fairy.FairyName,
										info.FairySelectUserList
												.get(info.fairy.UserId).userName,
										info.fairy.FairyLevel, info.bc, info.bcMax,
										info.ap, info.apMax, info.ticket, result);
						if (info.gather != -1)
							str += String.format(", gather=%d", info.gather);

						MainActivity.log(str);
					} else {

					}*/
				break;
			case EXPLORE:
				try {
					if (Explore.run()) {
//						MainActivity
//								.log(String
//										.format("Explore[%s>%s]: AP: %d, Gold+%s, Exp+%s, Progress:%s, Result: %s.",
//												info.area.get(Integer
//														.parseInt(info.front.areaId)).areaName,
//												info.front.floorId, info.ap,
//												info.ExploreGold, info.ExploreExp,
//												info.ExploreProgress,
//												info.ExploreResult));
					} else {

					}
				} catch (Exception e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}

				try {
					Thread.sleep(5000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				break;
			}

		}// while
	}
	public static Document ParseXMLBytes(byte[] in) throws Exception {
		ByteArrayInputStream bais = null;
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			bais = new ByteArrayInputStream(in);
			Document document = builder.parse(bais);
			return document;
		} catch (Exception e) {
			throw e;
		}
	}
}
