package com.example.resttest;

import android.app.Activity;
import android.graphics.drawable.ClipDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
/**
 * ��̬����ʾ�и���ͼƬ
 * @author Administrator
 *
 */
public class ClipTest extends Activity implements Handler.Callback{

	private Handler handler;
	private ClipDrawable drawAble;
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.cliptest);
		
		handler=new Handler(this);
		ImageView imageView=(ImageView)findViewById(R.id.imageTest);
		//��ȡImageView���и�ͼƬ
		drawAble=(ClipDrawable)imageView.getDrawable();
		
		handler.sendEmptyMessage(1);
		
	}

	@Override
	public boolean handleMessage(Message msg) {
		
		//�����и��level
		drawAble.setLevel(drawAble.getLevel()+200);
		//�ӳ�һ�뷢����Ϣ
		handler.sendEmptyMessageDelayed(1,1000);
		return false;
	}

}
