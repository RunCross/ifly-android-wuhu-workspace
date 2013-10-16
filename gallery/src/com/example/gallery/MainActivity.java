package com.example.gallery;

import android.os.Bundle;
import android.R.integer;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
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

	private int count = 0;

	GestureDetector mGestureDetector;

	GestureDetector vGestureDetector;

	// ��������
	private int verticalMinDistance = 50;
	// xλ�ƴ�С
	private int minVelocity = 0;
	// ͼƬ��������
	private int imageDistance = 50;
	//��չ����
	private float towidth = 1;
	private float toheight = 1;
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

		// imagev.setImageBitmap(image[count++]);

		imagev.setClickable(true);

		imagev.setOnTouchListener(imageListenter);

		LinearLayout ly = (LinearLayout) findViewById(R.id.go1);

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

	
	/**
	 * LinearLayout����
	 * @author RunCross
	 *
	 */
	class LinearLayoutListenter implements OnTouchListener, OnGestureListener {

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
		public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
				float velocityY) {
			// System.out.println(2);
			if (e1.getX() - e2.getX() > verticalMinDistance
					&& Math.abs(velocityX) > minVelocity) {
				if (count >= 8) {
					count = 0;
				}
				imagev.setImageBitmap(image[++count]);
				// Toast.makeText(this, "��������"+index+tab.getCurrentTab(),
				// Toast.LENGTH_SHORT).show();
			} else if (e2.getX() - e1.getX() > verticalMinDistance
					&& Math.abs(velocityX) > minVelocity) {

				if (count <= 0) {
					count = 9;
				}
				imagev.setImageBitmap(image[--count]);

				// Toast.makeText(this, "��������"+index+tab.getCurrentTab(),
				// Toast.LENGTH_SHORT).show();
			}
			return false;
		}

		@Override
		public boolean onTouch(View v, MotionEvent event) {
			// System.out.println(1);
			return mGestureDetector.onTouchEvent(event);
		}

	}

	/**
	 * ImageView ����
	 * @author RunCross
	 *
	 */
	class ImageViewListenter implements OnTouchListener, OnGestureListener {

		/**
		 * ����
		 */
		@Override
		public boolean onDown(MotionEvent e) {
			
			float x = e.getX();
			float y = e.getY();

//			System.out.println(x + "   " + y);
//			System.out.println(image[count].getWidth() + " "
//					+ image[count].getHeight());

			int width = image[count].getWidth() / 5;
			int height = image[count].getHeight() / 5;

			int xleft = (int) x - width / 2 ;
			int yleft = (int) y - height / 2 ;

			if (xleft + width > image[count].getWidth())
				xleft = image[count].getWidth() - width;
			if (xleft < 0)
				xleft = 0;

			if (yleft + height > image[count].getHeight())
				yleft = image[count].getHeight() - height;
			if (yleft < 0)
				yleft = 0;

//			System.out.println(xleft + "  " + yleft);
//
//			System.out.println(width + "  " + height);

			Bitmap bt = Bitmap.createBitmap(image[count], xleft, yleft, width,
					height);

			imagep.setImageBitmap(bt);

			//�����趨
			towidth = 1;
			toheight = 1;			
			
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
		public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
				float velocityY) {
			
			System.out.printf("%f %f %f %f\n",e1.getX(),e2.getX(),e1.getY(),e2.getY());
			
			if (Math.abs(e1.getX() - e2.getX()) > imageDistance
					&& Math.abs(e1.getY() - e2.getY()) > imageDistance) {
				
				System.out.printf("ss  %f %f %f %f\n",e1.getX(),e2.getX(),e1.getY(),e2.getY());
				//����ϵ��
				towidth = (float) (towidth * 1.5);
				toheight = (float) (toheight * 1.5);
				System.out.println(towidth+" "+toheight);

				
				//����任
				Matrix scalMatrix = new Matrix();
				scalMatrix.postScale(towidth, toheight);

				//ͼƬ����
				Bitmap newBitemap = Bitmap.createBitmap(image[count], 0, 0,
						image[count].getWidth(), image[count].getHeight(), scalMatrix, true);
				
				imagev.setImageBitmap(newBitemap);
				
				// Toast.makeText(this, "��������"+index+tab.getCurrentTab(),
				// Toast.LENGTH_SHORT).show();
			} else if (Math.abs(e1.getX() - e2.getX()) > imageDistance
					&& Math.abs(e1.getY() - e2.getY()) > imageDistance) {
				towidth = (float) (towidth / 1.5);
				toheight = (float) (toheight / 1.5);

				//����任
				Matrix scalMatrix = new Matrix();
				scalMatrix.postScale(towidth, toheight);

				//ͼƬ����
				Bitmap newBitemap = Bitmap.createBitmap(image[count], 0, 0,
						image[count].getWidth(), image[count].getHeight(), scalMatrix, true);
				
				imagev.setImageBitmap(newBitemap);
			}
			return false;
		}

		@Override
		public boolean onTouch(View v, MotionEvent event) {
			// System.out.println(1);
			return vGestureDetector.onTouchEvent(event);
		}

	 
	}

}
