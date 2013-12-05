//package com.firstgroup.iflytekdaily.adapter;
//
//import java.util.ArrayList;
//
//import com.firstgroup.iflytekdaily.R;
//import com.firstgroup.iflytekdaily.bean.Contacts;
//
//import android.app.Activity;
//import android.content.Context;
//import android.graphics.Color;
//import android.view.Gravity;
//import android.view.LayoutInflater;
//import android.view.View;
//import android.view.ViewGroup;
//import android.widget.BaseAdapter;
//import android.widget.LinearLayout;
//import android.widget.SectionIndexer;
//import android.widget.TextView;
//public class ContactAdapter extends BaseAdapter implements SectionIndexer {
//	private ArrayList<Contacts> list;
//	private Context context;
//	public ContactAdapter(Context _context, ArrayList<Contacts> arr) {
//		list = arr;
//		context = _context;
//	}
//	public int getCount() {
//		return list.size();
//	}
//	public Object getItem(int arg0) {
//		return list.get(arg0);
//	}
//	public long getItemId(int arg0) {
//		return 0;
//	}
//	
//	
//	public View getView(int position, View v, ViewGroup parent) {
//		LayoutInflater inflate = ((Activity) context).getLayoutInflater();
//		View view = (View) inflate.inflate(R.layout.contacts_item, null);
//		LinearLayout header = (LinearLayout) view.findViewById(R.id.section);
//		String label = list.get(position).getName();
//		char firstChar = label.toUpperCase().charAt(0);
//		if (position == 0) {
//			setSection(header, label);
//		} else {
//			String preLabel = list.get(position - 1);
//			char preFirstChar = preLabel.toUpperCase().charAt(0);
//			if (firstChar != preFirstChar) {
//				setSection(header, label);
//			} else {
//				header.setVisibility(View.GONE);
//			}
//		}
//		TextView textView = (TextView) view.findViewById(R.id.textView);
//		textView.setText(label);
//		return view;
//	}
//	private void setSection(LinearLayout header, String label) {
//		TextView text = new TextView(context);
//		header.setBackgroundColor(0xffaabbcc);
//		text.setTextColor(Color.WHITE);
//		text.setText(label.substring(0, 1).toUpperCase());
//		text.setTextSize(20);
//		text.setPadding(5, 0, 0, 0);
//		text.setGravity(Gravity.CENTER_VERTICAL);
//		header.addView(text);
//	}
//	public int getPositionForSection(int section) {
//		if (section == 35) {
//			return 0;
//		}
//		for (int i = 0; i < list.size(); i++) {
//			String l = list.get(i);
//			char firstChar = l.toUpperCase().charAt(0);
//			if (firstChar == section) {
//				return i;
//			}
//		}
//		return -1;
//	}
//	public int getSectionForPosition(int arg0) {
//		return 0;
//	}
//	public Object[] getSections() {
//		return null;
//	}
//}
