package com.example.chattest;


import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.Window;

public class Start extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
	    setContentView(R.layout.start);
	    
	    new Handler().postDelayed(new Runnable(){
			@Override
			public void run(){
				Intent intent = new Intent (Start.this,Welcome.class);			
				startActivity(intent);			
				Start.this.finish();
			}
		}, 3000);
	}

}
