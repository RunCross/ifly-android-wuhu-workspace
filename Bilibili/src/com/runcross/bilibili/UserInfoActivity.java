package com.runcross.bilibili;

import com.runcross.bilibili.data.SESSION;
import com.runcross.bilibili.po.UserInfo;
import com.runcross.bilibili.usinfo.UserCollection;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;

public class UserInfoActivity extends Activity {

	private UserInfo user;
	private Button login;
	private TextView userName;
	private TextView userCoins;
	private TextView userPoints;
	private TextView useroff;
	
	private TextView myCollect;
	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.userinfo);

		//获取用户数据
		initLoginedData();
		
		//根据登录状态显示不同界面
		initLoginedShow();
		
		initListInfo();
				
		
	}

	private void initListInfo() {
		myCollect = (TextView) findViewById(R.id.myCollect);
		
		initListInfoListener();
	}

	private void initListInfoListener() {
		myCollect.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Intent intent = new Intent(UserInfoActivity.this,UserCollection.class);
				startActivity(intent);
			}
		});
	}

	private void initLoginedData() {
		if (SESSION.get("user") == null) {
			user = null;
		}
		else{
			user = (UserInfo) SESSION.get("user");
		}
		
		user = new UserInfo();
		user.setName("g");
		user.setCoins(1);
		user.setPoints(12);
		
	}

	/*
	 * 初始化登陆后的界面
	 */
	private void initLoginedShow() {
		login  = (Button) findViewById(R.id.btnlogin);
		RelativeLayout loginshow = (RelativeLayout) findViewById(R.id.userinfoshow);			
		
		if (user == null){			
			login.setVisibility(View.VISIBLE);
			loginshow.setVisibility(View.GONE);
		}
		else{
			login.setVisibility(View.GONE);
			loginshow.setVisibility(View.VISIBLE);
			initUserInfo();
		}
	}

	private void initUserInfo() {
		userName  = (TextView) findViewById(R.id.userName);
		userCoins  = (TextView) findViewById(R.id.userCoins);
		userPoints  = (TextView) findViewById(R.id.userPoints);
		useroff  = (TextView) findViewById(R.id.loginoff);
		
		userName.setText(user.getName());
		userCoins.setText("硬币："+user.getCoins());
		userPoints.setText("积分："+user.getPoints());
		
		useroff.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				SESSION.remove("user");
//				Toast.makeText(UserInfoActivity.this, "g", Toast.LENGTH_SHORT).show();
				user = null;
				initLoginedShow();
			}
		});
	}
}
