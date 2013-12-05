package com.runcross.maback.mini;


import com.runcross.maback.mini.action.Login;
import com.runcross.maback.mini.data.DeviecInfo;
import com.runcross.maback.mini.data.HTTPLink;
import com.runcross.maback.mini.start.Info;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Toast;

public class LoginPre extends Activity implements Callback {

	private EditText appVersion;
	private String versionTemp;
	private Handler hand;
	private RadioGroup world;
	private SharedPreferences shared;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.login);

		hand = new Handler(this);

		world = (RadioGroup) findViewById(R.id.world);
		
		world.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(RadioGroup group, int checkedId) {
				switch(checkedId){
				case R.id.world1:
					HTTPLink.world = 1;
					break;
				case R.id.world2:
					HTTPLink.world = 2;
					break;
				case R.id.world3:
					HTTPLink.world = 3;
					break;
				}
			}
		});
		shared = getSharedPreferences("app", MODE_PRIVATE);
		DeviecInfo.app_version = shared.getString("version", "101");
//		ContentResolver cr = getContentResolver();
//		Cursor cursor = cr.query(
//				Uri.parse("content://com.runcross.maback.go/version"), null,
//				null, null, null);
//		System.out.println(cursor.getCount()+"---------");
//		if (cursor.moveToNext()) {
//			DeviecInfo.app_version = cursor.getString(cursor
//					.getColumnIndex("version"));
//		}
		appVersion = (EditText) findViewById(R.id.app_version);
		// boolean flag = false;
		appVersion.setEnabled(false);
		appVersion.setText(DeviecInfo.app_version);
		versionTemp = DeviecInfo.app_version;
		CheckBox versionChioce = (CheckBox) findViewById(R.id.app_version_choice);

		versionChioce.setOnCheckedChangeListener(new OnCheckedChangeListener() {

			@Override
			public void onCheckedChanged(CompoundButton buttonView,
					boolean isChecked) {
				if (isChecked) {
					appVersion.setEnabled(true);
				} else {
					appVersion.setEnabled(false);
					DeviecInfo.app_version = appVersion.getText().toString();
					if (!versionTemp.equals(DeviecInfo.app_version)) {
						// 更新
						Editor editor = shared.edit();
						editor.putString("version", DeviecInfo.app_version);
						editor.commit();
//						ContentValues con = new ContentValues();
//						con.put("version", DeviecInfo.app_version);
//						getContentResolver()
//								.update(Uri
//										.parse("content://com.runcross.maback.go/version"),
//										con, "version = ?",
//										new String[] { versionTemp });
					}// if
				}// else
			}// on
		});

		final EditText name = (EditText) findViewById(R.id.uid);
		final EditText upwd = (EditText) findViewById(R.id.pwd);
		Button btn = (Button) findViewById(R.id.login);
		// ��¼
		btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Info.LoginId = name.getText().toString();
				Info.LoginPw = upwd.getText().toString();
				// if(uid.length()<11 || pwd.length() < 8){
				// Toast.makeText(LoginPre.this,"���벻��ȷ",
				// Toast.LENGTH_SHORT).show();
				// return ;
				// }
//				Info.LoginId = "15552873330";
//				Info.LoginPw = "12345678";
				Info.LoginServer = HTTPLink.getHost();
				
				
				new Thread() {
					@Override
					public void run() {
						try {
							hand.sendEmptyMessage(0);
							if (!Login.run(false)) {
//								Toast.makeText(LoginPre.this, "登录失败",
//										Toast.LENGTH_SHORT).show();
								System.out.println("login failed");
								hand.sendEmptyMessage(-1);
								return;
							} else {

								Intent intent = new Intent(LoginPre.this,
										UserInfoShow.class);
								
//								Info.LoginServer = HTTPLink.getHost();
								
								startActivity(intent);
								finish();
							}
						} catch (Exception e) {
							e.printStackTrace();
						}
					}// run
				}.start();

				// name.setText(DeviecInfo.getUserAgent());
				// name.setSingleLine(true);

			}
		});

	}

	@Override
	public boolean handleMessage(Message msg) {
		switch (msg.what) {
		
		case -1:
			AlertDialog.Builder dialogBulder = new Builder(LoginPre.this);
			AlertDialog dialog = dialogBulder.setTitle("登录失败")
					.setIcon(R.drawable.ic_launcher).setMessage("登录失败")
					.setPositiveButton("确定", null).create();
			dialog.show();
			break;
		case 0:
			Toast.makeText(this, "开始登录,请等待", Toast.LENGTH_LONG).show();
		}
		return false;
	}
}
