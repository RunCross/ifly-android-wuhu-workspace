package com.example.chattest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;

public class Setting extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.setting);

	}

	public void setting_back(View v) {
		Setting.this.finish();
	}

	public void exit_setting(View v) {
		Intent intent = new Intent(Setting.this, ExitFromSetting.class);
		startActivity(intent);

	}

}
