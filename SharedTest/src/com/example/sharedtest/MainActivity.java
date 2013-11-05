package com.example.sharedtest;

import android.os.Bundle;
import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.Menu;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		SharedPreferences shared = getSharedPreferences("test",
				MODE_WORLD_WRITEABLE);
		
		Editor ed = shared.edit();
		
		ed.putString("Name", "RunCross");
		
		
		
		
		ed.commit();
	}

}
