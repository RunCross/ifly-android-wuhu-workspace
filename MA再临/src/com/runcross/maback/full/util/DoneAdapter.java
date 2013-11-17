package com.runcross.maback.full.util;

import java.util.ArrayList;
import java.util.List;

import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;

public class DoneAdapter extends PagerAdapter {

	private List<View> list ;
    private List<String> titleList; 
    public DoneAdapter(ArrayList<View> list, List<String> titleList) {
        this.list = list;
        this.titleList = titleList;
    }

    @Override
    public void destroyItem(ViewGroup container, int position,
            Object object) {
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
    
    @Override
    public CharSequence getPageTitle(int position) {  

        return titleList.get(position);//直接用适配器来完成标题的显示

    }  

}
