package info;

import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathFactory;

import net.Process;

import org.w3c.dom.Document;

import start.Info.EventType;

public class GetBattleResult {
	
	public static void getBattleResult(Document doc) throws Exception{
		XPathFactory factory = XPathFactory.newInstance();
		XPath xpath = factory.newXPath();
		Process.info.battleResult = xpath.evaluate("/response/body/battle_result/winner", doc).equals("0") ? "lose" : "win";
		int beforeGold = Integer.parseInt(xpath.evaluate("/response/body/battle_result/before_gold", doc));
		int afterGold = Integer.parseInt(xpath.evaluate("/response/body/battle_result/after_gold", doc));
		Process.info.gold = afterGold - beforeGold;
		int before_exp = Integer.parseInt(xpath.evaluate("/response/body/battle_result/before_exp", doc));
		int after_exp = Integer.parseInt(xpath.evaluate("/response/body/battle_result/after_exp", doc));
		Process.info.exp = before_exp - after_exp;
		Process.info.nextExp = after_exp;
		//战斗后经验比战斗前多的话，说明升级了
		if(after_exp > before_exp){
			Process.info.isLvUp = true;
			Process.info.events.push(EventType.levelUp);
		}else{
			Process.info.isLvUp = false;
		}
	}

}
