package com.example.chattest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

public class Me extends Activity {
	private LinearLayout mClose;
	private LinearLayout mCloseBtn;
	private View layout;
	private boolean menu_display = false;
	private PopupWindow menuWindow;
	private LayoutInflater inflater;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.me);
	}

	public void btnSetting(View v) {
		Intent intent = new Intent(Me.this, Setting.class);
		startActivity(intent);
	}

	

}
