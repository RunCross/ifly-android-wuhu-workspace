package com.runcross.charboxpre.adapter;

import java.util.List;

import com.runcross.charboxpre.R;
import com.runcross.charboxpre.po.ChatMessage;


import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView.FindListener;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;

public class ChatAdapter extends BaseAdapter {

	private Context currentcontext;
	
	private List<ChatMessage> currentDates;
	
	private LayoutInflater inflater;
	
	public ChatAdapter(Context context,List<ChatMessage> list){
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
		return currentDates.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		//获取布局		
		View selfView = inflater.inflate(R.layout.chat_list, null);
		
		TextView txtTime = (TextView) selfView.findViewById(R.id.sendtiem);
		TextView txtMess = (TextView) selfView.findViewById(R.id.sendmessage);
		
		ChatMessage chatMessage = currentDates.get(position);
		
		txtTime.setText(String.valueOf(chatMessage.getCal()));
		txtTime.setGravity(android.view.Gravity.CENTER);
		txtMess.setText(chatMessage.getCont());		
		txtMess.setBackgroundResource(chatMessage.isSend()?R.drawable.chatfrom_bg_focused:R.drawable.chatto_bg_pressed);
		if(chatMessage.isSend()){
//			txtMess.setCompoundDrawablesWithIntrinsicBounds(null,R.drawable.tuanzib,null,null);
			txtMess.setCompoundDrawablesWithIntrinsicBounds(null,currentcontext.getResources().getDrawable(R.drawable.tuanzib),null,null);
			txtMess.setGravity(android.view.Gravity.RIGHT);
			
		}
		else{
			txtMess.setCompoundDrawablesWithIntrinsicBounds(null,null,currentcontext.getResources().getDrawable(R.drawable.tuanzib),null);
			txtMess.setGravity(android.view.Gravity.LEFT);
		}
		return selfView;
	}

}
