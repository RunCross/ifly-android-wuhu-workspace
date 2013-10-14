package com.cross.automa.enter;


import com.cross.automa.R;
import com.cross.automa.enter.http.Util;
import com.cross.automa.res.Res;

import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.TextView;
public class MainActivity extends Activity {

	    //用户
		private static String uid;
		//密码
		private static String pwd;
		//游戏区
		private static String world;
		//TextView result;		
		String response;
	
		Handler handler = new Handler()
		{
			@Override
			public void handleMessage(Message msg)
			{
				if(msg.what == 0x123)
				{
					// 设置show组件显示服务器响应
					TextView log = (TextView)findViewById(R.id.result);
					log.setText(response);
				}
			}
		};
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		Button button = (Button)findViewById(R.id.login);
		button.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
			   onClickLogin(v);
			}
		});
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	/**
	 * 按钮监控事件
	 * @param v
	 */
	private void onClickLogin(View v){
		new Thread()
		{
			@Override
			public void run()
			{
			  //获取游戏大区
			  RadioGroup rg = (RadioGroup) findViewById(R.id.game);
			  rg.setOnCheckedChangeListener(new OnCheckedChangeListener() {				
				@Override
				public void onCheckedChanged(RadioGroup group, int checkedId) {
					world = (checkedId == R.id.game1)?"game1":"game2";
					Res.url_head =  "http://"+world+"-cbt.ma.sdo.com:10001";
				}
			});
			  //登录流程
              login();
			}
		}.start();
	}
	
	/**
	 * 登录判断
	 * @return
	 */
	private boolean login(){
		
		EditText name = (EditText) findViewById(R.id.uname);
		EditText pass = (EditText) findViewById(R.id.upass);
		uid = name.getText().toString();
		pwd = pass.getText().toString();
		//String params = "login?cyt=1&login_id="+uid+"&password="+pwd;
		String params = "login?cyt=1&login_id=15220183481&password=12345678";
		String url_login =Res.url_head+Res.url_login;
		//发送请求  得到返回值
		response =Util.getXml(url_login, params,"//error/code").get(0);
		
		//
		//System.out.println(Util.getXml("http://game1-cbt.ma.sdo.com:10001/connect/app/","mainmenu?cyt=1","//code").get(0));
		//

		//System.out.println(Build.MODEL);
		// 发送消息通知UI线程更新UI组件
		handler.sendEmptyMessage(0x123);
		return true;
	}

	public static String getUid() {
		return uid;
	}

	public static String getPwd() {
		return pwd;
	}

	public static String getWorld() {
		return world;
	}
	
	
}
