package com.runcross.phoncall;

import android.os.Bundle;
import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.GestureDetector.OnGestureListener;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;

@SuppressWarnings("deprecation")
public class MainActivity extends ActivityGroup implements OnGestureListener{

	private GestureDetector gdetector ;
	private ViewFlipper vf;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		gdetector = new GestureDetector(this);
		
		vf = (ViewFlipper) findViewById(R.id.vff);
		
		LocalActivityManager manager = getLocalActivityManager();
		Intent intent1 = new Intent(MainActivity.this, PhoneCall.class);
		vf.addView(manager.startActivity("拨号", intent1).getDecorView());
		Intent intent2 = new Intent(MainActivity.this, HistoryActivity.class);
		vf.addView(manager.startActivity("历史", intent2).getDecorView());
		Intent intent3 = new Intent(MainActivity.this, PersonActivity.class);
		vf.addView(manager.startActivity("联系人", intent3).getDecorView());

//		vf.startFlipping();
//打电话的操作
//		 Intent intent = new Intent(Intent.ACTION_CALL,Uri.parse("tel:"+ "13865963119"));  
//         
//         startActivity(intent);  
		 
	}

/*	@Override
	public boolean onTouchEvent(MotionEvent event) {
		// TODO Auto-generated method stub
		return gdetector.onTouchEvent(event);
	}
*/
//	@Override
//	public boolean onTouch(View v, MotionEvent event) {
//		// TODO Auto-generated method stub
//		return gdetector.onTouchEvent(event);
//	}

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
	public boolean onScroll(MotionEvent e1, MotionEvent e2,
			float distanceX, float distanceY) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onLongPress(MotionEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2,
			float velocityX, float velocityY) {
		
		if (e1.getX() - e2.getX() > 20 ) {
//			vf.stopFlipping();
//			Toast.makeText(MainActivity.this, "toleft"+String.valueOf(e2.getX() - e1.getX()), Toast.LENGTH_SHORT).show();
			vf.showNext();
		} else if (e2.getX() - e1.getX() > 20) {
//			vf.stopFlipping();
//			Toast.makeText(MainActivity.this, "toright"+String.valueOf(e2.getX() - e1.getX()), Toast.LENGTH_SHORT).show();
			vf.showPrevious();
		}
		return false;
	}

	@Override
	public boolean onDown(MotionEvent e) {
		// TODO Auto-generated method stub
//		Toast.makeText(MainActivity.this, ""+String.valueOf(e.getX(0) - e.getX(1)), Toast.LENGTH_SHORT).show();
		return false;
	}

	@Override
	public boolean dispatchTouchEvent(MotionEvent ev) {
		if(gdetector.onTouchEvent(ev)){
			return gdetector.onTouchEvent(ev);
			}
		return super.dispatchTouchEvent(ev);
	}
	

}
