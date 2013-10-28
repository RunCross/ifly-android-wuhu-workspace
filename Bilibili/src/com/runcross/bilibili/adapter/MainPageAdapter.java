package com.runcross.bilibili.adapter;

import java.util.List;

import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public class MainPageAdapter extends PagerAdapter {

	private List<View> viewList;//把需要滑动的页卡添加到这个list中  
	private List<String> titleList;//viewpager的标题  
	
	
	
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

        return titleList.get(position);//直接用适配器来完成标题的显示，所以从上面可以看到，我们没有使用PagerTitleStrip。当然你可以使用。  

    }  

    @Override  
    public Object instantiateItem(ViewGroup container, int position) {  
        container.addView(viewList.get(position));   
        return viewList.get(position);  
    }  

}
