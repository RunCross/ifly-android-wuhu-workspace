package com.example.fragementtest;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class SecondF extends Fragment {

//	public interface ItemClick
//	{
//		public void onItemClick(String content);
//
//		
//	}
	
	@Override
	public void onAttach(Activity activity) {
		super.onAttach(activity);
	}

	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
	}

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View view = inflater.inflate(R.layout.newslist, null);
		ListView listView = (ListView) view.findViewById(R.id.newsList);
		final String [] news=new String[] { "新闻", "科技", "娱乐"};
		ArrayAdapter<String> arrAdapter = new ArrayAdapter<String>(
				getActivity(), android.R.layout.simple_list_item_1,
				news);
		listView.setAdapter(arrAdapter);
//		final ItemClick click=(ItemClick) getActivity();
//		listView.setOnItemClickListener(new OnItemClickListener() {
//
//			@Override
//			public void onItemClick(AdapterView<?> arg0, View arg1, int arg2,
//					long arg3) {
//				click.onItemClick(news[arg2]);
//			}
//		});
		return view;
	}

}
