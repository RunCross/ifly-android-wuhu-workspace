package com.example.subgroup;

import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ViewFlipper;

@SuppressWarnings("deprecation")
public class ViewFliperGroupActivity extends ActivityGroup {
	private ViewFlipper vf;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.blank);
		vf = (ViewFlipper) findViewById(R.id.vff);
		
		LocalActivityManager manager = getLocalActivityManager();
		Intent intent1 = new Intent(ViewFliperGroupActivity.this,FirstActivity.class);
		vf.addView(manager.startActivity("acticity1", intent1).getDecorView());
		
		Intent intent2 = new Intent(ViewFliperGroupActivity.this,SecondActivity.class);
		vf.addView(manager.startActivity("acticity1", intent2).getDecorView());
		vf.startFlipping();
	}

	
}
