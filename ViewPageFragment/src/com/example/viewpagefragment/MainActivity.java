package com.example.viewpagefragment;

import java.util.ArrayList;
import java.util.List;

import com.runcross.vpfragmenutab.po.Parent;
import com.runcross.vpfragmenutab.po.Person;
import com.runcross.vpfragmenutab.po.Student;
import com.runcross.vpfragmenutab.po.Teacher;


import android.os.Bundle;
import android.app.ActionBar;
import android.app.ActionBar.Tab;
import android.app.FragmentTransaction;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.GestureDetector.OnGestureListener;
import android.widget.FrameLayout;
import android.widget.Toast;

public class MainActivity extends FragmentActivity implements
		PersonFragement.ItemClick, ActionBar.TabListener {

	public interface ItemFlingBack {

		public void onItemFlingBack();
	}

	// private GestureDetector gdetector;

	// 页面数据
	private ArrayList<Student> students;
	private ArrayList<Teacher> teachers;
	private ArrayList<Parent> parents;
	private ArrayList<ArrayList> datas;

	// private View view1, view2, view3;//需要滑动的页卡
	private ViewPager viewPager;// viewpager
	// private PagerTitleStrip pagerTitleStrip;// viewpager的标题
	// private PagerTabStrip pagerTabStrip;// 一个viewpager的指示器，效果就是一个横的粗的下划线
	// private List<View> viewList;// 把需要滑动的页卡添加到这个list中
	// private List<String> titleList;// viewpager的标题

	private FragAdapter adapter;

	private ActionBar actionBar;

	private ArrayList<Fragment> frags;

	FrameLayout layout;

	private Fragment fragment;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main_viewpage);
		// gdetector = new GestureDetector(this);
		// layout = new FrameLayout(MainActivity.this);
		// layout.setId(0x123);
		// fragment =getSupportFragmentManager().findFragmentById(R.id.viewgo);

		// 初始化数据
		intiDatas();

		// 初始化fragment
		initFragments();

		viewPager = (ViewPager) findViewById(R.id.viewpager);

		adapter = new FragAdapter(getSupportFragmentManager(), frags);
		viewPager.setAdapter(adapter);

		actionBar = getActionBar();
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

		// actionbar随着viewpage滑动
		viewPager.setOnPageChangeListener(new OnPageChangeListener() {

			@Override
			public void onPageSelected(int arg0) {
				actionBar.setSelectedNavigationItem(arg0);
			}

			@Override
			public void onPageScrolled(int arg0, float arg1, int arg2) {

			}

			@Override
			public void onPageScrollStateChanged(int arg0) {

			}
		});

	}

	// private Fragment initPersonFragment(String flag) {
	// Bundle datas = new Bundle();
	// if (flag.equals("学生")) {
	// datas.putSerializable("datas", students);
	// datas.putString("type", "student");
	// }
	// if (flag.equals("老师")) {
	// datas.putSerializable("datas", teachers);
	// datas.putString("type", "teacher");
	// }
	// if (flag.equals("家长")) {
	// datas.putSerializable("datas", parents);
	// datas.putString("type", "parent");
	// }
	// PersonFragement personFra = new PersonFragement();
	// personFra.setArguments(datas);
	// return personFra;
	// }

	// 初始化tab显示的fragment
	private void initFragments() {
		frags = new ArrayList<Fragment>();
		for (int i = 0; i < datas.size(); i++) {
			Bundle bund = new Bundle();
			bund.putSerializable("datas", datas.get(i));
			PersonFragement personFra = new PersonFragement();
			personFra.setArguments(bund);
			frags.add(personFra);
		}
	}

	// 初始化页面数据
	private void intiDatas() {
		datas = new ArrayList<ArrayList>();
		students = new ArrayList<Student>();
		students.add(new Student("学生1", "男"));
		students.add(new Student("学生2", "女"));
		datas.add(students);

		teachers = new ArrayList<Teacher>();
		teachers.add(new Teacher("教师1", "男"));
		teachers.add(new Teacher("教师2", "女"));
		datas.add(teachers);

		parents = new ArrayList<Parent>();
		parents.add(new Parent("父亲1", "男"));
		parents.add(new Parent("母亲2", "女"));
		datas.add(parents);
	}

	@Override
	public void onItemClick(Bundle bundle) {
		
		PersonDetailFragment pdf = new PersonDetailFragment();
		pdf.setArguments(bundle);
		
		Toast.makeText(MainActivity.this,
				"onitemclick " + bundle.getSerializable("person"),
				Toast.LENGTH_SHORT).show();
		frags.clear();
		frags.add(pdf);
		// adapter.notifyDataSetChanged();
		// adapter.notify();
		Person per = (Person) bundle.getSerializable("person");
		System.out.println(per.getName());
		System.out.println("frags size " + frags.size());
		
		
		adapter = new FragAdapter(getSupportFragmentManager(), frags);
		viewPager.setAdapter(adapter);

		// getSupportFragmentManager().beginTransaction().replace(R.id.viewmain,
		// pdf).commit();
	}

	@Override
	public void onTabSelected(Tab tab, FragmentTransaction ft) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onTabUnselected(Tab tab, FragmentTransaction ft) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onTabReselected(Tab tab, FragmentTransaction ft) {
		// TODO Auto-generated method stub

	}

	/*
	 * 手势监听
	 */
	// @Override
	// public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
	// float velocityY) {
	// Toast.makeText(MainActivity.this, "go", Toast.LENGTH_SHORT).show();
	// if (e2.getX() - e1.getX() > 20 && velocityX > 2) {
	// // getSupportFragmentManager().beginTransaction().replace(layout.getId(),
	// frags.get(0)).commit();
	// }
	// else if (e1.getX() - e2.getX() > 20 ){
	// // getSupportFragmentManager().beginTransaction().replace(layout.getId(),
	// frags.get(1)).commit();
	//
	// }
	// return false;
	// }
	// @Override
	// public boolean onDown(MotionEvent e) {
	// // TODO Auto-generated method stub
	// return false;
	// }
	//
	// @Override
	// public void onShowPress(MotionEvent e) {
	// // TODO Auto-generated method stub
	//
	// }
	//
	// @Override
	// public boolean onSingleTapUp(MotionEvent e) {
	// // TODO Auto-generated method stub
	// return false;
	// }
	//
	// @Override
	// public boolean onScroll(MotionEvent e1, MotionEvent e2, float distanceX,
	// float distanceY) {
	// // TODO Auto-generated method stub
	// return false;
	// }
	//
	// @Override
	// public void onLongPress(MotionEvent e) {
	// // TODO Auto-generated method stub
	//
	// }
	// @Override
	// public boolean dispatchTouchEvent(MotionEvent ev) {
	// if (gdetector.onTouchEvent(ev)) {
	// return gdetector.onTouchEvent(ev);
	// }
	// return super.dispatchTouchEvent(ev);
	// }

	
	
}
