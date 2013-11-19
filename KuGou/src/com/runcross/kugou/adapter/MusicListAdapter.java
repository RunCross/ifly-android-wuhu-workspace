package com.runcross.kugou.adapter;

import java.util.List;

import com.runcross.kugou.R;
import com.runcross.kugou.bean.Music;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageButton;
import android.widget.TextView;

public class MusicListAdapter extends BaseAdapter {

	private List<Music> musicList;
	private LayoutInflater inflater;
	private Context context;
	private ViewHolder holder;
	
	public MusicListAdapter(List<Music> musicList, Context context) {
		super();
		this.musicList = musicList;
		this.context = context;
		inflater = LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return musicList.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return 0;
	}

	class ViewHolder{
		TextView list_num;
		TextView lsit_name;
	}
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		if(convertView == null){
			convertView = inflater.inflate(R.layout.play_list_item, null); 
		}
		holder = new ViewHolder();
		holder.list_num = (TextView) convertView.findViewById(R.id.list_num);
		holder.lsit_name = (TextView) convertView.findViewById(R.id.list_musci_name);
		holder.list_num.setText(String.valueOf(position));
		holder.lsit_name.setText(musicList.get(position).getName());
		return convertView;
	}

}
