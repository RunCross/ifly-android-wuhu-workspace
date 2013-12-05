package net;

import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;

import com.runcross.maback.mini.action.BattleAreaBoss;
import com.runcross.maback.mini.action.FairyBattle;
import com.runcross.maback.mini.action.FairyHistory;
import com.runcross.maback.mini.action.FloorRun;
import com.runcross.maback.mini.action.GetAreaInfo;
import com.runcross.maback.mini.action.GetFairyList;
import com.runcross.maback.mini.action.GetFloorInfo;
import com.runcross.maback.mini.action.Login;
import com.runcross.maback.mini.action.ReturnMain;
import com.runcross.maback.mini.action.ActionRegistry.Action;
import com.runcross.maback.mini.info.FairyInfo;
import com.runcross.maback.mini.info.FloorInfo;
import com.runcross.maback.mini.start.Go;
import com.runcross.maback.mini.start.Info;
import com.runcross.maback.mini.start.Think;




public class Process {
	
	public static Connect connect;
	public static Info info;
	
	
	static {
		connect = new Connect();
		info = new Info();
	}
	
	//byte转doc
	public static Document ParseXMLBytes(byte[] in) throws Exception {
		ByteArrayInputStream bais = null;
		try {
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			bais = new ByteArrayInputStream(in);
			Document document = builder.parse(bais);
			return document;
		} catch (Exception e) {
			throw e;
		}
	}
	
	public void start(){
		Go.log("begin");		
		try {
			execute(Think.doIt(getPossibleAction()));
		} catch (Exception e) {
			if(e.getMessage() != null){
				Go.log(e.getMessage());
				if(e.getMessage().contains("9000")){
					try {
						Thread.sleep(1000 * Info.sleepTime);
					} catch (InterruptedException e1) {
						Go.log(e1.getMessage());
					}finally{
						info.events.push(Info.EventType.cookieOutOfDate);
					}
				}else{
					info.events.push(Info.EventType.fairyAppear);
				}
			}else{
				Go.log("服务器未响应");
				info.events.push(Info.EventType.fairyAppear);
			}//else
		}//catch		
	}
	
	//获取action方案
	private static List<Action> getPossibleAction() {
		ArrayList<Action> result = new ArrayList<Action>();
		if (info.events.size() != 0) {
			switch(info.events.pop()) {
			case notLoggedIn:
			case cookieOutOfDate:
				result.add(Action.LOGIN);
				break;
			case fairyCanBattle:
				result.add(Action.PRIVATE_FAIRY_BATTLE);
				break;
			case needFloorInfo:	
				result.add(Action.GET_FLOOR_INFO);
				break;
			case fairyAppear:
				result.add(Action.GET_FAIRY_LIST);
				break;
			case needAPBCInfo:
				result.add(Action.GOTO_FLOOR);
				break;
			case levelUp:
				result.add(Action.LV_UP);
			case getNoNameList:
				result.add(Action.GET_NONAME_LIST);
				break;
			case pvp:
				result.add(Action.PVP);
				break;
			case fairyHistory:
				result.add(Action.FAIRY_HISTORY);
				break;
			case areaComplete:
				break;
			case cardFull:
				break;
			case changeCardItems:
				break;
			case fairyBattleEnd:
				break;
			case fairyBattleLose:
				break;
			case fairyBattleWin:
				break;
			case fairyInfo:
				break;
			case fairyReward:
				break;
			case fairyTransform:
				break;
			case getCardItem:
				break;
			case getFairyReward:
				break;
			case guildBattle:
				break;
			case guildTop:
				break;
			case guildTopRetry:
				break;
			case innerMapJump:
				break;
			case privateFairyAppear:
				break;
			case ticketFull:
				break;
			default:
				break;
			}
		}
		return result;
	}
	
