package com.runcross.adapter;

import java.util.List;
import java.util.zip.Inflater;

import com.runcross.adaptviewtest.R;
import com.runcross.pojo.ImageShow;

import android.content.Context;
import android.text.Layout;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView.FindListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class MySpinnerAdapter extends BaseAdapter {

	private Context context;
	
	private List<ImageShow> currentdatas;
	
	private LayoutInflater inflater;
	
	public MySpinnerAdapter(Context context , List<ImageShow> datas){
		this.context = context;
		this.currentdatas = datas;
		this.inflater = LayoutInflater.from(context);
	}
	
	@Override
	public int getCount() {
		return currentdatas.size();
	}

	@Override
	public Object getItem(int position) {
		// TODO Auto-generated method stub
		return currentdatas.get(position);
	}

	@Override
	public long getItemId(int position) {
		// TODO Auto-generated method stub
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {
		View spinnerView = inflater.inflate(R.layout.spinnerlayout, null);
		ImageView imageView = (ImageView) spinnerView.findViewById(R.id.imageHeader);
		TextView textView = (TextView) spinnerView.findViewById(R.id.imageText);
				
		ImageShow imageShow = currentdatas.get(position);
		
		imageView.setImageResource(imageShow.getImageId());
		textView.setText(imageShow.getText());
		
		
		return spinnerView;
	}

}
