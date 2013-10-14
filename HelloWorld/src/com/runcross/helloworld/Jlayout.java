package com.runcross.helloworld;

import java.awt.font.TextAttribute;

import android.app.Activity;
import android.os.Bundle;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class Jlayout extends Activity {

	

	@Override
	protected void onCreate(Bundle savedInstanceState) {		
		super.onCreate(savedInstanceState);
		
		LinearLayout root = new LinearLayout(this);
		
		Button btn = new Button(this);		
		btn.setText("GO");
		
		TextView tv = new TextView(this);
		tv.setText("FULL");
				
		
		root.addView(btn);
		root.addView(tv);
		
		setContentView(root);
	}

}
