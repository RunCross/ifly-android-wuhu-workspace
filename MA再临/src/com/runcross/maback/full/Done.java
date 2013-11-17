package com.runcross.maback.full;

import java.util.ArrayList;
import java.util.List;

import com.runcross.maback.full.util.DoneAdapter;

import android.app.Activity;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.support.v4.view.PagerTabStrip;
import android.support.v4.view.ViewPager;
import android.view.View;

@SuppressWarnings("deprecation")
public class Done extends Activity {

	private LocalActivityManager manager = null;
	private ViewPager viewpager;
	private PagerTabStrip pagerTabStrip;// һ��viewpager��ָʾ����Ч������һ����Ĵֵ��»���
	private ArrayList<View> viewList;// ����Ҫ������ҳ����ӵ����list��
	private List<String> titleList;// viewpager�ı���
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.main_configuration);

		viewpager = (ViewPager) findViewById(R.id.viewpager);
		
		pagerTabStrip = (PagerTabStrip) findViewById(R.id.pagertab);
		pagerTabStrip.setTabIndicatorColor(Color.rgb(246, 153, 136));
		pagerTabStrip.setDrawFullUnderline(false);
		pagerTabStrip.setTextSpacing(50);
		
		//�û���Ϣ
		initDate();
		
		//����
		initPagetitle();
		
		manager = new LocalActivityManager(this, true);
		manager.dispatchCreate(savedInstanceState);

		//��ʼ��Ҫ������ҳ��
		initPageView();
		
		viewpager.setAdapter(new DoneAdapter(viewList, titleList));
		viewpager.setCurrentItem(0);
		
	}

	/*
	 * ���ñ���
	 */
	private void initPagetitle() {
		titleList = new ArrayList<String>();// ÿ��ҳ���Title����
		titleList.add("�û���Ϣ");
		titleList.add("�Զ���ͼ");
		titleList.add("����ս��");
		titleList.add("PVPս��");
		titleList.add("��������");
	}

	/*
	 * ��ʼ���û���Ϣ
	 */
	private void initDate() {
		
	}
	
	/*
	 * ��ʼ��page��view
	 */
	private void initPageView(){
		viewList = new ArrayList<View>();
		Intent intent1 = new Intent(this, UserInfoShow.class);
		viewList.add(manager.startActivity("�û���Ϣ", intent1).getDecorView());
		Intent intent2 = new Intent(this, Area.class);
		viewList.add(manager.startActivity("�Զ���ͼ", intent2).getDecorView());
		Intent intent3 = new Intent(this, EvilBattle.class);
		viewList.add(manager.startActivity("����ս��", intent3).getDecorView());
		Intent intent4 = new Intent(this, PVPBattle.class);
		viewList.add(manager.startActivity("PVPս��", intent4).getDecorView());
	}
	
}
