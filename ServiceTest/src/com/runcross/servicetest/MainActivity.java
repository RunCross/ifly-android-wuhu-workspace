package com.runcross.servicetest;

import com.runcross.servicetest.MyServices.MyBind;

import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.os.Handler.Callback;
import android.os.IBinder;
import android.os.Message;
import android.app.Activity;
import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;

public class MainActivity extends Activity implements Callback {

	Button btnStart;
	Button btnBind;
	Button btnStop;
	Button btnUnBind;
	Button btnIntenetS;
	Handler hand;
	Button downLoad;
	MyBind mySer;
	ProgressBar pb;
	
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
			mySer = (MyBind) service;
//			mySer.download();
			System.out.println(mySer.getCount());
		}
	};

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		hand = new Handler(this);
		btnStart = (Button) findViewById(R.id.button1);
		btnBind = (Button) findViewById(R.id.button2);
		btnStop = (Button) findViewById(R.id.button3);
		btnUnBind = (Button) findViewById(R.id.button4);
		downLoad = (Button) findViewById(R.id.button5);
		btnIntenetS = (Button) findViewById(R.id.button6);
		pb = (ProgressBar) findViewById(R.id.progressBar1);
		
//		Messenger mess = new Messenger(hand);
//		Intent intents = new Intent(MainActivity.this, MainClass.class);
//		intents.putExtra("mess", mess);
//		bindService(intents, myConn, Service.BIND_AUTO_CREATE);
		
		// 启动
		btnStart.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent intents = new Intent(MainActivity.this, MyServices.class);

				startService(intents);

			}

		});

		// 停止
		btnStop.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent intents = new Intent(MainActivity.this, MyServices.class);

				stopService(intents);
			}
		});
		// 绑定
		btnBind.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent intents = new Intent(MainActivity.this, MyServices.class);
				// 信使
				Messenger mess = new Messenger(hand);
				intents.putExtra("mess", mess);
				bindService(intents, myConn, Service.BIND_AUTO_CREATE);

			}
		});

		// 解除绑定
		btnUnBind.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				unbindService(myConn);

			}
		});

		//模拟下载
		downLoad.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (mySer != null) {
					mySer.download();
				}
			}
		});
		
		btnIntenetS.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent intents = new Intent(MainActivity.this, MyIntentService.class);

				startService(intents);
			}
		});
		
		

	}

	

	@Override
	public boolean handleMessage(Message msg) {
//		Toast.makeText(MainActivity.this, String.valueOf(msg.obj),
//				Toast.LENGTH_SHORT).show();
//		pb.setProgress(Integer.valueOf(String.valueOf( msg.obj)));
		pb.setProgress((Integer)msg.obj);
		return false;
	}

}
