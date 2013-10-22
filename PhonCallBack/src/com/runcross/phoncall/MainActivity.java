package com.runcross.phoncall;


import android.os.Bundle;
import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.widget.ViewFlipper;

@SuppressWarnings("deprecation")
public class MainActivity extends ActivityGroup {
	private ViewFlipper vf;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		vf = (ViewFlipper) findViewById(R.id.vff);

		LocalActivityManager manager = getLocalActivityManager();
		Intent intent1 = new Intent(MainActivity.this,
				PhoneCall.class);
		vf.addView(manager.startActivity("acticity1", intent1).getDecorView());

		Intent intent2 = new Intent(MainActivity.this,
				HistoryActivity.class);
		vf.addView(manager.startActivity("acticity1", intent2).getDecorView());
		vf.startFlipping();
	}


}
