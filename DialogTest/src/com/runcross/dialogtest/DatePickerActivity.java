package com.runcross.dialogtest;

import java.util.Calendar;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.TimePicker;

public class DatePickerActivity extends Activity {

	private EditText eddate;
	private EditText edtime;
	private DatePickerDialog.OnDateSetListener listener = new DatePickerDialog.OnDateSetListener(){

		@Override
		public void onDateSet(DatePicker view, int year, int monthOfYear,
				int dayOfMonth) {
			eddate.setText(year+"Äê"+(monthOfYear+1)+"ÔÂ"+dayOfMonth+"ÈÕ");
		}
		
	};
	
	private TimePickerDialog.OnTimeSetListener timelisten = new TimePickerDialog.OnTimeSetListener(){

		@Override
		public void onTimeSet(TimePicker view, int hourOfDay, int minute) {
			edtime.setText(hourOfDay+":"+minute);
			
		}
		
	};
	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.datepickerdialog);
		Calendar calendar = Calendar.getInstance();
		
		eddate = (EditText) findViewById(R.id.eddate);
		edtime = (EditText) findViewById(R.id.edtime);
		Button btndate = (Button) findViewById(R.id.btndate);
		Button btntime = (Button) findViewById(R.id.btntime);
		
		int year = calendar.get(Calendar.YEAR);
		int mouth = calendar.get(Calendar.MONTH);
		int day = calendar.get(Calendar.DAY_OF_MONTH);
		
		int hour = calendar.get(Calendar.HOUR);
		int minute = calendar.get(Calendar.HOUR_OF_DAY);
		int second = calendar.get(Calendar.SECOND);
		
		final DatePickerDialog datep = new DatePickerDialog(DatePickerActivity.this, listener, year, mouth, day);
		final TimePickerDialog timep = new TimePickerDialog(DatePickerActivity.this, timelisten, hour, minute, true);
		
		btndate.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				datep.show();
			}
		});
		
		btntime.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				timep.show();
			}
		});
		
		
	}

	
	
}
