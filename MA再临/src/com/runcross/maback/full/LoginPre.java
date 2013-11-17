package com.runcross.maback.full;

import com.runcross.maback.full.action.Login;
import com.runcross.maback.full.data.DeviecInfo;
import com.runcross.maback.full.data.Info;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.Toast;

public class LoginPre extends Activity {

	private EditText appVersion;
	private String versionTemp;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.login);

		// 获取版本号
		ContentResolver cr = getContentResolver();
		Cursor cursor = cr.query(
				Uri.parse("content://com.runcross.maback.go/version"), null,
				null, null, null);
		if (cursor.moveToNext()) {
			DeviecInfo.app_version = cursor.getString(cursor
					.getColumnIndex("version"));
		}
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
						//更新版本号
						ContentValues con = new ContentValues();
						con.put("version", DeviecInfo.app_version);
						getContentResolver()
								.update(Uri
										.parse("content://com.runcross.maback.go/version"),
										con, "version = ?",
										new String[] { versionTemp });
					}//if
				}//else
			}//on
		});

		final EditText name = (EditText) findViewById(R.id.uid);
		final EditText upwd = (EditText) findViewById(R.id.pwd);
		Button btn = (Button) findViewById(R.id.login);
		//登录
		btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Info.LoginId = name.getText().toString();
				Info.LoginPw = upwd.getText().toString();
				// if(uid.length()<11 || pwd.length() < 8){
				// Toast.makeText(LoginPre.this,"输入不正确",
				// Toast.LENGTH_SHORT).show();
				// return ;
				// }
				Info.LoginId = "13652318929";
				Info.LoginPw = "12345678";

				new Thread() {
					@Override
					public void run() {
						try {
							if (!Login.run(false)) {
								 Toast.makeText(LoginPre.this, "手机号或者密码错误",
								 Toast.LENGTH_SHORT).show();
								System.out.println("login failed");
								return;
							} else {

								Intent intent = new Intent(LoginPre.this,
										Done.class);
								startActivity(intent);
							}
						} catch (Exception e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}// run
				}.start();

				// name.setText(DeviecInfo.getUserAgent());
				// name.setSingleLine(true);

			}
		});

	}
}
