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
			//view�����ٵ�ʱ�����
			@Override
			public void surfaceDestroyed(SurfaceHolder holder) {
				// TODO Auto-generated method stub
				
			}
			//view��������ʱ�����
			@Override
			public void surfaceCreated(SurfaceHolder holder) {
				//��ȡ����
				Canvas canvas=holder.lockCanvas();
				//��ȡbitmap
				Bitmap bitmap=BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher);
				//����bitmap
				canvas.drawBitmap(bitmap, 0,0,null);
				//�ύͼ��,�����������ύ
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
