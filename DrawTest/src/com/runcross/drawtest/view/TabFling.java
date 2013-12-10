package com.runcross.drawtest.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;

public class TabFling extends View implements OnGestureListener{

	private Bitmap current;
	private Bitmap pre;
	
	private int width;
	private int height;
	
	private int moveDis;
	
	private int currentX;
	
	private int preX = -720;
	
	GestureDetector ges;
	
	
	@SuppressWarnings("deprecation")
	public TabFling(Context context) {
		super(context);
		ges = new GestureDetector(this);
	}

	@SuppressLint("DrawAllocation")
	@Override
	protected void onDraw(Canvas canvas) {
		super.onDraw(canvas);

		width = 720;
		height = 1280;

		Paint paint = new Paint();
		paint.setStrokeWidth(3);
		paint.setTextSize(50);
		
		if(current == null){
			paint.setColor(Color.BLACK);
			current = Bitmap.createBitmap(width,height, Bitmap.Config.ARGB_8888);
			Canvas curr = new Canvas(current);		
			curr.drawLine(0, 50, width, 50, paint);		
			
		}
		if(pre == null){
			paint.setColor(Color.RED);
			pre = Bitmap.createBitmap(width,height, Bitmap.Config.ARGB_8888);
			Canvas cpre = new Canvas(pre);
			cpre.drawLine(20, 100, width, 100, paint);
		}
		
		
		currentX += moveDis;
		preX += moveDis;
		if(preX >= 0 && preX<= width){
//			Bitmap temp =Bitmap.createBitmap(current);
//			current = null;
//			current = Bitmap.createBitmap(pre);
//			pre = null;			
//			pre = Bitmap.createBitmap(temp);
//			temp = null;
			currentX = preX - width;		
		}else if(preX > width){
//			Bitmap temp =Bitmap.createBitmap(current);
//			current = null;
//			current = Bitmap.createBitmap(pre);
//			pre = null;			
//			pre = Bitmap.createBitmap(temp);
//			temp = null;
			preX = 0-width;
			currentX = 0;
		}
		canvas.drawBitmap(current, currentX, 0, paint);
		canvas.drawBitmap(pre, preX, 0, paint);
	}

	@Override
	public boolean onDown(MotionEvent e) {
		return false;
	}

	@Override
	public void onShowPress(MotionEvent e) {
		
	}

	@Override
	public boolean onSingleTapUp(MotionEvent e) {
		return false;
	}

	@Override
	public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX,
			float distanceY) {
		return false;
	}

	@Override
	public void onLongPress(MotionEvent e) {
		
	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		if(e2.getX() - e1.getX() >0){
			moveDis = (int) (e2.getX() - e1.getX());
			invalidate();
		}
		return false;
	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		ges.onTouchEvent(event);
		return true;
	}
}
