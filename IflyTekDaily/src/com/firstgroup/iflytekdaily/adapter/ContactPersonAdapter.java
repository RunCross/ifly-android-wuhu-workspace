package com.firstgroup.iflytekdaily.adapter;

import java.util.List;

import com.firstgroup.iflytekdaily.R;
import com.firstgroup.iflytekdaily.bean.Contacts;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView.FindListener;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class ContactPersonAdapter extends BaseAdapter {

	private List<Contacts> contacts;
	private LayoutInflater inflater;
	private inner temp;
	
	public ContactPersonAdapter(List<Contacts> contacts,Context context) {		
		super();
		this.contacts = contacts;
		inflater = LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return contacts.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return contacts.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	static class inner{
		TextView name;
		TextView tel;
	}
	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		if(convertView == null){
			convertView = inflater.inflate(R.layout.contacts_item, null);
		}
		temp = new inner();
		temp.name = (TextView) convertView.findViewById(R.id.contact_name);
		temp.tel = (TextView) convertView.findViewById(R.id.contact_tel);
		
		temp.name.setText(contacts.get(position).getName());
		temp.tel.setText(contacts.get(position).getTel());
		return convertView;
	}

}
