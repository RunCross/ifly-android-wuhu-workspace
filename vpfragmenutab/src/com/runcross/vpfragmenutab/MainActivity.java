package com.runcross.vpfragmenutab;

import java.util.ArrayList;

import com.runcross.vpfragmenutab.po.Parent;
import com.runcross.vpfragmenutab.po.Student;
import com.runcross.vpfragmenutab.po.Teacher;

import android.os.Bundle;
import android.app.ActionBar;
import android.app.ActionBar.Tab;
import android.app.Activity;
import android.app.FragmentTransaction;
import android.view.GestureDetector;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.Toast;

public class MainActivity extends Activity implements ActionBar.TabListener,
		PersonFragement.ItemClick, GestureDetector.OnGestureListener ,OnTouchListener {

	public interface ItemFlingBack {
		
		public void onItemFlingBack();
	}

	private GestureDetector gd;
	
	private ArrayList<Student> students ;
	
	private ArrayList<Teacher> teachers ;
	
	private ArrayList<Parent> parents ;

	@SuppressWarnings("deprecation")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main);

		gd = new GestureDetector(this);

		intiDatas();
		
		ActionBar actionBar = getActionBar();
		actionBar.setDisplayShowHomeEnabled(false);
		actionBar.setHomeButtonEnabled(false);
		actionBar.setDisplayShowTitleEnabled(false);

		actionBar.setNavigationMode(ActionBar.NAVIGATION_MODE_TABS);
		actionBar.addTab(actionBar.newTab().setText("学生").setTabListener(this),
				0, true);
		actionBar.addTab(actionBar.newTab().setText("老师").setTabListener(this),
				1, false);
		actionBar.addTab(actionBar.newTab().setText("家长").setTabListener(this),
				2, false);

	}

	private void intiDatas() {
		students = new ArrayList<Student>();
		students.add(new Student("学生1", "男"));
		students.add(new Student("学生2", "女"));
		
		teachers = new ArrayList<Teacher>();
		teachers.add(new Teacher("教师1", "男"));
		teachers.add(new Teacher("教师2", "女"));
		
		parents = new ArrayList<Parent>();
		parents.add(new Parent("父亲1", "男"));
		parents.add(new Parent("母亲2", "女"));
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	@Override
	public void onTabReselected(Tab arg0, FragmentTransaction arg1) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onTabSelected(Tab tab, FragmentTransaction ft) {
		

		Bundle datas = new Bundle();
		if (tab.getText().equals("学生")) {
			datas.putSerializable("datas", students);
			datas.putString("type", "student");
		}
		if (tab.getText().equals("老师")) {
			datas.putSerializable("datas", teachers);
			datas.putString("type", "teacher");
		}
		if (tab.getText().equals("家长")) {
			datas.putSerializable("datas", parents);
			datas.putString("type", "parent");
		}
		PersonFragement personFra = new PersonFragement();
		personFra.setArguments(datas);

		ft.replace(R.id.container, personFra);
	}

	@Override
	public void onTabUnselected(Tab arg0, FragmentTransaction arg1) {
		// TODO Auto-generated method stub

	}

	
	@Override
	public void onItemClick(Bundle bundle) {
		PersonDetailFragment pdf = new PersonDetailFragment();
		pdf.setArguments(bundle);
		Toast.makeText(MainActivity.this, "onitemclick", Toast.LENGTH_SHORT)
				.show();
		getFragmentManager().beginTransaction().replace(R.id.container, pdf)
				.commit();
	}

//	@Override
//	public void onItemFlingBack() {
//
//		
//		// getFragmentManager().beginTransaction().replace(R.id.container,
//		// pdf).commit();
//	}

	@Override
	public boolean dispatchTouchEvent(MotionEvent ev) {
		if (gd.onTouchEvent(ev)) {
			return gd.onTouchEvent(ev);
		}
		return super.dispatchTouchEvent(ev);
	}
	
	@Override
	public boolean onTouch(View v, MotionEvent event) {
		// TODO Auto-generated method stub
		return gd.onTouchEvent(event);
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
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onLongPress(MotionEvent e) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		if (e2.getX() - e1.getX() > 20 && velocityX > 2) {
			Toast.makeText(MainActivity.this, "ontouch", Toast.LENGTH_SHORT)
			.show();
//			onTabSelected(getActionBar().getSelectedTab(), getFragmentManager()
//					.beginTransaction());
			Tab tab = getActionBar().getSelectedTab();
			FragmentTransaction ft = getFragmentManager().beginTransaction();		

			Bundle datas = new Bundle();
			if (tab.getText().equals("学生")) {
				datas.putSerializable("datas", students);
				datas.putString("type", "student");
			}
			if (tab.getText().equals("老师")) {
				datas.putSerializable("datas", teachers);
				datas.putString("type", "teacher");
			}
			if (tab.getText().equals("家长")) {
				datas.putSerializable("datas", parents);
				datas.putString("type", "parent");
			}
			PersonFragement personFra = new PersonFragement();
			personFra.setArguments(datas);

			ft.replace(R.id.container, personFra).commit();
			
		}
		return false;
	}

	


}
