package com.example.subgroup;

import android.app.Activity;
import android.os.Bundle;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ViewFlipper;

public class ViewFliperActivity extends Activity {

	@SuppressWarnings("deprecation")
	private GestureDetector gdetector = new GestureDetector(new OnGestureListener() {
		
		@Override
		public boolean onSingleTapUp(MotionEvent e) {
			// TODO Auto-generated method stub
			return false;
		}
		
		@Override
		public void onShowPress(MotionEvent e) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX,
				float distanceY) {
			// TODO Auto-generated method stub
			return false;
		}
		
		@Override
		public void onLongPress(MotionEvent e) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
				float velocityY) {
			if(e1.getX()-e2.getX()>50  && Math.abs(velocityX) > 50){
				vf.stopFlipping();
				vf.showNext();
			}
			else if(e2.getX()-e1.getX()>50 && Math.abs(velocityX) > 50) {
				vf.stopFlipping();
				vf.showPrevious();
			}
			return false;
		}
		
		@Override
		public boolean onDown(MotionEvent e) {
			// TODO Auto-generated method stub
			return false;
		}
	});
	
	private Button btnleft;
	private Button btnright;
	private Button btnauto;
	
	private ViewFlipper vf;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.viewfliper);

		btnleft = (Button) findViewById(R.id.toleft);
		btnright = (Button) findViewById(R.id.toright);
		btnauto = (Button) findViewById(R.id.auto);
		vf = (ViewFlipper) findViewById(R.id.vf);
		
		btnleft.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				vf.stopFlipping();
				vf.showPrevious();
			}
		});
		btnauto.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				vf.startFlipping();
			}
		});
		btnright.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				vf.stopFlipping();
				vf.showNext();
			}
		});

	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		return gdetector.onTouchEvent(event);
	}

}
