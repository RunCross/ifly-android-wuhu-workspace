package com.example.chattest;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.app.LoaderManager;
import android.app.LocalActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.Display;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TabHost;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

import android.os.Bundle;
import android.os.Parcelable;
import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.util.DisplayMetrics;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TextView;

public class MainWeixin extends Activity {
	Context context = null;
	LocalActivityManager manager = null;
	ViewPager pager = null;
	public static MainWeixin instance = null;
	
	private int offset = 0;// 动画图片偏移量

	private int bmpW;// 动画图片宽度
	private ImageView cursor;// 动画图片
	private ImageView image1, image2, image3, image4;

	private int currIndex = 0;// 当前页卡编号
	private int one, two, three;

	private LinearLayout mClose;
	private LinearLayout mCloseBtn;
	private View layout;
	private boolean menu_display = false;
	private PopupWindow menuWindow;
	private LayoutInflater inflater;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.weixin_main);
		// 启动activity时不自动弹出软键盘
		getWindow().setSoftInputMode(
				WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN);
		instance = this;

		context = MainWeixin.this;
		manager = new LocalActivityManager(this, true);
		manager.dispatchCreate(savedInstanceState);

		initImageView();
		initPagerViewer();

	}

	private void initImageView() {
		image1 = (ImageView) findViewById(R.id.img_weixin);
		image2 = (ImageView) findViewById(R.id.img_address);
		image3 = (ImageView) findViewById(R.id.img_friends);
		image4 = (ImageView) findViewById(R.id.img_settings);

		image1.setOnClickListener(new MyOnClickListener(0));
		image2.setOnClickListener(new MyOnClickListener(1));
		image3.setOnClickListener(new MyOnClickListener(2));
		image4.setOnClickListener(new MyOnClickListener(3));

	}

	/**
	 * 初始化动画
	 */
	private void InitImageView() {
		//cursor = (ImageView) findViewById(R.id.img_tab_now);
		bmpW = BitmapFactory.decodeResource(getResources(), R.drawable.tab_bg)
				.getWidth();// 获取图片宽度
		DisplayMetrics dm = new DisplayMetrics();
		getWindowManager().getDefaultDisplay().getMetrics(dm);
		int screenW = dm.widthPixels;// 获取分辨率宽度
	
		one = screenW / 4;// 计算偏移量
		Matrix matrix = new Matrix();
		matrix.postTranslate(offset, 0);
		//cursor.setImageMatrix(matrix);// 设置动画初始位置
	}

	/**
	 * 初始化PageViewer
	 */
	private void initPagerViewer() {
		pager = (ViewPager) findViewById(R.id.tabpagers);
		final ArrayList<View> list = new ArrayList<View>();
		Intent intent1 = new Intent(context, Weixin.class);
		list.add(getView("A", intent1));
		Intent intent2 = new Intent(context, Address.class);
		list.add(getView("B", intent2));
		Intent intent3 = new Intent(context, Find.class);
		list.add(getView("C", intent3));
		Intent intent4 = new Intent(context, Me.class);
		list.add(getView("D", intent4));
		pager.setAdapter(new MyPagerAdapter(list));
		pager.setCurrentItem(0);
		pager.setOnPageChangeListener(new MyOnPageChangeListener());
	}

	// @Override
	// public boolean onCreateOptionsMenu(Menu menu) {
	// getMenuInflater().inflate(R.menu.main, menu);
	// return true;
	// }

	/**
	 * 通过activity获取视图
	 * 
	 * @param id
	 * @param intent
	 * @return
	 */
	private View getView(String id, Intent intent) {
		return manager.startActivity(id, intent).getDecorView();
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// TODO Auto-generated method stub
		return super.onCreateOptionsMenu(menu);
	}

	/**
	 * Pager适配器
	 */
	public class MyPagerAdapter extends PagerAdapter {
		List<View> list = new ArrayList<View>();

		public MyPagerAdapter(ArrayList<View> list) {
			this.list = list;
		}

		@Override
		public void destroyItem(ViewGroup container, int position, Object object) {
			ViewPager pViewPager = ((ViewPager) container);
			pViewPager.removeView(list.get(position));
		}

		@Override
		public boolean isViewFromObject(View arg0, Object arg1) {
			return arg0 == arg1;
		}

		@Override
		public int getCount() {
			return list.size();
		}

		@Override
		public Object instantiateItem(View arg0, int arg1) {
			ViewPager pViewPager = ((ViewPager) arg0);
			pViewPager.addView(list.get(arg1));
			return list.get(arg1);
		}

		@Override
		public void restoreState(Parcelable arg0, ClassLoader arg1) {

		}

		@Override
		public Parcelable saveState() {
			return null;
		}

		@Override
		public void startUpdate(View arg0) {
		}
	}

	/**
	 * 页卡切换监听
	 */
	public class MyOnPageChangeListener implements OnPageChangeListener {

		@Override
		public void onPageSelected(int arg0) {
			try {
				Animation animation = null;
				switch (arg0) {
				case 0:
					if (currIndex == 1) {
						animation = new TranslateAnimation(one, 0, 0, 0);
					} else if (currIndex == 2) {
						animation = new TranslateAnimation(two, 0, 0, 0);
					} else if (currIndex == 3) {
						animation = new TranslateAnimation(three, 0, 0, 0);
					}
					break;
				case 1:
					if (currIndex == 0) {
						animation = new TranslateAnimation(offset, one, 0, 0);
					} else if (currIndex == 2) {
						animation = new TranslateAnimation(two, one, 0, 0);
					} else if (currIndex == 3) {
						animation = new TranslateAnimation(three, one, 0, 0);
					}
					break;
				case 2:
					if (currIndex == 0) {
						animation = new TranslateAnimation(offset, two, 0, 0);
					} else if (currIndex == 1) {
						animation = new TranslateAnimation(one, two, 0, 0);
					} else if (currIndex == 3) {
						animation = new TranslateAnimation(three, two, 0, 0);
					}
					break;
				case 3:

					if (currIndex == 0) {
						animation = new TranslateAnimation(offset, three, 0, 0);

					} else if (currIndex == 1) {
						animation = new TranslateAnimation(one, three, 0, 0);

					} else if (currIndex == 2) {
						animation = new TranslateAnimation(two, three, 0, 0);

					}
					break;
				}
				currIndex = arg0;
				animation.setFillAfter(true);// True:图片停在动画结束位置
				animation.setDuration(300);
				//cursor.startAnimation(animation);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		@Override
		public void onPageScrollStateChanged(int arg0) {

		}

		@Override
		public void onPageScrolled(int arg0, float arg1, int arg2) {

		}
	}

	/**
	 * 头标点击监听
	 */
	public class MyOnClickListener implements View.OnClickListener {
		private int index = 0;

		public MyOnClickListener(int i) {
			index = i;
		}

		@Override
		public void onClick(View v) {
			pager.setCurrentItem(index);
		}
	}

//	@Override
//	public boolean onKeyDown(int keyCode, KeyEvent event) {
//		if (keyCode == KeyEvent.KEYCODE_BACK && event.getRepeatCount() == 0) { // 获取
//																				// back键
//
//			if (menu_display) { // 如果 Menu已经打开 ，先关闭Menu
//				menuWindow.dismiss();
//				menu_display = false;
//			} else {
//				Intent intent = new Intent();
//				intent.setClass(MainWeixin.this, Exit.class);
//				startActivity(intent);
//			}
//		}
//
//		else if (keyCode == KeyEvent.KEYCODE_MENU) { // 获取 Menu键
//			if (!menu_display) {
//				// 获取LayoutInflater实例
//				inflater = (LayoutInflater) this
//						.getSystemService(LAYOUT_INFLATER_SERVICE);
//				// 这里的main布局是在inflate中加入的哦，以前都是直接this.setContentView()的吧？呵呵
//				// 该方法返回的是一个View的对象，是布局中的根
//				layout = inflater.inflate(R.layout.main_menu, null);
//
//				// 下面我们要考虑了，我怎样将我的layout加入到PopupWindow中呢？？？很简单
//				menuWindow = new PopupWindow(layout, LayoutParams.FILL_PARENT,
//						LayoutParams.WRAP_CONTENT); // 后两个参数是width和height
//				// menuWindow.showAsDropDown(layout); //设置弹出效果
//				// menuWindow.showAsDropDown(null, 0, layout.getHeight());
//				menuWindow.showAtLocation(this.findViewById(R.id.mainweixin),
//						Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL, 0, 0); // 设置layout在PopupWindow中显示的位置
//				// 如何获取我们main中的控件呢？也很简单
//				mClose = (LinearLayout) layout.findViewById(R.id.menu_close);
//				mCloseBtn = (LinearLayout) layout
//						.findViewById(R.id.menu_close_btn);
//
//				// 下面对每一个Layout进行单击事件的注册吧。。。
//				// 比如单击某个MenuItem的时候，他的背景色改变
//				// 事先准备好一些背景图片或者颜色
//				mCloseBtn.setOnClickListener(new View.OnClickListener() {
//					@Override
//					public void onClick(View arg0) {
//						// Toast.makeText(Main.this, "退出",
//						// Toast.LENGTH_LONG).show();
//						Intent intent = new Intent();
//						intent.setClass(MainWeixin.this, Exit.class);
//						startActivity(intent);
//						menuWindow.dismiss(); // 响应点击事件之后关闭Menu
//					}
//				});
//				menu_display = true;
//			} else {
//				// 如果当前已经为显示状态，则隐藏起来
//				menuWindow.dismiss();
//				menu_display = false;
//			}
//
//			return false;
//		}
//		return false;
//	}

}