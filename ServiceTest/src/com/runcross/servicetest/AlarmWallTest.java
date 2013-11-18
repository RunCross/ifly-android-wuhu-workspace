package com.runcross.servicetest;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;

public class AlarmWallTest extends Activity implements Callback{

	Handler hand;
	AlarmManager manager;
	PendingIntent pIntent;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		hand = new Handler(this);
		
		manager = (AlarmManager) getSystemService(Service.ALARM_SERVICE);

		long time = System.currentTimeMillis();
		System.out.println(time);
		Intent intent = new Intent(AlarmWallTest.this, AlarmService.class);

		intent.putExtra("test", "93");

		pIntent = PendingIntent.getService(AlarmWallTest.this, 0, intent, 0);

		manager.setRepeating(AlarmManager.RTC_WAKEUP, time + 1000, 2000,pIntent);
		
		hand.sendEmptyMessageDelayed(0, 10000);
		
	}

	@Override
	public boolean handleMessage(Message msg) {
		manager.cancel(pIntent);
		return false;
	}
	
	
}
