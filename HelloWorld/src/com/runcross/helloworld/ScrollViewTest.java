package com.runcross.helloworld;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.HorizontalScrollView;
import android.widget.ScrollView;
import android.widget.TextView;

public class ScrollViewTest extends Activity {

	private HorizontalScrollView scroll ;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.test);
		scroll = (HorizontalScrollView) findViewById(R.id.scrolld);
		TextView tt = (TextView) findViewById(R.id.abc);
		
//		scroll.scrollTo(900, 0);
//		scroll.setPivotX(800);
		scroll.scrollBy(-900, 0);
	}

	public void onScroll(View view){
		
		int x = scroll.getScrollX();
		System.out.println(x);
		scroll.scrollTo(900, 0);
		x = scroll.getScrollX();
		System.out.println(x);
	}
	
}
