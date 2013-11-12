package com.example.chattest;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.Window;

public class Shake extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.shake);

	}
public void shake_back(View v){
	Shake.this.finish();
}
}
