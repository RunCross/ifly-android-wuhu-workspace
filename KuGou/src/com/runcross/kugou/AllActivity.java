package com.runcross.kugou;

import java.util.ArrayList;
import java.util.List;

import com.runcross.kugou.adapter.ViewPagerAdapter;

import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.view.View;

@SuppressWarnings("deprecation")
public class AllActivity extends Activity {

	private  ViewPager pager ;
	
	private static List<View> list ;
	private static ViewPagerAdapter adapter ;
	
	static LocalActivityManager manager = null;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.all_main);
		
		pager = (ViewPager) findViewById(R.id.viewpager);
		
		
		manager = new LocalActivityManager(this, true);
		manager.dispatchCreate(savedInstanceState);
		
		list = new ArrayList<View>();
		
		initViewList();
		
		adapter = new ViewPagerAdapter(list);
		
		pager.setAdapter(adapter);
		
		
	}

	private void initViewList() {
		list.clear();
		
		Intent intent = new Intent(this, MainActivity.class);
		list.add(manager.startActivity("", intent).getDecorView());		
	}
	
	public static void addView(View view){	
		System.out.println(view == null);
		System.out.println("list null "+(list == null));
		list.add(view);
		adapter.notifyDataSetChanged();
//		pager.setCurrentItem(pager.getCurrentItem()-1);
	}
}
