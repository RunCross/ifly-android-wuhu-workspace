package com.example.viewtest;

import android.app.Activity;
import android.os.Bundle;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import android.widget.RadioGroup.OnCheckedChangeListener;
import android.widget.ToggleButton;

public class CheckActivity extends Activity implements
		CompoundButton.OnCheckedChangeListener {


	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.checktest);
		RadioGroup radioGroup = (RadioGroup) findViewById(R.id.radiogroup);
		radioGroup.setOnCheckedChangeListener(new OnCheckedChangeListener() {

			@Override
			public void onCheckedChanged(RadioGroup group, int checkedId) {
				/*
				 * switch(checkedId) { case R.id.radioMan: sex="男"; break; case
				 * R.id.radiowoMan: sex="女"; break; case R.id.radioelse:
				 * sex="非人类"; break;
				 * 
				 * }
				 */
				RadioButton radioButton = (RadioButton) findViewById(checkedId);
				Toast.makeText(CheckActivity.this, radioButton.getText(),
						Toast.LENGTH_SHORT).show();

			}
		});

		CheckBox chkjava = (CheckBox) findViewById(R.id.chkJava);
		CheckBox chkandroid = (CheckBox) findViewById(R.id.chkAndroid);
		CheckBox chknet = (CheckBox) findViewById(R.id.chknet);
		chkjava.setOnCheckedChangeListener(this);
		chkandroid.setOnCheckedChangeListener(this);
		chknet.setOnCheckedChangeListener(this);

		ToggleButton tbutton = (ToggleButton) findViewById(R.id.tButton);
		tbutton.setOnCheckedChangeListener(this);

	}

	@Override
	public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {

		Toast.makeText(CheckActivity.this,
				buttonView.getText().toString() + isChecked, Toast.LENGTH_SHORT)
				.show();
	}

}
