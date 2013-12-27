package com.runcross.maback.mini.services;

import net.Process;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;

public class ActionGo extends Service {

	ActionThread at;
	
	@Override
	public void onCreate() {
		at = new ActionThread();
		super.onCreate();
	}
	
	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		// TODO Auto-generated method stub
		return super.onStartCommand(intent, flags, startId);
	}
	
	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return at;
	}

	public class ActionThread extends Binder{
		public void go(){
			new Thread(new Runnable() {
				
				@Override
				public void run() {
					Process proc = new Process();
					while (true) {
						System.out.println("in");
						proc.start();
					}
				}
			}).start();
		}
	}
	@Override
	public void onDestroy() {
		super.onDestroy();
		System.out.println("serviceDestory");
	}
}
