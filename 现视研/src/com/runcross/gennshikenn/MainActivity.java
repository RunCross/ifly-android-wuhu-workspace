package com.runcross.gennshikenn;

import java.util.ArrayList;
import java.util.List;

import com.example.gennshikenn.R;
import com.runcross.gennshikenn.adapter.MainPageAdapter;
import com.runcross.gennshikenn.po.UserInfo;

import android.os.Bundle;
import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.graphics.Color;
import android.support.v4.view.PagerTabStrip;
import android.support.v4.view.ViewPager;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.EditText;
import android.widget.ImageView;

/**
 * 主Activity界面
 * @author RunCross
 *
 */
@SuppressWarnings("deprecation")
public class MainActivity extends Activity {

	private ViewPager viewPager;// viewpager
	private PagerTabStrip pagerTabStrip;// 一个viewpager的指示器，效果就是一个横的粗的下划线
	private ArrayList<View> viewList;// 把需要滑动的页卡添加到这个list中
	private List<String> titleList;// viewpager的标题

	private ImageView titleLeft;
	private ImageView titleLeftBack;
	private ImageView titleLeftApp;
	private ImageView titleRightSearchGo;
	private ImageView titleRightSearch;
	private EditText edSearch;
	
	//标记搜索框状态
	private boolean flag;
	
	LocalActivityManager manager = null;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
//		requestWindowFeature(Window.FEATURE_NO_TITLE); // 隐藏标题栏
		// getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
		// WindowManager.LayoutParams.FLAG_FULLSCREEN); // 隐藏状态栏
		setContentView(R.layout.activity_main);
		//初始化全局变量
		initDate();

		initPagetitle();
		
		
		viewPager = (ViewPager) findViewById(R.id.viewpager);
		pagerTabStrip = (PagerTabStrip) findViewById(R.id.pagertab);
		pagerTabStrip.setTabIndicatorColor(Color.rgb(246, 153, 136));
		pagerTabStrip.setDrawFullUnderline(false);
		pagerTabStrip.setTextSpacing(50);

		manager = new LocalActivityManager(this, true);
		manager.dispatchCreate(savedInstanceState);

		//初始化要滑动的页面
		initPageView();
		
		//初始化滑动的标题
		initPageTitle();		

		viewPager.setAdapter(new MainPageAdapter(viewList, titleList));
		viewPager.setCurrentItem(0);

	}

	//初始化全局数据，包括用户，配置等等
	private void initDate() {
		UserInfo user = new UserInfo();				
	}

	/*
	 * 配置title监听
	 * 
	 */
	private void initPagetitleListener() {
		//显示搜索框
		titleRightSearch.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				titleLeft.setVisibility(View.GONE);
				titleLeftApp.setVisibility(View.VISIBLE);
				titleLeftBack.setVisibility(View.VISIBLE);
				edSearch.setVisibility(View.VISIBLE);
				titleRightSearch.setVisibility(View.GONE);
				titleRightSearchGo.setVisibility(View.VISIBLE);
				flag = true;
			}
		});
		
		//隐藏搜索框
		titleLeftBack.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				titleLeftBack.setVisibility(View.GONE);
				titleLeft.setVisibility(View.VISIBLE);
				titleLeftApp.setVisibility(View.GONE);
				edSearch.setVisibility(View.INVISIBLE);
				titleRightSearchGo.setVisibility(View.GONE);
				titleRightSearch.setVisibility(View.VISIBLE);
				
				flag = false;
			}
		});
	}

	/*
	 * 初始化title显示
	 */
	private void initPagetitle() {
		titleLeft = (ImageView)  findViewById(R.id.title_left);
		titleLeftApp = (ImageView) findViewById(R.id.title_left_app);
		titleLeftBack = (ImageView) findViewById(R.id.title_left_back);
		titleRightSearchGo = (ImageView) findViewById(R.id.title_right_search_go);
		titleRightSearch = (ImageView) findViewById(R.id.title_right_search);
		edSearch = (EditText) findViewById(R.id.edSearch);
		flag = false;
		initPagetitleListener();
	}

	/*
	 * 初始化page里的title
	 */
	private void initPageTitle() {
		titleList = new ArrayList<String>();// 每个页面的Title数据
		titleList.add("个人中心");
		titleList.add("分区导航");
		titleList.add("新番专题");
	}

	/*
	 * 初始化page的view
	 */
	private void initPageView(){
		viewList = new ArrayList<View>();
		Intent intent1 = new Intent(this, UserInfoActivity.class);
		viewList.add(manager.startActivity("个人中心", intent1).getDecorView());
		Intent intent2 = new Intent(this, TypeListActivity.class);
		viewList.add(manager.startActivity("分区导航", intent2).getDecorView());
	}
	
	
	/*
	 * 重写返回键，实现点击一次标题搜索框消失 
	 */
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if(keyCode == KeyEvent.KEYCODE_BACK && flag){
			
			titleLeftBack.setVisibility(View.GONE);
			titleLeft.setVisibility(View.VISIBLE);
			titleLeftApp.setVisibility(View.GONE);
			edSearch.setVisibility(View.INVISIBLE);
			titleRightSearchGo.setVisibility(View.GONE);
			titleRightSearch.setVisibility(View.VISIBLE);
			
			flag  = false;
			return true;
		}
		return super.onKeyDown(keyCode, event);
	}
	
}
