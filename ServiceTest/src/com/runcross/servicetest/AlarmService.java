package com.runcross.servicetest;

import java.io.IOException;

import android.app.Service;
import android.app.WallpaperManager;
import android.content.Intent;
import android.os.IBinder;

public class AlarmService extends Service {

	private int[] wall={R.drawable.ic_launcher};
	
	WallpaperManager wallMan;
	
	@Override
	public void onCreate() {
		super.onCreate();
		wallMan = WallpaperManager.getInstance(this);
		
	}
	
	@Override
	public IBinder onBind(Intent intent) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		
		try {
			wallMan.setResource(wall[0]);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return super.onStartCommand(intent, flags, startId);
	}

}
