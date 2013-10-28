package com.runcross.bilibili;

import java.util.ArrayList;
import java.util.List;

import android.os.Bundle;
import android.os.Parcelable;
import android.app.Activity;
import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.Intent;
import android.graphics.Color;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.PagerTabStrip;
import android.support.v4.view.PagerTitleStrip;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnLongClickListener;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListView;

public class MainActivity extends Activity{
	private View view1, view2, view3;//��Ҫ������ҳ��  
    private ViewPager viewPager;//viewpager  
    private PagerTitleStrip pagerTitleStrip;//viewpager�ı���  
    private PagerTabStrip pagerTabStrip;//һ��viewpager��ָʾ����Ч������һ����Ĵֵ��»���  
    private List<View> viewList;//����Ҫ������ҳ����ӵ����list��  
    private List<String> titleList;//viewpager�ı���  
    private Button weibo_button;//button����һ����������ڶ���Viewpager��ʾ��
    
    
    @SuppressWarnings("deprecation")
	LocalActivityManager manager = null;
	@SuppressWarnings("deprecation")
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE); // ���ر�����
//		getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
//				WindowManager.LayoutParams.FLAG_FULLSCREEN); // ����״̬��
setContentView(R.layout.activity_main);
		
		viewPager = (ViewPager) findViewById(R.id.viewpager); 
        pagerTabStrip=(PagerTabStrip) findViewById(R.id.pagertab);
        pagerTabStrip.setTabIndicatorColor(Color.rgb(246, 153, 136));
        pagerTabStrip.setDrawFullUnderline(false); 
        pagerTabStrip.setTextSpacing(50); 
        
        
		manager = new LocalActivityManager(this , true);
        manager.dispatchCreate(savedInstanceState);
		
        final ArrayList<View> list = new ArrayList<View>();
        Intent intent1 = new Intent(this, UserInfo.class);
        list.add(manager.startActivity("bohao", intent1).getDecorView());
        Intent intent2 = new Intent(this, TypeListActivity.class);
        list.add(manager.startActivity("����", intent2).getDecorView());
        
        
//        
//        Intent intent1 = new Intent(MainActivity.this, UserInfo.class);
//		viewPager.addView();
//        Intent intent2 = new Intent(MainActivity.this, TypeListActivity.class);
//		viewPager.addView();
        
//        @SuppressWarnings("static-access")
//		LayoutInflater lf = getLayoutInflater().from(this);  
//        view1 = lf.inflate(R.layout.userinfo, null);  
//        view2 = lf.inflate(R.layout.userinfo, null);  
//        view3 = lf.inflate(R.layout.userinfo, null);  
//  
//        viewList = new ArrayList<View>();// ��Ҫ��ҳ��ʾ��Viewװ��������  
//        viewList.add(view1);  
//        viewList.add(view2);  
//        viewList.add(view3);  
//        
        titleList = new ArrayList<String>();// ÿ��ҳ���Title����  
        titleList.add("��������");  
        titleList.add("��������");  
        titleList.add("�·�ר��");
        
        
        viewPager.setAdapter(new MyPagerAdapter(list));
        viewPager.setCurrentItem(0);
//        
//        viewPager.setAdapter(pagerAdapter);  
		
	}

    

  
    
    PagerAdapter pagerAdapter = new PagerAdapter() {  
    	  
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
//            weibo_button=(Button) findViewById(R.id.);//�����Ҫע�⣬����������дadapter����ʵ����button����ģ��������onCreate()�������������ᱨ��ġ�  
//            weibo_button.setOnClickListener(new OnClickListener() {  
//                  
//                public void onClick(View v) {  
//                    intent=new Intent(this,WeiBoActivity.class);  
//                    startActivity(intent);  
//                }  
//            });  
            return viewList.get(position);  
        } 
    }; 
    
    public class MyPagerAdapter extends PagerAdapter{
        List<View> list =  new ArrayList<View>();
        public MyPagerAdapter(ArrayList<View> list) {
            this.list = list;
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

            return titleList.get(position);//ֱ��������������ɱ������ʾ

        }  
    }
}
