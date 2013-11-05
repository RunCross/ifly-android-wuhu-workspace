package com.runcross.helloworld;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ScrollView;
import android.widget.TextView;

public class ScrollViewTest extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.test);
		ScrollView scroll = (ScrollView) findViewById(R.id.scroll);
		TextView tt = (TextView) findViewById(R.id.abc);
		
//		scroll.scrollTo(900, 0);
//		scroll.setPivotX(800);
		scroll.scrollBy(-900, 0);
	}

}
