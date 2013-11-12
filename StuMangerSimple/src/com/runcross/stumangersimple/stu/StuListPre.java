package com.runcross.stumangersimple.stu;

import java.util.ArrayList;
import java.util.List;

import com.runcross.stumangersimple.R;
import com.runcross.stumangersimple.adapter.StuListPreAdapter;
import com.runcross.stumangersimple.bean.StuInfo;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.GestureDetector.OnGestureListener;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;

public class StuListPre extends Activity implements StuListPreAdapter.GoTel{

	private ListView stuList;
	private List<StuInfo> stus;
	private View header;
	private CheckBox allChk;

//	private ImageView titleBack;
	private EditText searchCont;
	private ImageButton search;
	private ImageButton manager;
	private StuListPreAdapter adapter;

	private LinearLayout pop_add;
	private LinearLayout pop_del;
	private LinearLayout pop_refresh;
	private LinearLayout pop_manager;
	private View popupWindow;
	private PopupWindow popWin;
	
@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.stu_list);

//		gdetector = new GestureDetector(StuListPre.this);
		initTitle();
		stuList = (ListView) findViewById(R.id.stulist);
		stus = new ArrayList<StuInfo>();

		initAdapter();

		adapter = new StuListPreAdapter(stus, StuListPre.this);
		header = LayoutInflater.from(this).inflate(R.layout.stu_list_title, null);
		initListTitle();
		stuList.addHeaderView(header);
		stuList.setAdapter(adapter);
		stuList.setOnItemLongClickListener(new OnItemLongClickListener() {

			@Override
			public boolean onItemLongClick(AdapterView<?> parent, View view,
					int position, long id) {
				Bundle bund = new Bundle();
				System.out.println("position"+position+" "+stus.get(position-1).getBirthday());
				bund.putSerializable("stu", stus.get(position-1));
				Intent intent = new Intent(StuListPre.this, StuUpdate.class);
				intent.putExtras(bund);
				startActivity(intent);
				return false;
			}
		});

	}

	/*
	 * 初始化list的头
	 */
	private void initListTitle() {
		allChk = (CheckBox) header.findViewById(R.id.list_allchk);
		allChk.setOnCheckedChangeListener(new OnCheckedChangeListener() {

			@Override
			public void onCheckedChanged(CompoundButton buttonView,
					boolean isChecked) {

				for (StuInfo stu : stus) {
					stu.setChk(isChecked);
				}
				adapter.notifyDataSetChanged();
			}
		});
	}

	/*
	 * 初始化标题栏
	 */
	private void initTitle() {
//		titleBack = (ImageView) findViewById(R.id.title_back);
		searchCont = (EditText) findViewById(R.id.searchCont);
		search = (ImageButton) findViewById(R.id.search);
		manager = (ImageButton) findViewById(R.id.manager);

		/*
		 * 搜索框
		 */
		search.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {

			}
		});

		/*
		 * 管理按钮
		 */
		manager.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				if (getPopupWindowInstance()) {
					popWin.showAsDropDown(v);
				}
			}
		});

	}

	/**
	 * 初始化 popWin
	 */
	private void initPopuptWindow() {
		LayoutInflater layoutInflater = LayoutInflater.from(this);
		if(popupWindow == null){
			popupWindow = layoutInflater.inflate(R.layout.popmanager, null);			
		}

		// 创建一个PopupWindow
		// 参数1：contentView 指定PopupWindow的内容
		// 参数2：width 指定PopupWindow的width
		// 参数3：height 指定PopupWindow的height
		popWin = new PopupWindow(popupWindow, 360, 380);

		if (pop_add == null) {
			pop_add = (LinearLayout) popupWindow.findViewById(R.id.manager_add);
			pop_del = (LinearLayout) popupWindow.findViewById(R.id.manager_del);
			pop_refresh = (LinearLayout) popupWindow
					.findViewById(R.id.manager_refresh);
			pop_manager = (LinearLayout) popupWindow
					.findViewById(R.id.manager_manager);

			initPopLinearListener();

		}

	}

	/*
	 * 初始化pop里的监听
	 */
	private void initPopLinearListener() {
		pop_add.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent intent = new Intent(StuListPre.this, StuAdd.class);
				startActivity(intent);
				popWin.dismiss();
				popWin = null;
			}
		});
		pop_del.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				
			}
		});

		pop_refresh.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				initAdapter();
				adapter.notifyDataSetChanged();				
				popWin.dismiss();
				popWin = null;
			}
		});

		pop_manager.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {

			}
		});
	}

	/*
	 * 获取PopupWindow实例
	 */
	private boolean getPopupWindowInstance() {
		if (null != popWin) {
			popWin.dismiss();
			popWin = null;
			return false;
		} else {
			initPopuptWindow();
			return true;
		}

	}

	/*
	 * 初始化listView 的Adapter
	 */
	private void initAdapter() {
		stus.clear();
		ContentResolver cr = getContentResolver();
		Cursor cursor = cr
				.query(Uri
						.parse("content://com.runcross.stumanager.go/get/mess/stus"),
						null, null, null, null);
		while (cursor.moveToNext()) {
			StuInfo user = new StuInfo();
			user.setUid(cursor.getInt(cursor.getColumnIndex("uid")));
			user.setUname(cursor.getString(cursor.getColumnIndex("uname")));
			System.out.println(cursor.getColumnIndex("sex"));
			if (cursor.getString(cursor.getColumnIndex("sex")) == null) {
				user.setSex("?");
			} else {
				user.setSex(cursor.getString(cursor.getColumnIndex("sex")));
			}
			if (cursor.getString(cursor.getColumnIndex("sex")) == null) {
				user.setTel("?");
			} else {
				user.setTel(cursor.getString(cursor.getColumnIndex("tel")));
			}
			user.setMz(cursor.getString(cursor.getColumnIndex("mz")));
			user.setBirthday(cursor.getString(cursor.getColumnIndex("birthday")));
			user.setCont(cursor.getString(cursor.getColumnIndex("cont")));
			user.setStuNum(cursor.getString(cursor.getColumnIndex("stuNum")));
			user.setPhoto(cursor.getString(cursor.getColumnIndex("photo")));
			user.setChk(false);
			// user.setCont(cursor.getString(cursor.getColumnIndex("cont")));
			// user.setMz(cursor.getString(cursor.getColumnIndex("mz")));
			stus.add(user);
		}
		cursor.close();
	}

	@Override
	public void gotel(String telNum,int type) {
		switch(type){
		case 1:
			Uri uriPhone=Uri.parse("tel:"+telNum);
			Intent intent2 = new Intent(Intent.ACTION_CALL,uriPhone);
			startActivity(intent2);
			break;
		case 2:
			Uri uriMassage = Uri.parse("smsto:"+telNum);
			Intent intent3 = new Intent(Intent.ACTION_SENDTO, uriMassage);            
			startActivity(intent3);
			break;
		}
	}
	
}
