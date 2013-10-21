package com.example.subgroup;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.RatingBar.OnRatingBarChangeListener;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

public class ProcessBarActivity extends Activity implements Callback{

	private int i=0;
	private ProgressBar hbar;
	private Handler handler;
	private Button btn;
	private ProgressBar cbar;
	private SeekBar sb;
	private ImageView img;
	private RatingBar ratbar;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.processbar);
		
		handler = new Handler(this);
		
		cbar = (ProgressBar) findViewById(R.id.cpro);
		hbar = (ProgressBar) findViewById(R.id.hpro);
		sb = (SeekBar) findViewById(R.id.seekbar);
		img = (ImageView) findViewById(R.id.imag);		
		ratbar = (RatingBar) findViewById(R.id.ratbar);
		btn = (Button) findViewById(R.id.control);
		
		btn.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				mythread.start();
			}
		});
		sb.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {
			
			/**
			 * 停止拖动
			 */
			@Override
			public void onStopTrackingTouch(SeekBar seekBar) {
				// TODO Auto-generated method stub
				
			}
			
			/**
			 * 开始拖动
			 */
			@Override
			public void onStartTrackingTouch(SeekBar seekBar) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void onProgressChanged(SeekBar seekBar, int progress,
					boolean fromUser) {
				// TODO Auto-generated method stub
				img.setAlpha(progress);
			}
		});
		
		ratbar.setOnRatingBarChangeListener(new OnRatingBarChangeListener() {
			
			@Override
			public void onRatingChanged(RatingBar ratingBar, float rating,
					boolean fromUser) {
				img.setAlpha((int)rating * 40);
			}
		});
		
	}

	private Thread mythread = new Thread(new Runnable() {
		
		@Override
		public void run() {
			while(i<100)
			{
				i++;
				
				hbar.setProgress(i);
//				  sb.setProgress(i);
				
				Message mess = new Message();
				mess.what=1;
				mess.obj=i;
				handler.sendMessage(mess);
								
				try {
					Thread.sleep(100);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				
			}
			
			Message mess = new Message();
			mess.what=1;
			mess.obj=i;
			handler.sendMessage(mess);
		}
	});

	@Override
	public boolean handleMessage(Message msg) {
		String strobj = String.valueOf(msg.obj);
		btn.setText(strobj);
		if(0 == (Integer)msg.obj ){
			
			cbar.setVisibility(View.GONE);
		}
		return false;
	}
}
