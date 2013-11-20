package com.runcross.kugou.adapter;

import java.util.List;

import com.runcross.kugou.R;
import com.runcross.kugou.bean.LocalMusicItem;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class LocalMusicListAdapter extends BaseAdapter {

	private List<LocalMusicItem> musicList;
	private LayoutInflater inflater;
	private ViewHolder holder;
	
	public LocalMusicListAdapter(List<LocalMusicItem> musicList, Context context) {
		super();
		this.musicList = musicList;
		inflater = LayoutInflater.from(context);
	}
	@Override
	public int getCount() {
		return musicList.size();
	}


	@Override
	public Object getItem(int position) {
		return musicList.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}
	static class ViewHolder{
		TextView list_num;
		TextView list_name;
		TextView list_path;
	}
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		if(convertView == null){
			convertView = inflater.inflate(R.layout.local_list_item, null); 
		}
		holder = new ViewHolder();
		holder.list_num = (TextView) convertView.findViewById(R.id.local_num);
		holder.list_name = (TextView) convertView.findViewById(R.id.local_name);
		holder.list_path = (TextView) convertView.findViewById(R.id.local_path);
		holder.list_num.setText(String.valueOf(musicList.get(position).getNum()));
		holder.list_name.setText(musicList.get(position).getName());
		holder.list_path.setText(musicList.get(position).getPath());
		return convertView;
	}

}
