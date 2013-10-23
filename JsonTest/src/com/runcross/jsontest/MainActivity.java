package com.runcross.jsontest;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.jar.JarEntry;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.xml.sax.InputSource;

import android.os.Bundle;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;

public class MainActivity extends Activity {

	private LayoutInflater inflater;
	private JSONArray jsonArray;
	
	private ListView listView;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		listView = (ListView) findViewById(R.id.list);
		
		inflater = LayoutInflater.from(MainActivity.this);
		
		StringBuffer sb = null;

		try {
			InputStream ins = getResources().openRawResource(R.raw.list);
			BufferedReader br = new BufferedReader(new InputStreamReader(ins,
					"GBK"));
			sb = new StringBuffer();
			String string = new String();
			while ((string = br.readLine()) != null) {
				sb.append(string);
			}
			jsonArray = new JSONArray(sb.toString());
			br.close();
			ins.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		Button btn = (Button) findViewById(R.id.golist);
		btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				listView.setAdapter(adapter);
			}
		});

	}

	private BaseAdapter adapter = new BaseAdapter() {

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			JSONObject object;
			try {
				object = jsonArray.getJSONObject(position);
				int id = object.getInt("id");
				String name = object.getString("name");
				String sex = object.getString("sex");

				convertView = inflater.inflate(R.layout.listviewitem, null);
				TextView tvid = (TextView) convertView.findViewById(R.id.num);
				TextView tvname = (TextView) convertView.findViewById(R.id.name);
				TextView tvsex = (TextView) convertView.findViewById(R.id.gender);
				
				tvid.setText(String.valueOf(id));
				tvname.setText(name);
				tvsex.setText(sex);
				

			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return convertView;
		}

		@Override
		public long getItemId(int position) {
			// TODO Auto-generated method stub
			return position;
		}

		@Override
		public Object getItem(int position) {
			// TODO Auto-generated method stub
			try {
				return jsonArray.get(position);
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return null;
		}

		@Override
		public int getCount() {
			// TODO Auto-generated method stub
			return jsonArray.length();
		}
	};
}
