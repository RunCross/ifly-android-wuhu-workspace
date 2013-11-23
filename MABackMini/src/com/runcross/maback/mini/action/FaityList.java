package com.runcross.maback.mini.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import org.xmlpull.v1.XmlPullParser;

import android.util.Xml;

import com.runcross.maback.mini.UserInfoShow;
import com.runcross.maback.mini.data.Fairy;
import com.runcross.maback.mini.data.HTTPLink;

public class FaityList {

	public static final String fairyselect = HTTPLink.host
			+ "connect/app/menu/fairyselect?cyt=1";
	private static byte[] response;

	public static boolean run() throws Throwable {
		response = UserInfoShow.network.ConnectToServer(fairyselect, null,
				false);

		return parse(response);
	}

	public static boolean parse(byte[] result) throws Throwable {

		InputStream inStream = new ByteArrayInputStream(result);

		XmlPullParser parser = Xml.newPullParser();
		parser.setInput(inStream, "UTF-8");
		int eventType = parser.getEventType();

		int i = 0;
		Fairy fairy = new Fairy();
		while (eventType != XmlPullParser.END_DOCUMENT) {// 判断文件是否是文件的结尾，END_DOCUMENT文件结尾常量
			switch (eventType) {
			case XmlPullParser.START_TAG:
				if("fairy_event".equals(parser.getName())){
					
					
				}
				break;
			case XmlPullParser.END_TAG:
				break;

			}// switch
				// 获取下一元素标签的类型
			eventType = parser.next();
		}// while
		return true;
	}

}
