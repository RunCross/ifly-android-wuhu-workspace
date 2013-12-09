package com.firstgroup.iflytekstudaily;

import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import com.firstgroup.iflytekstudaily.util.Img2Str;
import com.firstgroup.iflytekstudaily.util.network.HttpClientUtil;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.widget.ImageView;
import android.app.Activity;
import android.graphics.Bitmap;

public class MainActivity extends Activity implements Callback{
	private ImageView img;
	private Bitmap bmp;
	private Handler hand;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		hand = new Handler(this);
		img = (ImageView) findViewById(R.id.test);
		
		initImg();
		
	}

	private void initImg() {
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				HashMap<String, Object> values = new HashMap<String, Object>();
				values.put("userId", "OB83C5TJGF5MI4NBNQN51IHN318FJ7");
				values.put("token", "OB83C5TJGF5MI4NBNQN51IHN318FJ7#Ur70iMg1F/6sLKcy8EhR7SJs4+dZ9xR1R0RYe7Z40DblC6rvmMj4uJF9y256iLt4NnM4p0sVaCETiV+eNUBbVP1oWQcgOkuVvfbL7tRL5ugnBreG9hyt3ebO8GsJH2sdpLJysNrlVz/81Yx4OiOegCI+us5q9uoVM0Gh72b9/4A=");
				JSONObject ob = null;
				try {
					ob = new JSONObject(HttpClientUtil.netResponse("GetStudentInfoByUSId", values));
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				try {
					bmp = Img2Str.decode(ob.getString("Picture"));
					hand.sendEmptyMessage(1);
				} catch (JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				
			}
		}).start();
	}

	@Override
	public boolean handleMessage(Message msg) {
		img.setImageBitmap(bmp);
		System.out.println(img.getWidth()+"-"+img.getHeight());
		System.out.println(Img2Str.code(bmp));
		
		return false;
	}
	
	
}
