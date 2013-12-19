package com.runcross.maback.mini;

import com.runcross.maback.mini.services.ActionGo;
import com.runcross.maback.mini.services.ActionGo.ActionThread;
import com.runcross.maback.mini.start.Info;
import android.app.Activity;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class UserInfoShow extends Activity {
	private TextView maxbc;
	private TextView bc;
	private TextView maxap;
	private TextView ap;
	private TextView name;
	private TextView level;
	private CheckBox isSelf;
	private CheckBox isStop;
	private CheckBox isRun;
	private EditText reCon;

	private static int reconTime;

	ActionThread at ;
	// private Process proc;
	
	
	private ServiceConnection myConn = new ServiceConnection() {
		/*
		 * 解除绑定成功 (non-Javadoc)
		 * 
		 * @see
		 * android.content.ServiceConnection#onServiceDisconnected(android.content
		 * .ComponentName)
		 */
		@Override
		public void onServiceDisconnected(ComponentName name) {
			System.out.println("DisConnect");
		}

		/*
		 * 绑定成功 (non-Javadoc)
		 * 
		 * @see
		 * android.content.ServiceConnection#onServiceConnected(android.content
		 * .ComponentName, android.os.IBinder)
		 */
		@Override
		public void onServiceConnected(ComponentName name, IBinder service) {
			System.out.println("Connect");
			at = (ActionThread) service;
			at.go();
//			mySer.download();
			System.out.println("go");
//			System.out.println(mySer.getCount());
		}
	};
	

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.user_info);

		maxbc = (TextView) findViewById(R.id.maxbc);
		bc = (TextView) findViewById(R.id.bc);
		maxap = (TextView) findViewById(R.id.maxap);
		ap = (TextView) findViewById(R.id.ap);
		name = (TextView) findViewById(R.id.playerName);
		level = (TextView) findViewById(R.id.playerLevel);
		isSelf = (CheckBox) findViewById(R.id.self);
		isStop = (CheckBox) findViewById(R.id.stopRun);
		isRun = (CheckBox) findViewById(R.id.isArea);
		reCon = (EditText) findViewById(R.id.recon);

		maxbc.setText(String.valueOf(Info.bcMax));
		maxap.setText(String.valueOf(Info.apMax));
		bc.setText(String.valueOf(Info.bcCurrent));
		ap.setText(String.valueOf(Info.apCurrent));
		name.setText(String.valueOf(Info.userName));
		level.setText(String.valueOf(Info.userLv));

		// proc = new Process();

		// isSelf.setOnCheckedChangeListener(new OnCheckedChangeListener() {
		//
		// @Override
		// public void onCheckedChanged(CompoundButton buttonView,
		// boolean isChecked) {
		// self = isChecked;
		// }
		// });

	}

	public void onClick(View view) {
		switch (view.getId()) {
		case R.id.start:
			findViewById(R.id.start).setEnabled(false);
			isSelf.setEnabled(false);
			isStop.setEnabled(false);
			reCon.setEnabled(false);
			reconTime = Integer.parseInt(reCon.getText().toString());
			Toast.makeText(UserInfoShow.this, "开始运行", Toast.LENGTH_SHORT)
					.show();

			Info.sleepTime = reconTime;			
			Info.hasPrivateFairyStopRun = isStop.isChecked() ? 1 : 0;
			Info.isRun = isRun.isChecked()?"1":"0";
			Info.isBattlePrivateFariy = isSelf.isChecked() ? "1" : "0";
			// System.out.println("run-0");
			//
			// System.out.println(Info.hasPrivateFairyStopRun+"-"+Info.isBattlePrivateFariy);
//			new Thread(new Runnable() {
//
//				@Override
//				public void run() {
//					System.out.println("run");
//					Process proc = new Process();
//					while (true) {
//						proc.start();
//					}
//				}
//			}).start();
			
			Intent intent = new Intent(UserInfoShow.this, ActionGo.class);
			bindService(intent,myConn,Service.BIND_AUTO_CREATE);
			System.out.println("go2");
			break;
		case R.id.end:
			unbindService(myConn);
			System.exit(0);
			break;

		}
	}

	@Override
	public void onBackPressed() {
		moveTaskToBack(false);
	};
}
