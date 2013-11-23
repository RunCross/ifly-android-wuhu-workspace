package com.runcross.maback.mini;

import com.runcross.maback.mini.action.Login;
import com.runcross.maback.mini.data.DeviecInfo;
import com.runcross.maback.mini.data.Info;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
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
import android.widget.Toast;

public class LoginPre extends Activity implements Callback {

	private EditText appVersion;
	private String versionTemp;
	private Handler hand;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.login);

		hand = new Handler(this);

		// »ñÈ¡°æ±¾ºÅ
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
						// ¸üÐÂ°æ±¾ºÅ
						ContentValues con = new ContentValues();
						con.put("version", DeviecInfo.app_version);
						getContentResolver()
								.update(Uri
										.parse("content://com.runcross.maback.go/version"),
										con, "version = ?",
										new String[] { versionTemp });
					}// if
				}// else
			}// on
		});

		final EditText name = (EditText) findViewById(R.id.uid);
		final EditText upwd = (EditText) findViewById(R.id.pwd);
		Button btn = (Button) findViewById(R.id.login);
		// µÇÂ¼
		btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Info.LoginId = name.getText().toString();
				Info.LoginPw = upwd.getText().toString();
				// if(uid.length()<11 || pwd.length() < 8){
				// Toast.makeText(LoginPre.this,"ÊäÈë²»ÕýÈ·",
				// Toast.LENGTH_SHORT).show();
				// return ;
				// }
				Info.LoginId = "13652318929";
				Info.LoginPw = "12345678";

				new Thread() {
					@Override
					public void run() {
						try {
							hand.sendEmptyMessage(0);
							if (!Login.run(false)) {
								Toast.makeText(LoginPre.this, "ÊÖ»úºÅ»òÕßÃÜÂë´íÎó",
										Toast.LENGTH_SHORT).show();
								System.out.println("login failed");
								hand.sendEmptyMessage(-1);
								return;
							} else {

								Intent intent = new Intent(LoginPre.this,
										UserInfoShow.class);
								startActivity(intent);
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
		//µÇÂ¼Ê§°Ü
		case -1:
			AlertDialog.Builder dialogBulder = new Builder(LoginPre.this);
			AlertDialog dialog = dialogBulder.setTitle("µÇÂ¼Ê§°Ü")
					.setIcon(R.drawable.ic_launcher).setMessage("µÇÂ¼Ê§°Ü")
					.setPositiveButton("È·ÈÏ", null).create();
			dialog.show();
			break;
		case 0:
			Toast.makeText(this, "µÇÂ¼ÖÐ£¬ÇëµÈ´ý", Toast.LENGTH_SHORT).show();
		}
		return false;
	}
}
