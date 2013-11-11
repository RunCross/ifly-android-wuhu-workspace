package com.runcross.stumangersimple.adapter;

import java.util.List;
import java.util.zip.Inflater;

import com.runcross.stumangersimple.R;
import com.runcross.stumangersimple.bean.UserInfo;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;

public class StuListPreAdapter extends BaseAdapter {

	private List<UserInfo> stus;
	private Context context;
	private LayoutInflater inflater;
	
	public StuListPreAdapter(List<UserInfo> stus, Context context) {
		super();
		this.stus = stus;
		this.context = context;
		inflater = LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		return stus.size();
	}

	@Override
	public Object getItem(int position) {
		return stus.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		
		View view = inflater.inflate(R.layout.stulistitem, null);
		
		CheckBox chk = (CheckBox) view.findViewById(R.id.list_chk);
		TextView name = (TextView) view.findViewById(R.id.list_stu_name);
		TextView sex = (TextView) view.findViewById(R.id.list_stu_sex);
		TextView tel = (TextView) view.findViewById(R.id.list_stu_tel);
		
		name.setText(stus.get(position).getUname());
		sex.setText(stus.get(position).getSex());
		tel.setText(stus.get(position).getTel());
		chk.setChecked(stus.get(position).isChk());
		
		final int pos = position;
		
		chk.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				stus.get(pos).setChk(isChecked);
			}
		});
		
		return view;
	}

}
