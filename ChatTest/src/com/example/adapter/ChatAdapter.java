package com.example.adapter;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.SimpleFormatter;


import com.example.chattest.R;
import com.example.pojo.Message;



import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.Spinner;
import android.widget.TextView;

public class ChatAdapter extends BaseAdapter {
	private Context currentcontext;
	private List<Message> currentDatas;
	// 获取布局的工具类
	private LayoutInflater inflater;

	public ChatAdapter(Context context, List<Message> list) {
		currentcontext = context;
		currentDatas = list;
		inflater = LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return currentDatas.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return currentDatas.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View selfView;

		// 获取布局

		TextView text;
		TextView date;
		Message message = currentDatas.get(position);

		if (message.getId() == 1) {
			selfView = inflater.inflate(R.layout.messageright, null);
			text = (TextView) selfView.findViewById(R.id.tv_chatcontent1);
			date = (TextView) selfView.findViewById(R.id.sendTime1);

		} else {
			selfView = inflater.inflate(R.layout.messageleft, null);
			text = (TextView) selfView.findViewById(R.id.tv_chatcontent);
			date = (TextView) selfView.findViewById(R.id.tv_sendtime);
		}

		text.setText(message.getTxt());

		date.setText(message.getTime());
		// 布局和数据匹配

		return selfView;

	}

}
