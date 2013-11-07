package com.runcross.maback;

import java.util.ArrayList;
import java.util.List;

import com.runcross.maback.util.DoneAdapter;

import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.view.PagerTabStrip;
import android.support.v4.view.ViewPager;
import android.view.View;

@SuppressWarnings("deprecation")
public class Done extends Activity {

	private LocalActivityManager manager = null;
	private ViewPager viewpager;
	private PagerTabStrip pagerTabStrip;// 一个viewpager的指示器，效果就是一个横的粗的下划线
	private ArrayList<View> viewList;// 把需要滑动的页卡添加到这个list中
	private List<String> titleList;// viewpager的标题
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.configuration);

		viewpager = (ViewPager) findViewById(R.id.viewpager);
		
		pagerTabStrip = (PagerTabStrip) findViewById(R.id.pagertab);
		pagerTabStrip.setTabIndicatorColor(Color.rgb(246, 153, 136));
		pagerTabStrip.setDrawFullUnderline(false);
		pagerTabStrip.setTextSpacing(50);
		
		//用户信息
		initDate();
		
		//标题
		initPagetitle();
		
		manager = new LocalActivityManager(this, true);
		manager.dispatchCreate(savedInstanceState);

		//初始化要滑动的页面
		initPageView();
		
		viewpager.setAdapter(new DoneAdapter(viewList, titleList));
		viewpager.setCurrentItem(0);
		
	}

	/*
	 * 配置标题
	 */
	private void initPagetitle() {
		titleList = new ArrayList<String>();// 每个页面的Title数据
		titleList.add("用户信息");
		titleList.add("自动跑图");
		titleList.add("妖精配置");
		titleList.add("PVP配置");
		titleList.add("杂项配置");
	}

	/*
	 * 初始化用户信息
	 */
	private void initDate() {
		// TODO Auto-generated method stub
		
	}
	
	/*
	 * 初始化page的view
	 */
	private void initPageView(){
		viewList = new ArrayList<View>();
		Intent intent1 = new Intent(this, UserInfoShow.class);
		viewList.add(manager.startActivity("用户信息", intent1).getDecorView());
//		Intent intent2 = new Intent(this, TypeListActivity.class);
//		viewList.add(manager.startActivity("分区导航", intent2).getDecorView());
	}
	
}
