package com.runcross.drawtest.view;

import com.runcross.drawtest.R;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Bundle;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;



public class SurfaceView extends Activity {
	private SurfaceHolder holder;
	private SurfaceView surView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
    	// TODO Auto-generated method stub
    	super.onCreate(savedInstanceState);
    	setContentView(R.layout.surfacetest);
    	//surView=(SurfaceView)findViewById(R.id.surface);
    	
    	holder.addCallback(new Callback() {
			//view被销毁的时候调用
			@Override
			public void surfaceDestroyed(SurfaceHolder holder) {
				// TODO Auto-generated method stub
				
			}
			//view被创建的时候调用
			@Override
			public void surfaceCreated(SurfaceHolder holder) {
				//获取画布
				Canvas canvas=holder.lockCanvas();
				//获取bitmap
				Bitmap bitmap=BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
				//绘制bitmap
				canvas.drawBitmap(bitmap, 0,0,null);
				//提交图像,解锁画布并提交
				holder.unlockCanvasAndPost(canvas);
				
			}
			
			@Override
			public void surfaceChanged(SurfaceHolder holder, int format, int width,
					int height) {
				// TODO Auto-generated method stub
				
			}
		});
    	
    }
}
