package com.runcross.phoncall;

import java.util.Calendar;

import android.app.Activity;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.TextView;

public class PhoneCall extends Activity implements OnClickListener{

	private Button[] btns;
	TextView tx ;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.bohaoqi);
		
		initButton();
		tx = (TextView) findViewById(R.id.callphone);
		Button btn0 = (Button) findViewById(R.id.p0);
        btn0.setOnClickListener(this);
        Button btn1 = (Button) findViewById(R.id.p1);
        btn1.setOnClickListener(this);
        Button btn2 = (Button) findViewById(R.id.p2);
        btn2.setOnClickListener(this);
	}

	private void initButton() {
//		LayoutParams lp = new LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
//		btns = new Button[12];
//		for(int i=0;i<12;i++)
//		{
//			Button btn = new Button(PhoneCall.this);
//			btn.setText(String.valueOf(i));
//			btn.setLayoutParams(lp);
//			btn.s
//			btns[i] = btn;
//		}
//		Button btnx = (Button) findViewById(R.id.px);
//		Button btn0 = (Button) findViewById(R.id.p0);
//		Button btnj = (Button) findViewById(R.id.pj);
//		DisplayMetrics metric = new DisplayMetrics();
//        getWindowManager().getDefaultDisplay().getMetrics(metric);
//        int width = metric.widthPixels;     // ÆÁÄ»¿í¶È£¨ÏñËØ£©
//        int height = metric.heightPixels;   // ÆÁÄ»¸ß¶È£¨ÏñËØ£©
//		btnx.setLayoutParams(new LayoutParams(20, 20));
//		btn0.setLayoutParams(new LayoutParams(20, 20));
//		btnj.setLayoutParams(new LayoutParams(20, 20));
//		
//		
	}

	@Override
	public void onClick(View v) {
		Button bt = (Button) v;
			tx.setText(Calendar.getInstance().getTime().toLocaleString());		
	}
}
