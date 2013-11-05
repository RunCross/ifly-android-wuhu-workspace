package com.runcross.lanucher;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.Toast;

public class StanderActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
//		getTaskId();
		Toast.makeText(this, String.valueOf(getTaskId()), Toast.LENGTH_SHORT).show();
		Button btn = new Button(StanderActivity.this);
		
		setContentView(btn);
		btn.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Intent intent = new Intent(StanderActivity.this, StanderActivity.class);
				startActivity(intent);
			}
		});
		
	}
}
