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
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;

public class StuListPre extends Activity {

	private ListView stuList;
	private List<UserInfo> stus;
	private View header;
	private CheckBox allChk;

	private ImageView titleBack;
	private EditText searchCont;
	private ImageButton search;
	private ImageButton manager;
	private StuListPreAdapter adapter;

	private LinearLayout pop_add;
	private LinearLayout pop_del;
	private LinearLayout pop_refresh;
	private LinearLayout pop_manager;

	private PopupWindow popWin;

	// ��Ļ��width
	// private int mScreenWidth;
	// // ��Ļ��height
	// private int mScreenHeight;
	// // PopupWindow��width
	// private int mPopupWindowWidth;
	// // PopupWindow��height
	// private int mPopupWindowHeight;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.stulist);

		initTitle();
		stuList = (ListView) findViewById(R.id.stulist);
		stus = new ArrayList<UserInfo>();

		initAdapter();

		adapter = new StuListPreAdapter(stus, StuListPre.this);
		header = LayoutInflater.from(this).inflate(R.layout.list_title, null);
		initListTitle();
		stuList.addHeaderView(header);
		stuList.setAdapter(adapter);

	}

	/*
	 * ��ʼ��list��ͷ
	 */
	private void initListTitle() {
		allChk = (CheckBox) header.findViewById(R.id.list_allchk);
		allChk.setOnCheckedChangeListener(new OnCheckedChangeListener() {

			@Override
			public void onCheckedChanged(CompoundButton buttonView,
					boolean isChecked) {

				for (UserInfo stu : stus) {
					stu.setChk(isChecked);
				}
				adapter.notifyDataSetChanged();
			}
		});
	}

	/*
	 * ��ʼ��������
	 */
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
				if (getPopupWindowInstance()) {
					popWin.showAsDropDown(v);
				}
			}
		});

	}

	/**
	 * ��ʼ�� popWin
	 */
	private void initPopuptWindow() {
		LayoutInflater layoutInflater = LayoutInflater.from(this);
		View popupWindow = layoutInflater.inflate(R.layout.popmanager, null);

		// ����һ��PopupWindow
		// ����1��contentView ָ��PopupWindow������
		// ����2��width ָ��PopupWindow��width
		// ����3��height ָ��PopupWindow��height
		popWin = new PopupWindow(popupWindow, 360, 380);

		// ��ȡ��Ļ��PopupWindow��width��height
		// mScreenWidth = getWindowManager().getDefaultDisplay().getWidth();
		// mScreenWidth = getWindowManager().getDefaultDisplay().getHeight();
		// mPopupWindowWidth = popWin.getWidth();
		// mPopupWindowHeight = popWin.getHeight();
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
	 * ��ʼ��pop��ļ���
	 */
	private void initPopLinearListener() {
		pop_add.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {

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
				adapter.notifyDataSetChanged();
			}
		});

		pop_manager.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub

			}
		});
	}

	/*
	 * ��ȡPopupWindowʵ��
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
	 * ��ʼ��listView ��Adapter
	 */
	private void initAdapter() {
		stus.clear();
		ContentResolver cr = getContentResolver();
		Cursor cursor = cr
				.query(Uri
						.parse("content://com.runcross.stumanager.go/get/mess/users/part"),
						null, null, null, null);
		while (cursor.moveToNext()) {
			UserInfo user = new UserInfo();
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
			user.setChk(false);
			// user.setCont(cursor.getString(cursor.getColumnIndex("cont")));
			// user.setMz(cursor.getString(cursor.getColumnIndex("mz")));
			stus.add(user);
		}
		cursor.close();
	}
}
