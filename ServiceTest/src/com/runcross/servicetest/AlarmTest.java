package com.runcross.servicetest;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Intent;
import android.os.Bundle;

public class AlarmTest extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		AlarmManager manager = (AlarmManager) getSystemService(Service.ALARM_SERVICE);

		long time = System.currentTimeMillis();
		System.out.println(time);
		Intent intent = new Intent(AlarmTest.this, AlartmClockActivity.class);

		intent.putExtra("test", "93");

		PendingIntent pIntent = PendingIntent.getActivity(AlarmTest.this, 0,
				intent, 0);

		manager.set(AlarmManager.RTC_WAKEUP, time + 1000, pIntent);
		
		System.out.println(0);
	}
}
