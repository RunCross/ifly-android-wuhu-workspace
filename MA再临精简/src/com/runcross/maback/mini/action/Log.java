package com.runcross.maback.mini.action;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Log {
	public static void log(String message) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		if (message == null || message.isEmpty()) return;
		if (message.length() > 147) message = message.substring(0, 147) + "...";
		if (!message.contains("\n")) {
			System.out.print(df.format(new Date()));// new Date()为获取当前系统时间
			System.out.println("> "+ message);
			return;
		}
		for (String l : message.split("\n")) {
			System.out.print(df.format(new Date()));
			System.out.println("> "+ l);
		}
	}
}
