package com.runcross.servicetest;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.IBinder;

public class MyBroadCastService extends Service {

	private MyReceiver receiver;
	
	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void onCreate() {
		super.onCreate();
		receiver = new MyReceiver();
				
		IntentFilter filter = new IntentFilter();
		filter.addAction("Com.runcross.Broad.Music");
//		filter.addAction("com.runcross.BroadCastMovie");
		
		registerReceiver(receiver, filter);
		
		
	}
	@Override
	public void onConfigurationChanged(Configuration newConfig) {
		// TODO Auto-generated method stub
		super.onConfigurationChanged(newConfig);
	}
	
	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		// TODO Auto-generated method stub
		return super.onStartCommand(intent, flags, startId);
	}
	
	@Override
	public void onDestroy() {
		// TODO Auto-generated method stub
		super.onDestroy();
		unregisterReceiver(receiver); 
	}
	
	public class MyReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			System.out.println("¹ã²¥ GET! "+intent.getAction());
			new Thread(new Runnable() {

				@Override
				public void run() {
					
					int i = 1;
					while (i < 11) {
						System.out.println("thread "+i);
						i++;
						
						Intent intent = new Intent();
						intent.setAction("com.runcross.go");
						intent.putExtra("i", i);
						sendBroadcast(intent);
						
						try {
							Thread.sleep(1000);
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}// while
				}// run
			}).start();
		}
		
	}
}
