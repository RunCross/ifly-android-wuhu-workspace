package com.runcross.maback;

import com.runcross.maback.data.Info;

import android.app.Activity;
import android.os.Bundle;
import android.widget.EditText;

public class Done extends Activity {

	private EditText maxbc;
	private EditText bc;
	private EditText maxap;
	private EditText ap;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.userinfo);

		maxbc = (EditText) findViewById(R.id.maxbc);
		bc = (EditText) findViewById(R.id.bc);
		maxap = (EditText) findViewById(R.id.maxap);
		ap = (EditText) findViewById(R.id.ap);

		maxbc.setText(String.valueOf(Info.maxbc));
		maxap.setText(String.valueOf(Info.maxap));
		bc.setText(String.valueOf(Info.bc));
		ap.setText(String.valueOf(Info.ap));
		
	}
}
