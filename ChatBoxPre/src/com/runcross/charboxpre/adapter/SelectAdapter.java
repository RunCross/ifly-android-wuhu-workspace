package com.runcross.charboxpre.adapter;

import java.util.List;

import com.runcross.charboxpre.R;
import com.runcross.charboxpre.po.ChatMessage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;

public class SelectAdapter extends BaseAdapter {

private Context currentcontext;
	
	private List<Drawable> currentDates;
	
	private LayoutInflater inflater;
	
	public SelectAdapter(Context context,List<Drawable> list) {
		this.currentcontext = context;
		this.currentDates = list;
		inflater = LayoutInflater.from(currentcontext);
	}
	
	/**
	 * 返回list的数量
	 */
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return currentDates.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return currentDates.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View view = (ImageView) inflater.inflate(R.layout.selectview, null);
		
		ImageView iv = (ImageView) view.findViewById(R.id.usericon);
		iv.setImageDrawable(currentDates.get(position));
		
		
		return view;
	}

}
