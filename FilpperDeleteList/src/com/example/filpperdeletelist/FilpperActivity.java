package com.example.filpperdeletelist;

import java.util.ArrayList;
import java.util.List;

import android.app.Activity;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;

import com.example.filpperdeletelist.FilpperListvew.FilpperDeleteListener;

public class FilpperActivity extends Activity {
	private FilpperListvew flipperListView;
    private MyAdapter adapter ;
    private List<String> items;
    private int width;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_filpper);
		DisplayMetrics dm = new DisplayMetrics();
		getWindowManager().getDefaultDisplay().getMetrics(dm);
		width = dm.widthPixels;
		flipperListView = (FilpperListvew) findViewById(R.id.filpperlistview);
		items = new ArrayList<String>();
		for(int i=0;i<15;i++){
			items.add("item---->"+i);
		}
		adapter = new MyAdapter(this, items);
		flipperListView.setAdapter(adapter);
		//�Զ���Ľӿ�
		flipperListView.setFilpperDeleteListener(new FilpperDeleteListener() {
			@Override
			public void filpperDelete(float xPosition,float yPosition) {
				//listview��Ҫ��item�����򷵻�
				if(flipperListView.getChildCount() == 0)
					return ;
				//���������û���ɾ����item��index
			    final int index =  flipperListView.pointToPosition((int)xPosition, (int)yPosition);
			    //һ�������ǻ�ø���Ŀ����Ļ��ʾ�е����λ�ã�ֱ�Ӹ���indexɾ�����ָ��쳣����Ϊlistview�е�childֻ�е�ǰ����Ļ����ʾ�ĲŲ���Ϊ��
			    int firstVisiblePostion = flipperListView.getFirstVisiblePosition();
				View view = flipperListView.getChildAt(index - firstVisiblePostion);
				
				TranslateAnimation tranAnimation = new TranslateAnimation(0,width,0,0);
				tranAnimation.setDuration(500);
				tranAnimation.setFillAfter(true);
				view.startAnimation(tranAnimation);
				//������������Ϻ�ɾ�������򲻻���ֶ���Ч�����Լ�����ģ���
				tranAnimation.setAnimationListener(new AnimationListener() {
					@Override
					public void onAnimationStart(Animation animation) {
						// TODO Auto-generated method stub
						
					}
					
					@Override
					public void onAnimationRepeat(Animation animation) {
						// TODO Auto-generated method stub
						
					}
					
					@Override
					public void onAnimationEnd(Animation animation) {
						//ɾ��һ��item
						items.remove(index);
					    adapter.notifyDataSetChanged();
					}
				});
				
			}
		});
	}

}
