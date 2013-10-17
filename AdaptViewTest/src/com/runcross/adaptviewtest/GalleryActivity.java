package com.runcross.adaptviewtest;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

@SuppressWarnings("deprecation")
public class GalleryActivity extends Activity implements Callback{

	private int[] imageids = {R.drawable.baiyang,R.drawable.jinniu,R.drawable.mojie};
	
	private Handler handler;
	
	private int currenIndex = 0;
	
	private Gallery gal;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.gallery);
		
		handler = new Handler(this);
		
		gal = (Gallery) findViewById(R.id.gallery);
		
		gal.setAdapter(adapter);
		
		final ImageView imageBig = (ImageView) findViewById(R.id.xianxi);
		
		gal.setOnItemSelectedListener(new OnItemSelectedListener() {

			@Override
			public void onItemSelected(AdapterView<?> parent, View view,
					int position, long id) {
				imageBig.setImageResource((int)id);
			}

			@Override
			public void onNothingSelected(AdapterView<?> parent) {
				
			}
		});
		
		handler.sendEmptyMessage(1);
//		handler.removeMessages(1);
		
	}

	private BaseAdapter adapter = new BaseAdapter() {
		
		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			
			ImageView iv = new ImageView(GalleryActivity.this);
			iv.setImageResource(imageids[position]);
			iv.setLayoutParams(new Gallery.LayoutParams(380, 515));
			iv.setScaleType(ScaleType.FIT_XY);
			
			return iv;
		}
		
		@Override
		public long getItemId(int position) {
			return imageids[position];
		}
		
		@Override
		public Object getItem(int position) {
			return null;
		}
		
		@Override
		public int getCount() {
			return imageids.length;
		}
	};

	@Override
	public boolean handleMessage(Message msg) {
		if(currenIndex >= imageids.length) {
			currenIndex = 0;
		}
		gal.setSelection(currenIndex);
		++currenIndex;
		handler.sendEmptyMessageDelayed(1, 1500);
		return false;
	}
	
}
