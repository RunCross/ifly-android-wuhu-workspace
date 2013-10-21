package com.example.subgroup;

import android.app.Activity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import android.widget.ViewSwitcher.ViewFactory;

public class ViewSwitchActivity extends Activity {

	private ViewSwitcher vs;
	private int screeno;
	private String[] screen1Contexts = {"lol","dota2","WAR"};
	private String[] screen2Contexts = {"QQ","Tao","AIDE"};	
	private LayoutInflater inflater;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.viewswitch);

		inflater = LayoutInflater.from(this);

		vs = (ViewSwitcher) findViewById(R.id.vswitch);
		// 1

		vs.setFactory(new ViewFactory() {

			@Override
			public View makeView() {
				View view = inflater.inflate(R.layout.gridview, null);
				
				return view;
			}
		});

		// 2
		TextView txt1 = (TextView) findViewById(R.id.page1);
		TextView txt2 = (TextView) findViewById(R.id.page2);

		txt1.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				screeno = 1;
				showNext(1);
			}
		});
		txt2.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				screeno = 2;
				showNext(2);
			}
		});
//		showNext();
	}

	private void showNext(int sid) {
		// setFactoryœ‡πÿ
		GridView gv =  (GridView) vs.getNextView();
		gv.setAdapter(adapter);
		
		vs.setInAnimation(this, android.R.anim.slide_in_left);
		vs.setOutAnimation(this, android.R.anim.slide_out_right);

		//
		vs.showNext();
	}
	
	private BaseAdapter adapter = new BaseAdapter() {
		
		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			View view = inflater.inflate(R.layout.gridviewitem, null);
			TextView txt = (TextView) view.findViewById(R.id.txtName);
			if(1 == screeno){
				txt.setText(screen1Contexts[position]);
			}
			else{
				txt.setText(screen2Contexts[position]);
			}
			return view;
		}
		
		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}
		
		@Override
		public Object getItem(int position) {
			if(1 == screeno){
				return screen1Contexts[position];
			}
			else {
				return screen2Contexts[position];
			}
		}
		
		@Override
		public int getCount() {
			if(1 == screeno){
				return screen1Contexts.length;
			}
			else {
				return screen2Contexts.length;
			}
		}
	};
}
