package com.runcross.adapter;

import java.util.List;

import com.runcross.adaptviewtest.R;
import com.runcross.pojo.Student;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView.FindListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;

public class MyAdapter extends BaseAdapter {

	private Context currentcontext;
	
	private List<Student> currentDates;
	
	private LayoutInflater inflater;
	
	public MyAdapter(Context context,List<Student> list){
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
		return null;
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		//获取布局		
		View selfView = inflater.inflate(R.layout.simpleadapterlayout, null);
		
		TextView txtId = (TextView) selfView.findViewById(R.id.textId);
		TextView txtName = (TextView) selfView.findViewById(R.id.textName);
		TextView txtGen = (TextView) selfView.findViewById(R.id.textGender);
		CheckBox checkBox = (CheckBox) selfView.findViewById(R.id.check);
		
		Student student = currentDates.get(position);
		
		txtId.setText(String.valueOf(student.getId()));
		txtName.setText(student.getName());
		txtGen.setText(student.getGender());
		checkBox.setChecked(student.isChecked());	
		
		
		return selfView;
	}

}
