package com.runcross.lanucher;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		System.out.println("create");
	}

	@Override
	protected void onStart() {
		super.onStart();
		System.out.println("start");
	}
	
	@Override
	protected void onRestart() {
		super.onRestart();
		System.out.println("restart");
	}
	
	@Override
	protected void onResume() {
		super.onResume();
		System.out.println("resumee");
	}

	@Override
	protected void onPause() {
		super.onPause();
		System.out.println("pause");
	}
	@Override
	protected void onStop() {
		super.onStop();
		System.out.println("stop");
	}
	
	@Override
	protected void onDestroy() {
		System.out.println("destory");
		super.onDestroy();
//		startActivity(new Intent(MainActivity.this,MainActivity.class));
	}
}
