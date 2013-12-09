package com.runcross.drawtest;

import com.runcross.drawtest.view.Illness;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		;
		;
		View ill = new Illness(MainActivity.this,this.getWindowManager().getDefaultDisplay().getWidth(),this.getWindowManager().getDefaultDisplay().getHeight());
		ill.setLayoutParams(new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
//		setContentView(ill);
		setContentView(R.layout.activity_main);
	}
	
}
