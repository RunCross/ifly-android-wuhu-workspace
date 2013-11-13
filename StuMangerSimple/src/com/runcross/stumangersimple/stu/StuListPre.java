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
import android.util.Log;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.GestureDetector.OnGestureListener;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.Toast;

public class StuListPre extends Activity implements StuListPreAdapter.GoTel, OnGestureListener {

	
	private final char FLING_CLICK = 0;
    private final char FLING_LEFT = 1;
    private final char FLING_RIGHT = 2;
    private char flingState = FLING_CLICK;
    private GestureDetector gd;
	
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
		 gd = new GestureDetector(this);
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
//		stuList.setOnItemLongClickListener(new OnItemLongClickListener() {
//
//			@Override
//			public boolean onItemLongClick(AdapterView<?> parent, View view,
//					int position, long id) {
//				Bundle bund = new Bundle();
//				System.out.println("position"+position+" "+stus.get(position-1).getBirthday());
//				bund.putSerializable("stu", stus.get(position-1));
//				Intent intent = new Intent(StuListPre.this, StuUpdate.class);
//				intent.putExtras(bund);
//				startActivity(intent);
//				return false;
//			}
//		});
		stuList.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int pos, long id) {
				 switch(flingState) {
		            // 处理左滑事件
		            case FLING_LEFT:
		                        Toast.makeText( StuListPre.this, "Fling Left:"+pos, Toast.LENGTH_SHORT).show();
		                        flingState = FLING_CLICK;
		                break;
		        // 处理右滑事件
		            case FLING_RIGHT:
		                        Toast.makeText( StuListPre.this, "Fling Right:"+pos, Toast.LENGTH_SHORT).show();
		                        flingState = FLING_CLICK;
		                break;
		        // 处理点击事件
		            case FLING_CLICK:
		                    switch(pos) {
		                    case 0:break;
		                    case 1:break;
		                    }
		                    Toast.makeText( StuListPre.this, "Click Item:"+pos, Toast.LENGTH_SHORT).show();
		                    break;
		            }
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

	@Override
	public boolean onDown(MotionEvent e) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onShowPress(MotionEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean onSingleTapUp(MotionEvent e) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX,
			float distanceY) {
		 
		return false;
	}

	@Override
	public void onLongPress(MotionEvent e) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		final int minX = 30 ,maxY = 20, minV = 0;
        int x1 = (int) e1.getX(), x2 = (int) e2.getX();
        int y1 = (int) e1.getY(), y2 = (int) e2.getY();
        
        if( Math.abs(x1-x2)>minX && Math.abs(y1-y2)<maxY && Math.abs(velocityX)>minV) {
                if(x1>x2) {
                        Log.v("MY_TAG", "Fling Left");
                        flingState = FLING_LEFT;
                }
                else {
                        Log.v("MY_TAG", "Fling Right");
                        flingState = FLING_RIGHT;
                }
        }
		return false;
	}
	
	@Override
	public boolean onTouchEvent(MotionEvent event) {
		Log.v("MY_TAG", "onTouchEvent");
        return this.gd.onTouchEvent(event);
	}
	
}
