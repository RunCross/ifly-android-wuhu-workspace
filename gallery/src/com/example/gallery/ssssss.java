//package com.example.gallery;
//
//import android.view.GestureDetector;
//import android.view.GestureDetector.OnGestureListener;
//import android.view.Menu;
//import android.view.MotionEvent;
//import android.view.View;
//import android.view.View.OnTouchListener;
//
//public class ssssss implements OnTouchListener , OnGestureListener{
//
//	GestureDetector mGestureDetector;
//	
//	public ssssss(GestureDetector mGestureDetector){
//		this.mGestureDetector = mGestureDetector;
//	}
//
//
//	@Override
//	public boolean onDown(MotionEvent e) {
//		// TODO Auto-generated method stub
//		return false;
//	}
//
//	@Override
//	public void onShowPress(MotionEvent e) {
//		// TODO Auto-generated method stub
//
//	}
//
//	@Override
//	public boolean onSingleTapUp(MotionEvent e) {
//		// TODO Auto-generated method stub
//		return false;
//	}
//
//	@Override
//	public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX,
//			float distanceY) {
//		// TODO Auto-generated method stub
//		return false;
//	}
//
//	@Override
//	public void onLongPress(MotionEvent e) {
//		// TODO Auto-generated method stub
//
//	}
//
//	@Override
//	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
//			float velocityY) {
//		//System.out.println(2);
//		if (e1.getX() - e2.getX() > verticalMinDistance
//				&& Math.abs(velocityX) > minVelocity) {
//			imagev.setImageBitmap(image[count++]);
//			if (count >= 9) {
//				count = 0;
//			}
//			// Toast.makeText(this, "向左手势"+index+tab.getCurrentTab(),
//			// Toast.LENGTH_SHORT).show();
//		} else if (e2.getX() - e1.getX() > verticalMinDistance
//				&& Math.abs(velocityX) > minVelocity) {
//
//			imagev.setImageBitmap(image[count--]);
//			if (count < 0) {
//				count = 8;
//			}
//			
//			// Toast.makeText(this, "向右手势"+index+tab.getCurrentTab(),
//			// Toast.LENGTH_SHORT).show();
//		}
//		return false;
//	}
//
//	@Override
//	public boolean onTouch(View v, MotionEvent event) {
//		//System.out.println(1);
//		return mGestureDetector.onTouchEvent(event);
//	}
//
//}
