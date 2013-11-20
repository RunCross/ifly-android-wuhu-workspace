package com.runcross.kugou;

import java.util.ArrayList;
import java.util.List;

import com.runcross.kugou.adapter.LocalMusicListAdapter;
import com.runcross.kugou.bean.LocalMusicItem;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.provider.MediaStore;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;

public class LocalMusicList extends Activity {

	private ListView localList;
	
	private LocalMusicListAdapter adapter;
	
	private List<LocalMusicItem> list;
	
	private TextView title;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.local_list);
		
		
		
		
		localList = (ListView) findViewById(R.id.localList);
		title = (TextView) findViewById(R.id.title);
		title.setText("按文件夹查看");
		 ContentResolver cr = getContentResolver();
		 Cursor cursor = cr.query(
				 MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, 
				 new String[]{"substr(_data,0,length(_data)-length(_display_name))  as folder"
				 ," count(*) as count ",
				 },
				 " 0==0)  group by  (folder", null, null);
		 list = new ArrayList<LocalMusicItem>();
		 while(cursor.moveToNext()){
			 LocalMusicItem local = new LocalMusicItem();
			 local.setPath(cursor.getString(0));
			 local.setNum(cursor.getInt(1));
			 String temp[] = cursor.getString(0).split("/");
			 local.setName(temp[temp.length-1]);
			 list.add(local);
		 }
		 adapter = new LocalMusicListAdapter(list, LocalMusicList.this);
		 localList.setAdapter(adapter);
		 localList.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				Intent intent = new Intent(LocalMusicList.this, LocalMusicPlay.class);
				intent.putExtra("music",list.get(position));
				startActivity(intent);
//				AllActivity.addView(intent);
			}
		});
	}
	
}
