package com.runcross.servicetest;

import com.runcross.servcetest.R;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ProgressBar;

public class BoradServices extends Activity {

	ProgressBar pb;
	
	
	@SuppressWarnings("deprecation")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.broad);
		Button btnsend = (Button) findViewById(R.id.broad);
		pb = (ProgressBar) findViewById(R.id.progress);
		Intent service = new Intent(BoradServices.this, MyBroadCastService.class);
		startService(service);
//		bindService(service, myConn, Service.BIND_AUTO_CREATE);
		
		ProReceiver rec = new ProReceiver();
		
		IntentFilter filter = new IntentFilter();
		filter.addAction("com.runcross.go");
		
		registerReceiver(rec, filter);
		
		btnsend.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Intent intent = new Intent("Com.runcross.Broad.Music");
//				intent.setAction("Com.runcross.Broad.Music");
				sendBroadcast(intent);
			}
		});
		
		
		//����һ��NotificationManager������
		String ns = Context.NOTIFICATION_SERVICE;
		NotificationManager mNotificationManager = (NotificationManager)getSystemService(ns);
		// ����Notification�ĸ�������
		int icon = R.drawable.ic_launcher; //֪ͨͼ��
		CharSequence tickerText = "Hello"; //״̬����ʾ��֪ͨ�ı���ʾ
		long when = System.currentTimeMillis(); //֪ͨ������ʱ�䣬����֪ͨ��Ϣ����ʾ
		//����������Գ�ʼ�� Nofification
		Notification notification = new Notification(icon,tickerText,when);
		notification.defaults |= Notification.DEFAULT_LIGHTS;
		notification.flags |= Notification.FLAG_ONGOING_EVENT;
		notification.flags |= Notification.FLAG_NO_CLEAR;
		Context context = getApplicationContext(); //������
		CharSequence contentTitle = "My Notification"; //֪ͨ������
		CharSequence contentText = "Hello World!"; //֪ͨ������
		Intent notificationIntent = new Intent(this,BoradServices.class); //�����֪ͨ��Ҫ��ת��Activity
//		notificationIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK|Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
		PendingIntent contentIntent = PendingIntent.getActivity(this,0,notificationIntent,0);
		notification.setLatestEventInfo(context, contentTitle, contentText, contentIntent);
		//��Notification���ݸ� NotificationManager
		mNotificationManager.notify(0,notification);
		
	}
	
	public class ProReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			int i =intent.getIntExtra("i", 0);
			pb.setProgress(i);
		}
		
	}
	
}
