package com.runcross.maback;

import com.runcross.maback.action.Login;
import com.runcross.maback.data.Info;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;

public class LoginPre extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.login);

		final EditText name = (EditText) findViewById(R.id.uid);
		final EditText upwd = (EditText) findViewById(R.id.pwd);
		Button btn = (Button) findViewById(R.id.login);
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
//									Toast.makeText(LoginPre.this, "手机号或者密码错误",
//											Toast.LENGTH_SHORT).show();
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
