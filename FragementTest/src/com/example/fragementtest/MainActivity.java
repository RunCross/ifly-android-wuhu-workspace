package com.example.fragementtest;



import android.opengl.Visibility;
import android.os.Bundle;
import android.app.Activity;
import android.app.ActivityGroup;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ViewFlipper;

public class MainActivity extends Activity implements OnGestureListener {
	private GestureDetector gdetector ;
	private ViewFlipper vf;
	private FrameLayout flayout;
	private LayoutInflater inflater;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	

gdetector = new GestureDetector(this);
		
		vf = (ViewFlipper) findViewById(R.id.vff);
		
//		LocalActivityManager manager = getLocalActivityManager();
//		Intent intent1 = new Intent(MainActivity.this, newslistFragment.class);
		FragmentManager fragmentManager =getFragmentManager();
		FragmentTransaction fragmentTransaction =fragmentManager.beginTransaction();
		
		NewslistFragment fragment =new NewslistFragment();
		SecondF sf = new SecondF();
		fragmentManager.beginTransaction().replace(R.id.cont, fragment,"first");
		fragmentManager.beginTransaction().replace(R.id.cont, fragment,"second");
//		fragmentManager.putFragment(savedInstanceState, "first", fragment);
//		fragmentManager.putFragment(savedInstanceState, "second", sf);
		
		vf.addView(fragmentManager.getFragment(savedInstanceState, "first").getView());
		vf.addView(fragmentManager.getFragment(savedInstanceState, "second").getView());
//		Intent intent3 = new Intent(MainActivity.this, PersonActivity.class);
//		vf.addView(manager.startActivity("ÁªÏµÈË", intent3).getDecorView());
	}

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
