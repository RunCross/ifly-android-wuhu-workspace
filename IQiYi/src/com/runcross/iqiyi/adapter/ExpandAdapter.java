package com.runcross.iqiyi.adapter;

import java.util.List;

import com.runcross.iqiyi.R;
import com.runcross.iqiyi.po.MovieInfo;
import com.runcross.iqiyi.po.MovieList;


import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView.OnGroupExpandListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RatingBar;
import android.widget.TextView;

public class ExpandAdapter extends BaseExpandableListAdapter {

	private Context context;
	private List<MovieList> datas;
	private LayoutInflater inflater;
	
	public ExpandAdapter(Context context,List<MovieList> list){
		this.context = context;
		this.datas = list;
		inflater  = LayoutInflater.from(context);
	}
	
	@Override
	public int getGroupCount() {
		// TODO Auto-generated method stub
		return datas.size();
	}

	@Override
	public int getChildrenCount(int groupPosition) {
		// TODO Auto-generated method stub
		return datas.get(groupPosition).getMovieList().size();
	}

	@Override
	public Object getGroup(int groupPosition) {
		// TODO Auto-generated method stub
		return datas.get(groupPosition);
	}

	@Override
	public Object getChild(int groupPosition, int childPosition) {
		// TODO Auto-generated method stub
		return datas.get(groupPosition).getMovieList().get(childPosition);
	}

	@Override
	public long getGroupId(int groupPosition) {
		// TODO Auto-generated method stub
		return groupPosition;
	}

	@Override
	public long getChildId(int groupPosition, int childPosition) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean hasStableIds() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public View getGroupView(int groupPosition, boolean isExpanded,
			View convertView, ViewGroup parent) {
		View movie  = inflater.inflate(R.layout.movie_list, null);
		TextView txtView = (TextView) movie.findViewById(R.id.movieName);
		txtView.setText(datas.get(groupPosition).getType());
		ImageView image = (ImageView) movie.findViewById(R.id.btnimg);
		if(datas.get(groupPosition).isDown()){
			image.setImageResource(R.drawable.list_indecator_button_down);
		}
		else{
			image.setImageResource(R.drawable.list_indecator_button);
		}
		return movie;
	}

	@Override
	public View getChildView(int groupPosition, int childPosition,
			boolean isLastChild, View convertView, ViewGroup parent) {
		View movie  = inflater.inflate(R.layout.movie_item, null);
		ImageView image = (ImageView) movie.findViewById(R.id.pre);
		RatingBar level = (RatingBar) movie.findViewById(R.id.level);
		TextView name = (TextView) movie.findViewById(R.id.movie_name);
		TextView size = (TextView) movie.findViewById(R.id.movie_size);
		TextView mark = (TextView) movie.findViewById(R.id.movie_mark);
		
		image.setImageResource(R.drawable.video_cover_default);
		name.setText(datas.get(groupPosition).getMovieList().get(childPosition).getName());
		level.setRating((float)datas.get(groupPosition).getMovieList().get(childPosition).getLevel() / 2);
		level.setIsIndicator(true);
		size.setText("¼¯Êý£º"+String.valueOf(datas.get(groupPosition).getMovieList().get(childPosition).getSize()));
		mark.setText(String.valueOf(datas.get(groupPosition).getMovieList().get(childPosition).getLevel())+"·Ö");
		return movie;
	}

	@Override
	public boolean isChildSelectable(int groupPosition, int childPosition) {
		
		
		return true;
	}



}
