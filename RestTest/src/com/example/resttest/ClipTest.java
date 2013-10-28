package com.example.resttest;

import android.app.Activity;
import android.graphics.drawable.ClipDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
/**
 * 动态的显示切割后的图片
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
		//获取ImageView的切割图片
		drawAble=(ClipDrawable)imageView.getDrawable();
		
		handler.sendEmptyMessage(1);
		
	}

	@Override
	public boolean handleMessage(Message msg) {
		
		//设置切割的level
		drawAble.setLevel(drawAble.getLevel()+200);
		//延迟一秒发送消息
		handler.sendEmptyMessageDelayed(1,1000);
		return false;
	}

}
