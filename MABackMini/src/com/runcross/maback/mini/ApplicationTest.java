package com.runcross.maback.mini;

import android.app.Application;
import android.content.Intent;

public class ApplicationTest extends Application {
	
	@Override
	public void onCreate() {
		// TODO Auto-generated method stub
		super.onCreate();
		
		System.out.println("Create");
		//startActivity(new Intent(this,LoginPre.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK));
	}

	 @Override
	public void onTerminate() {
		super.onTerminate();
		System.out.println("termate");
	}

}
