package com.runcross.drawtest;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.OnTouchListener;

public class SurfaceActivity extends Activity {
	private SurfaceView surfaceView;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.surfacetest);
		surfaceView = (SurfaceView) findViewById(R.id.surface);
		//获取surfaceview的holder 来绘制图形
		final SurfaceHolder holder = surfaceView.getHolder();
		holder.addCallback(new Callback() {
			
			@Override
			public void surfaceDestroyed(SurfaceHolder arg0) {
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void surfaceCreated(SurfaceHolder arg0) {
				Canvas canvas = holder.lockCanvas();
				Bitmap bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
				canvas.drawBitmap(bitmap, 0, 0, null);
				//提交更改   解锁画布并且提交
				holder.unlockCanvasAndPost(canvas);
				
			}
			
			@Override
			public void surfaceChanged(SurfaceHolder arg0, int arg1, int arg2, int arg3) {
				
				
			}
		});
		surfaceView.setOnTouchListener(new OnTouchListener() {
			
			@Override
			public boolean onTouch(View v, MotionEvent event) {
				if(event.getAction()==MotionEvent.ACTION_DOWN){
					int x=(int)event.getX();
					int y=(int)event.getY();
					
					Paint paint=new Paint();
					
					
					//根据需要锁定画布
					Rect rect=new Rect(x-20,y-20,x+20,y+40);
					Rect squee=new Rect(x-20,y,x+20,y+20);
					paint.setColor(Color.RED);
					
					Canvas canvasRect=holder.lockCanvas(rect);
					canvasRect.save();
					//以x,y为起点，旋转90度
					canvasRect.rotate(90,x, y);
					canvasRect.drawRect(squee, paint);
					
					canvasRect.restore();
					paint.setColor(Color.GREEN);
					canvasRect.drawCircle(x, y+10,10,paint);
					
					holder.unlockCanvasAndPost(canvasRect);
				}
				
				return false;
			}
		});
	}

}
