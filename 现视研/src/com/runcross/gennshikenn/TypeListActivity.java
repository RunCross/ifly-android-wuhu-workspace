package com.runcross.gennshikenn;

import java.util.ArrayList;
import java.util.List;

import com.example.gennshikenn.R;

import android.app.ListActivity;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.ListView;
import android.widget.TextView;

public class TypeListActivity extends ListActivity {

	private ListView typeList;

	private List<String> cont;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		typeList = getListView();

		// 添加头部 图片
		ImageView typeTitle = new ImageView(TypeListActivity.this);
		typeTitle.setImageResource(R.drawable.bili_main_banner);
		typeTitle.setScaleType(ScaleType.FIT_XY);
		typeTitle.setLayoutParams(new ListView.LayoutParams(
				ListView.LayoutParams.MATCH_PARENT,
				ListView.LayoutParams.WRAP_CONTENT));
		typeList.addHeaderView(typeTitle);

		// 添加list内容
		// ArrayAdapter<String> adapter = new
		// ArrayAdapter<String>(TypeListActivity.this,
		// android.R.layout.simple_list_item_1, new
		// String[]{"acfun","bilibili"});

		initCont();

		setListAdapter(adapter);

	}

	private void initCont() {
		cont = new ArrayList<String>();
		cont.add("新番连载");
		cont.add("合集");
		cont.add("动画");
		cont.add("娱乐");
		cont.add("音乐");
		cont.add("游戏");
		cont.add("科学技术");
	}

	private BaseAdapter adapter = new BaseAdapter() {

		private LayoutInflater inflater;

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {

			inflater = LayoutInflater.from(TypeListActivity.this);
			View myView = inflater.inflate(R.layout.typeitem, null);

			ImageView imgA = (ImageView) myView.findViewById(R.id.typeExampleA);
			ImageView imgB = (ImageView) myView.findViewById(R.id.typeExampleB);
			TextView cot = (TextView) myView.findViewById(R.id.typeName);

			imgA.setImageResource(R.drawable.examplea);
			imgB.setImageResource(R.drawable.exampleb);
			cot.setText(cont.get(position));
			if(0 == position % 2 ){
				cot.setBackgroundResource(R.drawable.bili_tab_label_bg_selected);
			}
			else{
				cot.setBackgroundResource(R.drawable.bili_tab_label_bg_unselected);
			}

			return myView;
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			return cont.get(position);
		}

		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			return cont.size();
		}
	};
}