package com.example.chattest;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.Toast;

public class ExitFromSetting extends Activity {
	private LinearLayout layout;

	@Override
	protected void onCreate(Bundle savedInstanceState) {

		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.exit_dialog_from_settings);
		layout = (LinearLayout) findViewById(R.id.exit_layout2);
		layout.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Toast.makeText(getApplicationContext(), "提示：点击窗口外部关闭窗口！",
						Toast.LENGTH_SHORT).show();
			}
		});
	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {

		finish();
		return true;
	}

	public void exitbutton1(View v) {
		ExitFromSetting.this.finish();
	}

	public void exitbutton0(View v) {
		ExitFromSetting.this.finish();
		MainWeixin.instance.finish();//关闭Main 这个Activity
		Intent intent = new Intent(ExitFromSetting.this, Login.class);
		startActivity(intent);
	}
}
