package com.runcross.servcetest;

import android.app.Activity;
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
		
	}
	
	public class ProReceiver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			int i =intent.getIntExtra("i", 0);
			pb.setProgress(i);
		}
		
	}
	
}
