package com.runcross.sdfilemanager.adapter;

import java.io.File;
import java.util.List;

import com.runcross.sdfilemanager.R;


import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class FileAdapter extends BaseAdapter {

	private List<File> files;
	
	private LayoutInflater inflater;
	
	private Context currentcontext;	
	
	public FileAdapter(List<File> files, Context currentcontext) {
		super();
		this.files = files;
		this.currentcontext = currentcontext;
		inflater = LayoutInflater.from(currentcontext);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return files.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return files.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View selfView = inflater.inflate(R.layout.fileitem, null);
		
		ImageView fileType = (ImageView) selfView.findViewById(R.id.fileType);
		TextView fileName = (TextView) selfView.findViewById(R.id.fileName);
		
		if(files.get(position).isDirectory()){
			fileType.setImageResource(R.drawable.generic_folder);
		}else {
			fileType.setImageResource(R.drawable.text_enriched);
		}
		fileName.setText(files.get(position).getName());
		return selfView;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
}

