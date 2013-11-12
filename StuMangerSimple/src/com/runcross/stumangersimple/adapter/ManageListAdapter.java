package com.runcross.stumangersimple.adapter;

import java.util.List;

import com.runcross.stumangersimple.bean.UserInfo;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;

public class ManageListAdapter extends BaseAdapter {

	private List<UserInfo> users;
	private Context context;
	private LayoutInflater inflater;
	private float appeatDis = 15;

	public ManageListAdapter(List<UserInfo> users, Context context) {
		super();
		this.users = users;
		this.context = context;
		inflater = LayoutInflater.from(context);
	}
	
	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return users.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return users.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		
		return null;
	}

}
