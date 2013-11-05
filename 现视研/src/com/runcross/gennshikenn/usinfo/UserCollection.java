package com.runcross.gennshikenn.usinfo;

import com.runcross.bilibili.R;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

/**
 * 用户收藏页面
 * 
 * @author RunCross
 * 
 */
public class UserCollection extends Activity {

	private ImageView titleLeft;
	private ImageView titleLeftBack;
	private ImageView titleLeftApp;
	private ImageView titleRightSearchGo;
	private ImageView titleRightSearch;
	private TextView collectTitle;
	private EditText edSearch;
	
	//标记搜索框状态
	private boolean flag;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.collect);

		initPagetitle();

	}

	/*
	 * 配置title监听
	 */
	private void initPagetitleListener() {
		// 显示搜索框
		titleRightSearch.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {

				collectTitle.setVisibility(View.GONE);
				edSearch.setVisibility(View.VISIBLE);
				titleRightSearch.setVisibility(View.GONE);
				titleRightSearchGo.setVisibility(View.VISIBLE);
			}
		});

		// 返回上一个Activity
		titleLeftBack.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// 返回上一个Activity
				UserCollection.this.finish();
//				Toast.makeText(UserCollection.this, "back", Toast.LENGTH_SHORT)
//						.show();
			}
		});
	}

	/*
	 * 初始化title显示
	 */
	private void initPagetitle() {
		titleLeft = (ImageView) findViewById(R.id.title_left);
		titleLeftApp = (ImageView) findViewById(R.id.title_left_app);
		titleLeftBack = (ImageView) findViewById(R.id.title_left_back);
		titleRightSearchGo = (ImageView) findViewById(R.id.title_right_search_go);
		titleRightSearch = (ImageView) findViewById(R.id.title_right_search);
		collectTitle = (TextView) findViewById(R.id.barName);
		edSearch = (EditText) findViewById(R.id.edSearch);

		titleLeftApp.setVisibility(View.VISIBLE);
		titleLeftBack.setVisibility(View.VISIBLE);
		titleLeft.setVisibility(View.GONE);
		collectTitle.setText(R.string.MyCollect);
		collectTitle.setVisibility(View.VISIBLE);
		initPagetitleListener();
	}
	
	
	/*
	 * 重写返回键，实现点击一次标题搜索框消失 
	 */
	@Override
	public boolean onKeyDown(int keyCode, KeyEvent event) {
		if(keyCode == KeyEvent.KEYCODE_BACK && flag){
			
			
			edSearch.setVisibility(View.GONE);
			collectTitle.setVisibility(View.VISIBLE);
			
			
			flag  = false;
			return true;
		}
		return super.onKeyDown(keyCode, event);
	}
}
