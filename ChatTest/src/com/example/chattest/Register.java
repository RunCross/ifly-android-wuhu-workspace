package com.example.chattest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;

public class Register extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.register);

	}

	public void back_login(View v) {
		Intent intent = new Intent(Register.this, Login.class);
		startActivity(intent);
	}

	public void login_back(View v) {
		Register.this.finish();
	}

}
