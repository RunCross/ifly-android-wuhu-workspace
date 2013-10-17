package com.runcross.adaptviewtest;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class GalleryActivity extends Activity {

	private int[] imageids = {R.drawable.baiyang,R.drawable.jinniu,R.drawable.mojie};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.gallery);
		
		Gallery gal = (Gallery) findViewById(R.id.gallery);
		
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
				// TODO Auto-generated method stub
				
			}
		});
		
	}

	private BaseAdapter adapter = new BaseAdapter() {
		
		@SuppressWarnings("deprecation")
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
			// TODO Auto-generated method stub
			return imageids[position];
		}
		
		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			return imageids.length;
		}
	};
	
}
