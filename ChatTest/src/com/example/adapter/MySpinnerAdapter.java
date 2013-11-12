package com.example.adapter;

import java.util.List;


import com.example.chattest.R;
import com.example.pojo.ImageShow;



import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class MySpinnerAdapter extends BaseAdapter {
	private Context context;
	private List<ImageShow> currentdatas;
	private LayoutInflater inflater;

	public MySpinnerAdapter(Context context, List<ImageShow> datas) {
	
	this.context=context;
	this.currentdatas=datas;
	this.inflater=LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return currentdatas.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return currentdatas.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View converView, ViewGroup parent) {
		// TODO Auto-generated method stub
		View spinnerView=inflater.inflate(R.layout.spinneritemlayout, null);
		ImageView imageViewHeader=(ImageView)spinnerView.findViewById(R.id.imageHeader);
		TextView textView=(TextView)spinnerView.findViewById(R.id.imageText);
		
		ImageShow imageShow=currentdatas.get(position);
		imageViewHeader.setImageResource(imageShow.getImageId());
		textView.setText(imageShow.getImageText());
		
		return spinnerView;
	}

}
