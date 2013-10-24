package com.runcross.vpfragmenutab.viewpage;

import java.util.ArrayList;
import java.util.List;


import com.runcross.vpfragmenutab.PersonDetailFragment;
import com.runcross.vpfragmenutab.R;
import com.runcross.vpfragmenutab.po.Parent;
import com.runcross.vpfragmenutab.po.Student;
import com.runcross.vpfragmenutab.po.Teacher;

import android.support.v4.app.Fragment;
import android.os.Bundle;
import android.app.ActionBar;
import android.app.ActionBar.Tab;
import android.app.FragmentTransaction;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.FrameLayout;
import android.widget.Toast;

public class MainActivity extends FragmentActivity implements
		PersonFragement.ItemClick, GestureDetector.OnGestureListener,
		OnTouchListener, ActionBar.TabListener {

	public interface ItemFlingBack {

		public void onItemFlingBack();
	}

	// 手势
	private GestureDetector gd;

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

	private List<Fragment> frags;
	
	FrameLayout layout ;

	@SuppressWarnings("deprecation")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main_viewpage);

		gd = new GestureDetector(this);

		layout = new FrameLayout(MainActivity.this);
		layout.setId(0x123);
		
		intiDatas();

		initFragments();

		viewPager = (ViewPager) findViewById(R.id.viewpager);
		// // pagerTitleStrip = (PagerTitleStrip) findViewById(R.id.pagertitle);
		// pagerTabStrip = (PagerTabStrip) findViewById(R.id.pagertab);
		// //
		// pagerTabStrip.setTabIndicatorColor(getResources().getColor(R.color.));
		// pagerTabStrip.setDrawFullUnderline(false);
		// //
		// pagerTabStrip.setBackgroundColor(getResources().getColor(R.color.azure));
		// pagerTabStrip.setTextSpacing(50);
		//
		// titleList = new ArrayList<String>();// 每个页面的Title数据
		// titleList.add("学生");
		// titleList.add("老师");
		// titleList.add("家长");
		//
		// List<Fragment> fragments = new ArrayList<Fragment>();
		// fragments.add(initPersonFragment("学生"));
		// fragments.add(initPersonFragment("老师"));
		// fragments.add(initPersonFragment("家长"));
		// fragments.add(new PersonDetailFragment());
		//
		// adapter = new FragAdapter(getSupportFragmentManager(), fragments);
		// viewPager.setAdapter(adapter);
		// viewPager.setCurrentItem(0);
		adapter = new FragAdapter(getSupportFragmentManager(), datas);
		viewPager.setAdapter(adapter);
//		viewPager.addView(layout);
		
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

	private void initFragments() {
		frags = new ArrayList<Fragment>();
		for (int i = 0; i < datas.size(); i++) {
			Bundle bund = new Bundle();
			bund.putSerializable("datas", datas.get(0));
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

	public boolean onFling(MotionEvent e1, MotionEvent e2, float velocityX,
			float velocityY) {
		if (e2.getX() - e1.getX() > 20 && velocityX > 2) {
			// Toast.makeText(MainActivity.this, "ontouch", Toast.LENGTH_SHORT)
			// .show();
			// // onTabSelected(getActionBar().getSelectedTab(),
			// // getFragmentManager()
			// // .beginTransaction());
			// Tab tab = getActionBar().getSelectedTab();
			// FragmentTransaction ft = getFragmentManager().beginTransaction();
			//
			// Bundle datas = new Bundle();
			// if (tab.getText().equals("学生")) {
			// datas.putSerializable("datas", students);
			// datas.putString("type", "student");
			// }
			// if (tab.getText().equals("老师")) {
			// datas.putSerializable("datas", teachers);
			// datas.putString("type", "teacher");
			// }
			// if (tab.getText().equals("家长")) {
			// datas.putSerializable("datas", parents);
			// datas.putString("type", "parent");
			// }
			// PersonFragement personFra = new PersonFragement();
			// personFra.setArguments(datas);

			// ft.replace(R.id.container, personFra).commit();

		}
		return false;
	}

	@Override
	public boolean onTouch(View v, MotionEvent event) {
		// TODO Auto-generated method stub
		return false;
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
	public void onItemClick(Bundle bundle) {
		 PersonDetailFragment pdf = new PersonDetailFragment();
		 pdf.setArguments(bundle);
		 Toast.makeText(MainActivity.this, "onitemclick", Toast.LENGTH_SHORT)
		 .show();
		 getFragmentManager().beginTransaction().replace(R.id.viewpager, pdf)
		 .commit();

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

}
