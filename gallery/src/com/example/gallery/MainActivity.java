package com.example.gallery;

import android.os.Bundle;
import android.R.integer;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.view.Menu;
import android.view.GestureDetector.OnGestureListener;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

public class MainActivity extends Activity {

	private Bitmap[] image;

	private ImageView imagev;
	
	private ImageView imagep;
	
	private int count = 0 ;

	GestureDetector mGestureDetector;
	
	GestureDetector vGestureDetector;

	// 滑动距离
	private int verticalMinDistance = 50;
	// x位移大小
	private int minVelocity = 0;

	@SuppressWarnings("deprecation")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		ImageViewListenter imageListenter = new ImageViewListenter();
		
		LinearLayoutListenter linearListenter = new LinearLayoutListenter();
		
		mGestureDetector = new GestureDetector(linearListenter);

		vGestureDetector = new GestureDetector(imageListenter);
		
		initImage();

		imagev = (ImageView) findViewById(R.id.img);
		
		imagep = (ImageView) findViewById(R.id.imgpart);

		//imagev.setImageBitmap(image[count++]);
		
		imagev.setClickable(true);
		
		imagev.setOnTouchListener(imageListenter);

		LinearLayout ly = (LinearLayout) findViewById(R.id.go);
		
		ly.setClickable(true);
		
		ly.setOnTouchListener(linearListenter);
		


	}

	private void initImage() {
		image = new Bitmap[9];
		int id = R.drawable.a;
		for (int i = 0; i < 9; i++) {
			Bitmap iv = BitmapFactory.decodeResource(getResources(), id + i);
			image[i] = iv;
		}
	}

	
	class LinearLayoutListenter implements OnTouchListener , OnGestureListener{

		@SuppressLint("NewApi")
		@Override
		public boolean onDown(MotionEvent e) {
			return false;
		}

		@Override
		public void onShowPress(MotionEvent e) {
			// TODO Auto-generated method stub

		}

		@Override
		public boolean onSingleTapUp(MotionEvent e) {
			// TODO Auto-generated method stub
			return false;
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
			//System.out.println(2);
			if (e1.getX() - e2.getX() > verticalMinDistance
					&& Math.abs(velocityX) > minVelocity) {
				imagev.setImageBitmap(image[count++]);
				if (count >= 9) {
					count = 0;
				}
				// Toast.makeText(this, "向左手势"+index+tab.getCurrentTab(),
				// Toast.LENGTH_SHORT).show();
			} else if (e2.getX() - e1.getX() > verticalMinDistance
					&& Math.abs(velocityX) > minVelocity) {

				imagev.setImageBitmap(image[count--]);
				if (count < 0) {
					count = 8;
				}
				
				// Toast.makeText(this, "向右手势"+index+tab.getCurrentTab(),
				// Toast.LENGTH_SHORT).show();
			}
			return false;
		}

		@Override
		public boolean onTouch(View v, MotionEvent event) {
			//System.out.println(1);
			return mGestureDetector.onTouchEvent(event);
		}

	}

	
	class ImageViewListenter implements OnTouchListener , OnGestureListener{

		@Override
		public boolean onDown(MotionEvent e) {
			
			float x = e.getRawX();
			float y = e.getRawY();
			
			System.out.println(x+"   "+y);
			System.out.println(image[count].getWidth()+" "+image[count].getHeight());
			
			int width = 10;
			int height = 10;
			
			int xleft = (int)x-5;			
			int yleft = (int)y-5;
			
			
			if(xleft<0) xleft=0;
			if(xleft+width>image[count].getWidth()) width=image[count].getWidth()-xleft;
			
			if(yleft<0) yleft=0;
			if(yleft+height>image[count].getHeight()) height=image[count].getHeight()-yleft;
			
			if(width < 0) width=1;
			if(height < 0) height=1;
			
			System.out.println(xleft+"  "+yleft);
			
			System.out.println(width+"  "+height);
			
			Bitmap bt = Bitmap.createBitmap(image[count], xleft, yleft,
					width, height);
			
			imagep.setImageBitmap(bt);
			
			
			return false;
		}

		@Override
		public void onShowPress(MotionEvent e) {
			// TODO Auto-generated method stub

		}

		@Override
		public boolean onSingleTapUp(MotionEvent e) {
			// TODO Auto-generated method stub
			return false;
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
			return false;
		}

		@Override
		public boolean onTouch(View v, MotionEvent event) {
			//System.out.println(1);
			return vGestureDetector.onTouchEvent(event);
		}

	}

}
