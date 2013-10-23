package com.runcross.fragment;

import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.widget.FrameLayout;

public class MainActivity extends Activity {

	private FrameLayout flayout;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);
		
		flayout = (FrameLayout) findViewById(R.id.newslist);
		flayout.setVisibility(View.VISIBLE);
		newslistFragment news = new newslistFragment();
		getFragmentManager().beginTransaction().replace(R.id.containor, news).commit();
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	
	
}
