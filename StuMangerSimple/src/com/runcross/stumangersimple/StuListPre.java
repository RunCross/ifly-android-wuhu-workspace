package com.runcross.stumangersimple;

import java.util.ArrayList;
import java.util.List;

import com.runcross.stumangersimple.adapter.StuListPreAdapter;
import com.runcross.stumangersimple.bean.UserInfo;

import android.app.Activity;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ListView;

public class StuListPre extends Activity {

	private ListView stuList;
	private List<UserInfo> stus;
	private View header ;
	private CheckBox allChk;
	
	private ImageView titleBack;
	private EditText searchCont;
	private ImageButton search;
	private ImageButton manager;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.stulist);
		
		initTitle();
		stuList = (ListView) findViewById(R.id.stulist);
		stus = new ArrayList<UserInfo>();
		
		initAdapter();
		
		StuListPreAdapter adapter = new StuListPreAdapter(stus, StuListPre.this);
		header = LayoutInflater.from(this).inflate(R.layout.list_title, null);
		initListTitle();
		stuList.addHeaderView(header);
		stuList.setAdapter(adapter);
		
		
		
	}

	private void initListTitle() {
		allChk = (CheckBox) findViewById(R.id.list_allchk);
		allChk.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
			}
		});
	}

	private void initTitle() {
		titleBack = (ImageView) findViewById(R.id.title_back);
		searchCont = (EditText) findViewById(R.id.searchCont);
		search = (ImageButton) findViewById(R.id.search);
		manager = (ImageButton) findViewById(R.id.manager);
		
		search.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				
			}
		});
		
		manager.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				
			}
		});
		
	}

	private void initAdapter() {
		stus.clear();
		ContentResolver cr = getContentResolver();
		Cursor cursor = cr.query(
				Uri.parse("content://com.runcross.stumanager.go/get/mess/users/part"), null,
				null, null, null);
		while (cursor.moveToNext()) {
			UserInfo user = new UserInfo();
			user.setUid(cursor.getInt(cursor.getColumnIndex("uid")));
			user.setUname(cursor.getString(cursor.getColumnIndex("uname")));
			System.out.println(cursor.getColumnIndex("sex"));
			if (cursor.getString(cursor.getColumnIndex("sex")) ==null){
				user.setSex("?");
			}else{
				user.setSex(cursor.getString(cursor.getColumnIndex("sex")));
			}if (cursor.getString(cursor.getColumnIndex("sex")) ==null){
				user.setTel("?");
			}else{
				user.setTel(cursor.getString(cursor.getColumnIndex("tel")));
			}
			user.setChk(false);
//			user.setCont(cursor.getString(cursor.getColumnIndex("cont")));
//			user.setMz(cursor.getString(cursor.getColumnIndex("mz")));
			stus.add(user);
		}
		cursor.close();
	}
}
