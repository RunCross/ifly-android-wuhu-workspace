package com.runcross.xmlreader;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.xml.sax.InputSource;
import org.xmlpull.v1.XmlPullParserException;

import com.runcross.xmlreader.bean.BookInfo;
import com.runcross.xmlreader.parse.MainParase;
import com.runcross.xmlreader.parse.PraseXml;

import android.os.Bundle;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class MainActivity extends Activity {

	private ListView bookList;
	private InputStream in;
	private List<BookInfo> books = new ArrayList<BookInfo>();
	private LayoutInflater inflater ;
//	private Resources res= new 
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		inflater = LayoutInflater.from(MainActivity.this);
		bookList = (ListView) findViewById(R.id.bookList);
		bookList.setAdapter(adapter);
		
		
	}
	
	private BaseAdapter adapter = new BaseAdapter() {
		private Inner inner;
		
		class Inner{
			TextView name;
			TextView date;
			TextView ins;
		}
		
		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			
			if(convertView == null){
				convertView = inflater.inflate(R.layout.book_item, null);
			}
			inner = new Inner();
			inner.name = (TextView) convertView.findViewById(R.id.name);
			inner.date = (TextView) convertView.findViewById(R.id.date);
			inner.ins = (TextView) convertView.findViewById(R.id.instr);
			
			inner.name.setText(books.get(position).getName());
			inner.date.setText(books.get(position).getDate());
			inner.ins.setText(books.get(position).getInstr());
			
			return convertView;
		}
		
		@Override
		public long getItemId(int position) {
			return position;
		}
		
		@Override
		public Object getItem(int position) {
			return books.get(position);
		}
		
		@Override
		public int getCount() {
			return books.size();
		}
	};

	public void onClick(View view) throws IOException{
		switch(view.getId()){
		case R.id.dom:
			in = getResources().getAssets().open("books.xml");		
			
			//刷新列表
	        books =new PraseXml().Dom(in);	        
	        adapter.notifyDataSetChanged();
			break;
		case R.id.sax:
			InputSource insource=new InputSource(getResources().getAssets().open("books.xml"));
			//刷新列表
			books=new PraseXml().Sax(insource);			
	        adapter.notifyDataSetChanged();
			break;
		case R.id.pull:
			in = getResources().getAssets().open("books.xml");
			try {
				books = new PraseXml().Pull(in);
			} catch (XmlPullParserException e) {
				e.printStackTrace();
			}
			adapter.notifyDataSetChanged();
			break;
		case R.id.maindom:
			in = getResources().getAssets().open("main.xml");	
			
			new MainParase().Dom(in);
			
//			try {
//				new MainParase().Pull(in);
//			} catch (XmlPullParserException e) {
//				e.printStackTrace();
//			}
			break;
		}
	}
	
}
