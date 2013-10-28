package com.runcross.bilibili.adapter;

import java.util.List;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public class MainPageAdapter extends PagerAdapter {

	private List<View> viewList;//����Ҫ������ҳ����ӵ����list��  
	private List<String> titleList;//viewpager�ı���  
	
	
	
	public MainPageAdapter(List<View> viewList, List<String> titleList) {
		super();
		this.viewList = viewList;
		this.titleList = titleList;
	}

	@Override  
    public boolean isViewFromObject(View arg0, Object arg1) {  

        return arg0 == arg1;  
    }  

    @Override  
    public int getCount() {  

        return viewList.size();  
    }  

    @Override  
    public void destroyItem(ViewGroup container, int position,  
            Object object) {  
        container.removeView(viewList.get(position));  

    }  

    @Override
    public int getItemPosition(Object object) {  

        return super.getItemPosition(object);  
    }  

    @Override
    public CharSequence getPageTitle(int position) {  

        return titleList.get(position);//ֱ��������������ɱ������ʾ�����Դ�������Կ���������û��ʹ��PagerTitleStrip����Ȼ�����ʹ�á�  

    }  

    @Override  
    public Object instantiateItem(ViewGroup container, int position) {  
        container.addView(viewList.get(position));   
        return viewList.get(position);  
    }  

}
