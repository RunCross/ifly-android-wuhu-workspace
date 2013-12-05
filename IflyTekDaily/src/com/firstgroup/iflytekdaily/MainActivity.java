package com.firstgroup.iflytekdaily;

import java.text.SimpleDateFormat;
import java.util.Date;

import com.firstgroup.iflytekdaily.work.CalendarView;
import com.firstgroup.iflytekdaily.work.CalendarView.OnItemClickListener;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends Activity {
	TextView dateText;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.dailylayout_main);
		ImageButton btn = (ImageButton) findViewById(R.id.nextMouthBtn);
		ImageButton btn1 = (ImageButton) findViewById(R.id.lastMouthBtn);
		TextView linkText = (TextView) findViewById(R.id.linkText);
		dateText = (TextView) findViewById(R.id.dateText);
		linkText.setText(getClickableSpan());
		linkText.setMovementMethod(LinkMovementMethod.getInstance());

		final CalendarView view = (CalendarView) findViewById(R.id.myGridView);
		btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				view.clickRightMonth();
				String dt=view.getYearAndmonth();
                dateText.setText(dt+"-01");
			}
		});
		
		btn1.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				view.clickLeftMonth();
				String dt=view.getYearAndmonth();
                dateText.setText(dt+"-01");
			}
		});
		view.setOnItemClickListener(new calendarItemClickListener());

	}

	private SpannableString getClickableSpan() {
		
        OnClickListener listener=new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				startActivity(new Intent(MainActivity.this, MainActivity.class));
				
			}
		};
		SpannableString spanableInfo = new SpannableString("你今天还未填日报哦！点击这里填写");
		int start = 12;
		int end = 14;
		spanableInfo.setSpan(new Clickable(listener), start, end,
				Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return spanableInfo;
	}



	class calendarItemClickListener implements OnItemClickListener {
		@Override
		public void OnItemClick(Date date) {
			SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
			String da=dateFormat.format(date);
			dateText.setText(da);
			
		}
	}

	class Clickable extends ClickableSpan implements OnClickListener {
		private final View.OnClickListener mListener;
        
		public Clickable(View.OnClickListener l) {
			mListener = l;
		}

		@Override
		public void onClick(View v) {
			mListener.onClick(v);
		}
	}
	
	

}
