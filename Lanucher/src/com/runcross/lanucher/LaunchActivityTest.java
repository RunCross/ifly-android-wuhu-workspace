package com.runcross.lanucher;

import android.app.LauncherActivity;
import android.content.Intent;
import android.os.Bundle;
import android.widget.ArrayAdapter;

public class LaunchActivityTest extends LauncherActivity {

	@Override
	protected void onCreate(Bundle icicle) {
		super.onCreate(icicle);
		ArrayAdapter<String> adapter = new ArrayAdapter<String>(
				LaunchActivityTest.this, android.R.layout.simple_list_item_1,
				new String[] { "list", "prea" });
		setListAdapter(adapter);
		
	}
	
	
	@Override
	/*
	 * 点击某项目时所调用的
	 * (non-Javadoc)
	 * @see android.app.LauncherActivity#intentForPosition(int)
	 */
	protected Intent intentForPosition(int position) {
		if(0 == position){
			return new Intent(LaunchActivityTest.this,ListActivityTest.class);
		}
		return super.intentForPosition(position);
	}
}

