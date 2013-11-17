package com.runcross.maback.full;

import com.runcross.maback.full.action.ActionDone;
import com.runcross.maback.full.data.Info;

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
		setContentView(R.layout.user_info);
		
		maxbc = (TextView) findViewById(R.id.maxbc);
		bc = (TextView) findViewById(R.id.bc);
		maxap = (TextView) findViewById(R.id.maxap);
		ap = (TextView) findViewById(R.id.ap);
		name = (TextView) findViewById(R.id.playerName);
		level = (TextView) findViewById(R.id.playerLevel);

		maxbc.setText(String.valueOf(ActionDone.info.bcMax));
		maxap.setText(String.valueOf(ActionDone.info.apMax));
		bc.setText(String.valueOf(ActionDone.info.bc));
		ap.setText(String.valueOf(ActionDone.info.ap));
		name.setText(String.valueOf(ActionDone.info.username));
		level.setText(String.valueOf(ActionDone.info.lv));
		
		
	}
}