	//执行action
	private void execute(Action action) throws Exception {
		switch (action) {
			case LOGIN:
				try {
					if (Login.run()) {
						Go.log("cookie:"+info.cookie);
						Go.log("登陆成功，角色名："+Info.userName+",等级："+Info.userLv+"，最大ap："+Info.apMax+"，当前ap："+Info.apCurrent+"，最大bc："+Info.bcMax+"，当前bc："+Info.bcCurrent+"，剩余属性点："+info.freeApBcPoint);
						info.events.push(Info.EventType.fairyAppear);
					} else {
						info.events.push(Info.EventType.notLoggedIn);
					}
				} catch (Exception ex) {
					info.events.push(Info.EventType.notLoggedIn);
				}
				break;
			case GET_FAIRY_LIST:
//				if(info.freeApBcPoint > 0){
//					info.events.push(Info.EventType.levelUp);
//					break;
//				}
				if(GetFairyList.run()){
					info.events.push(Info.EventType.fairyHistory);
				}else{
					ReturnMain.run();
					//如果ap大于当前地图所需cost则开始跑图
					if(Info.apCurrent >= info.floorCost && Info.isRun.equals("1") && Info.canRun == 1){
						Go.log("当前ap大于跑图所需ap,开始跑图");
						info.events.push(Info.EventType.needFloorInfo);
						break;
					}
					//BC如果大于设定值则开始点名
//					if((info.bcCurrent >=Info.whenBcMoreThan) && Info.isPVP.equals("1")){
//						Go.log("当前BC大于"+Info.whenBcMoreThan+",进行点名操作");
//						info.events.push(Info.EventType.getNoNameList);
//						break;
//					}
					Go.log("暂无妖精，"+Info.waitTime+"秒后重新获取列表");
					Thread.sleep(1000 * Info.waitTime);
					info.events.push(Info.EventType.fairyAppear);
				}
				break;
			case GET_NONAME_LIST:
				if(info.freeApBcPoint > 0){
					info.events.push(Info.EventType.levelUp);
					break;
				}
//				if(GetNoNameList.run()){
//					Go.log("寻找无名亚瑟完毕");
//					info.events.push(Info.EventType.pvp);
//				}
				break;
			case FAIRY_HISTORY:
				for(FairyInfo fairyInfo : info.fairyInfos){
					FairyHistory.run(fairyInfo);
				}
				ReturnMain.run();
				if(info.canBattleFairyInfos.size() > 0){
					info.events.push(Info.EventType.fairyCanBattle);
					break;
				}else{
					//如果ap大于当前地图所需cost则开始跑图
					if(Info.apCurrent >= info.floorCost && Info.isRun.equals("1") &&  Info.canRun == 1){
						Go.log("当前ap大于跑图所需ap,开始跑图");
						info.events.push(Info.EventType.needFloorInfo);
						break;
					}
					//BC如果大于设定值则开始点名
//					if((info.bcCurrent >=Info.whenBcMoreThan) && Info.isPVP.equals("1")){
//						Go.log("当前BC大于"+Info.whenBcMoreThan+",进行点名操作");
//						info.events.push(Info.EventType.getNoNameList);
//						break;
//					}
					Go.log("暂无妖精，"+Info.waitTime+"秒后重新获取列表");
					Thread.sleep(1000 * Info.waitTime);
				}
				info.events.push(Info.EventType.fairyAppear);
				break;
			case PRIVATE_FAIRY_BATTLE:
				Go.log("获取到妖精列表！共计"+info.canBattleFairyInfos.size()+"只");
				for(FairyInfo fairyInfo : info.canBattleFairyInfos){
					Go.log("用户："+ fairyInfo.userName +",妖精："+fairyInfo.name+",等级："+fairyInfo.lv+",总血量："+fairyInfo.maxHp+",剩余血量："+fairyInfo.currentHp);					
					FairyBattle.run(fairyInfo);
					Go.log("战斗结果："+info.battleResult+"，获得经验："+info.exp+"，金币："+info.gold+"，剩余ap："+Info.apCurrent+"，剩余bc："+Info.bcCurrent+"，距离下次升级还需"+info.nextExp+"exp");
					//如果BC不足2，则等待两分钟
					if(Info.bcCurrent < 2){
//						Go.log("当前bc不足"+Info.lickCost+"，等待回复……");
						Thread.sleep(1000*60*2);
					}else{
						Go.log("等待战斗CD……");
						Thread.sleep(1000 * 20);
					}
				}//for
				//重置
				info.canBattleFairyInfos = new ArrayList<FairyInfo>();
				info.events.push(Info.EventType.fairyAppear);
				break;
			case GET_FLOOR_INFO:
				if(GetAreaInfo.run(false)){
					FloorInfo floorInfo = null;
					boolean isClear = false;
					if(info.floorInfos.size() > 0){
//						for(FloorInfo fInfo : info.floorInfos){
//							System.out.println("floor id "+fInfo.id +" name"+fInfo.name);
//						
//						}
						if(Info.dayFirst.equals("1")){
							System.out.println("dayFirst");
							for(FloorInfo fInfo : info.floorInfos){
//								System.out.println("floor id "+fInfo.id);
								if(fInfo.id.contains("5000")){
									floorInfo = fInfo;
//									System.out.println(fInfo.name+"---");
									break;
								}else{
									floorInfo = info.floorInfos.get(0);
								}
//								System.out.println(info.floorInfos.get(0).name);
							}//for
							GetFloorInfo.run(floorInfo,false);
						}else{
							if(Info.whatMap != 0){
								GetAreaInfo.run(true);
								floorInfo = info.floorInfos.get(Info.whatMap - 1);
								GetFloorInfo.run(floorInfo,true);
							}else{
								floorInfo = info.floorInfos.get(Info.whatMap);
								GetFloorInfo.run(floorInfo,false);
							}
						}
					}else{
						GetAreaInfo.run(true);
						if(Info.whatMap != 0){
							floorInfo = info.floorInfos.get(Info.whatMap - 1);
						}else{
							floorInfo = info.floorInfos.get(Info.whatMap);
						}
						GetFloorInfo.run(floorInfo,true);
						isClear = true;
					}
//					Go.log("获取地图完毕");
					if(!info.floorId.equals("") && info.floorCost != 0){
						if(Info.apCurrent < info.floorCost){
							Go.log("ap不足");
							info.events.push(Info.EventType.fairyAppear);
							break;
						}else{
							while(FloorRun.run(floorInfo)){
								Go.log(floorInfo.name+"，第"+info.floorId+"层，消耗ap"+info.floorCost+"，"+"获得经验："+info.getExp+"，获得金币："+info.runGold+"，地图进度："
										+info.progress+"%，事件类型："+info.event_type+"，剩余ap："+Info.apCurrent+"，剩余bc："+Info.bcCurrent);
								//地图踏破则更新楼层
								if(info.progress == 100 && !isClear){
									info.floorId = info.nextFloorId;
									info.floorCost = info.nextFloorCost;
								}
								//每跑一个图就检测一下是否有妖精出现
								GetFairyList.run();
								for(FairyInfo fairyInfo : info.fairyInfos){
									FairyHistory.run(fairyInfo);
								}
								if(info.canBattleFairyInfos.size() > 0){
									info.events.push(Info.EventType.fairyCanBattle);
									break;
								}
								//地图clear则重新获取地图
								if(info.areaClear == 1 && !isClear){
									info.events.push(Info.EventType.needFloorInfo);
									break;
								}
								//ap不足则跳出循环
								if(Info.apCurrent < info.floorCost){
									Go.log("ap不足");
									info.events.push(Info.EventType.fairyAppear);
									break;
								}
								//bc超过设定值则跳出循环
//								if(info.bcCurrent > Info.stopRunWhenBcMore){
//									Go.log("bc超过设定值，停止跑图");
//									info.events.push(Info.EventType.fairyAppear);
//									break;
//								}
							}
						}
					}else{
						if(info.bossId != 0){
							Go.log("秘境守护者出现！");
//							ChangeCardItems.run(Info.battleBoss, Info.battleBossLr);
							if(BattleAreaBoss.run(floorInfo)){
								
							}
							info.events.push(Info.EventType.needFloorInfo);
							break;
						}
					}
				}else{
					info.events.push(Info.EventType.fairyAppear);
				}
				break;
		default:
			break;
		}
	}

}
