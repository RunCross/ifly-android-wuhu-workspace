package com.runcross.restest;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.Activity;
import android.graphics.drawable.ClipDrawable;
import android.widget.ImageView;

public class MainActivity extends Activity implements Handler.Callback{

	private ClipDrawable drawable ;
	private Handler hand;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.clip);
		
		ImageView img = (ImageView) findViewById(R.id.imgtest);
		drawable = (ClipDrawable) img.getDrawable();
		
//		drawable.setLevel(10000);
		
		hand = new Handler(this);
		
		hand.sendEmptyMessage(1);
		
	}

	@Override
	public boolean handleMessage(Message msg) {
		drawable.setLevel(drawable.getLevel()+200);
		hand.sendEmptyMessageDelayed(1, 1000);
		return false;
	}

	
}
