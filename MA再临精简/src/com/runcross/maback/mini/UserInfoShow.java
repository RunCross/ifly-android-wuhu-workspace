package com.runcross.maback.mini;

import com.runcross.maback.mini.run.Go;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;

public class UserInfoShow extends Activity {
	private TextView maxbc;
	private TextView bc;
	private TextView maxap;
	private TextView ap;
	private TextView name;
	private TextView level;
	private CheckBox isSelf;
	private EditText reCon;
	private Button start;
	private Button end;

	private boolean self;
	private int reconTime;

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
		isSelf = (CheckBox) findViewById(R.id.self);
		reCon = (EditText) findViewById(R.id.recon);
		start = (Button) findViewById(R.id.start);
		end = (Button) findViewById(R.id.end);

		maxbc.setText(String.valueOf(Go.info.bcMax));
		maxap.setText(String.valueOf(Go.info.apMax));
		bc.setText(String.valueOf(Go.info.bc));
		ap.setText(String.valueOf(Go.info.ap));
		name.setText(String.valueOf(Go.info.username));
		level.setText(String.valueOf(Go.info.lv));

		isSelf.setOnCheckedChangeListener(new OnCheckedChangeListener() {

			@Override
			public void onCheckedChanged(CompoundButton buttonView,
					boolean isChecked) {
				self = isChecked;
			}
		});

		start.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				reconTime = Integer.valueOf(reCon.getText().toString());
				
				Intent intents = new Intent(UserInfoShow.this, Go.class);
				intents.putExtra("self", self);
				intents.putExtra("recon", reconTime);
				startService(intents);
			}
		});
		end.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent intents = new Intent(UserInfoShow.this, Go.class);
				stopService(intents);
			}
		});

	}
}
