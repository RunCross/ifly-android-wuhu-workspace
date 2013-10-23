package com.example.fragementtest;

import android.app.Activity;
import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.TextView;

public class NewsContentFragement extends Fragment {
	
	private String content;

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
		String strContent=getArguments().getString("content");
		View view = inflater.inflate(R.layout.newscontent, null);
		TextView txtView=(TextView) view.findViewById(R.id.txtContent);
		txtView.setText(strContent);
		return view;
	}
	
}
