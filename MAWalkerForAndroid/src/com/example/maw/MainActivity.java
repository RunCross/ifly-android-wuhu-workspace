package com.example.maw;

import java.io.ByteArrayInputStream;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import net.Network;

import org.apache.http.NameValuePair;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.cookie.BasicClientCookie;
import org.apache.http.message.BasicNameValuePair;
import org.w3c.dom.Document;

import walker.Config;
import walker.Info;
import walker.Process;
import walker.Info.EventType;
import android.media.audiofx.BassBoost.Settings;
import android.net.TrafficStats;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.preference.PreferenceManager;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {
	static Handler mHandler;
	TextView Text;
	Button Button1;
	Button Button2;
	MenuItem m;
	ScrollView ScrollView1;
	boolean isStop = true;
	RunThread runthread;
	long firstTime = 0;
	public static SharedPreferences config;

	@SuppressLint("HandlerLeak")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		config = PreferenceManager.getDefaultSharedPreferences(this);
		Text = (TextView) findViewById(R.id.textView1);
		Button1 = (Button) findViewById(R.id.button1);
		Button2 = (Button) findViewById(R.id.button2);
		ScrollView1 = (ScrollView) findViewById(R.id.scrollView1);
		Text.setText("");

		Button2.setEnabled(false);

		mHandler = new Handler() {
			@Override
			public void handleMessage(Message msg) {
				super.handleMessage(msg);
				switch (msg.arg1) {
				case 1:
					Text.append(String.valueOf(msg.obj));
					scrollToBottom(ScrollView1, Text);
					break;
				case 2:
					Button1.setEnabled(true);
					Button2.setEnabled(false);
					m.setEnabled(false);
					log("已停止...");
					break;
				}
			}
		};

		Button1.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				isStop = false;
				runthread = new RunThread();
				runthread.start();
				log("启动...");
				Button1.setEnabled(false);
				Button2.setEnabled(true);
				m.setEnabled(true);
			}
		});
		Button2.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				isStop = true;

			}
		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		m = menu.findItem(R.id.action_partyrank);
		m.setEnabled(false);
		return true;
	}

	@SuppressLint("SimpleDateFormat")
	public static void log(String message) {
		Message message1 = Message.obtain();
		message1.arg1 = 1;
		SimpleDateFormat df = new SimpleDateFormat("HH:mm:ss");// 设置日期格式
		String str = "";
		if (message == null || message.isEmpty())
			return;
		if (!message.contains("\n")) {
			str += String.format("%s> %s\n", df.format(new Date()), message);
			Log.d("INFO", str);
			message1.obj = str;
			mHandler.sendMessage(message1);
			return;
		}
		for (String l : message.split("\n")) {
			str += String.format("%s> %s\n", df.format(new Date()), l);
			Log.d("INFO", str);
		}
		message1.obj = str;
		mHandler.sendMessage(message1);
	}

	public static void scrollToBottom(final View scroll, final View inner) {
		Handler mHandler = new Handler();
		mHandler.post(new Runnable() {
			public void run() {
				if (scroll == null || inner == null) {
					return;
				}

				int offset = inner.getMeasuredHeight() - scroll.getHeight();
				if (offset < 0) {
					offset = 0;
				}
				scroll.scrollTo(0, offset);
			}
		});
	}

	public class RunThread extends Thread {
		@Override
		public void run() {
			Process proc = new Process();
			while (!isStop) {
				try {
					proc.auto();
				} catch (Exception ex) {
					log(ex.toString());
					Process.info.events.add(EventType.cookieLogin);
					log("Restart");
				}
			}
			log("正在停止...");
			Message message1 = Message.obtain();
			message1.arg1 = 2;
			mHandler.sendMessage(message1);
		}
	}

	/* 处理菜单事件 */
	public boolean onOptionsItemSelected(MenuItem item) {
		// 得到当前选中的MenuItem的ID,
		int item_id = item.getItemId();

		switch (item_id) {
		case R.id.action_settings:
			/* 新建一个Intent对象 */
			Intent intent = new Intent();
			intent.setClass(this, ConfigActivity.class);
			startActivity(intent);
			break;
		case R.id.action_exit:
			android.os.Process.killProcess(android.os.Process.myPid());
			// this.finish();
			break;
		case R.id.action_clearlog:
			Text.setText("");
			break;
		case R.id.action_partyrank:
			Process.info.events.add(EventType.partyRank);
			log("读取团贡事件已加入队列..");
			break;
		case R.id.action_flowcount:
			FlowCount();
			break;
		}
		return true;
	}

	// @Override
	// public boolean onKeyUp(int keyCode, KeyEvent event) {
	// if (keyCode == KeyEvent.KEYCODE_BACK) {
	// long secondTime = System.currentTimeMillis();
	// if (secondTime - firstTime > 800) {// 如果两次按键时间间隔大于800毫秒，则不退出
	// Toast.makeText(MainActivity.this, "再按一次退出程序...",
	// Toast.LENGTH_SHORT).show();
	// firstTime = secondTime;// 更新firstTime
	// return true;
	// } else {
	// ActivityManager activityMgr = (ActivityManager) this
	// .getSystemService(ACTIVITY_SERVICE);
	// activityMgr.restartPackage(getPackageName());
	// }
	// }
	// return super.onKeyUp(keyCode, event);
	// }

	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if (keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0) {
			dialog();
			return true;
		}
		return super.onKeyUp(keyCode, event);
	}

	/**
	 * 流量统计
	 */
	private void FlowCount() {
		// TODO Auto-generated method stub
		AlertDialog.Builder builder = new AlertDialog.Builder(MainActivity.this);
		builder.setTitle("本次开机到现在流量使用情况：");

		// PackageManager 包管理类
		PackageManager packageManager = getPackageManager();
		int PackageUid = 0;
		long totalRx = 0;
		long totalTx = 0;
		long totalFlow = 0;

		/**
		 * 循环抓紧所有应用的包名 和当前应用的包名进行匹配操作 把获取到的UID保存到一个临时变量
		 */
		for (ApplicationInfo info : packageManager.getInstalledApplications(0)) {
			int uid = info.uid;
			String packageName = info.packageName;
			if (packageName.equals(this.getPackageName())) {
				PackageUid = uid;
			}
		}

		// TrafficStats类根据应用的UID获取到流量的相关数据
		long recv = TrafficStats.getUidRxBytes(PackageUid);
		long sent = TrafficStats.getUidTxBytes(PackageUid);

		if (sent > 0) {
			totalTx += sent / 1024;
			if (totalTx >= 1024)
				totalTx = totalTx / 1024;
		}

		if (recv > 0) {
			totalRx += recv / 1024;
			if (totalRx >= 1024)
				totalRx = totalRx / 1024;
		}

		totalFlow = totalRx + totalTx;
		if (totalFlow >= 1024) {
			totalFlow = totalFlow / 1024;
			builder.setMessage("总使用流量：" + totalFlow + "M");
		} else {
			builder.setMessage("总使用流量：" + totalFlow + "K");
		}
		builder.create();
		builder.show();
	}

	protected void dialog() {
		AlertDialog.Builder builder = new Builder(MainActivity.this);
		builder.setMessage("确定要退出吗?");
		builder.setTitle("提示");
		builder.setPositiveButton("确认",
				new android.content.DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						dialog.dismiss();
						android.os.Process.killProcess(android.os.Process
								.myPid());
					}
				});
		builder.setNeutralButton("后台",
				new android.content.DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						moveTaskToBack(true);
						dialog.dismiss();
					}
				});
		builder.setNegativeButton("取消",
				new android.content.DialogInterface.OnClickListener() {
					@Override
					public void onClick(DialogInterface dialog, int which) {
						dialog.dismiss();
					}
				});
		builder.create().show();
	}
}