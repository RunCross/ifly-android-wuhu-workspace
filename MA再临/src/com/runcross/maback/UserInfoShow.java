package com.runcross.maback;

import com.runcross.maback.data.Info;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

public class UserInfoShow extends Activity {
	private TextView maxbc;
	private TextView bc;
	private TextView maxap;
	private TextView ap;
	private TextView name;
	private TextView level;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.userinfo);
		
		maxbc = (TextView) findViewById(R.id.maxbc);
		bc = (TextView) findViewById(R.id.bc);
		maxap = (TextView) findViewById(R.id.maxap);
		ap = (TextView) findViewById(R.id.ap);
		name = (TextView) findViewById(R.id.playerName);
		level = (TextView) findViewById(R.id.playerLevel);

		maxbc.setText(String.valueOf(Info.maxbc));
		maxap.setText(String.valueOf(Info.maxap));
		bc.setText(String.valueOf(Info.bc));
		ap.setText(String.valueOf(Info.ap));
		name.setText(String.valueOf(Info.name));
		level.setText(String.valueOf(Info.level));
		
		
	}
}
