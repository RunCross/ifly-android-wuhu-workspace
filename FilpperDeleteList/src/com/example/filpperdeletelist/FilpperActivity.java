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
		//自定义的接口
		flipperListView.setFilpperDeleteListener(new FilpperDeleteListener() {
			@Override
			public void filpperDelete(float xPosition,float yPosition) {
				//listview中要有item，否则返回
				if(flipperListView.getChildCount() == 0)
					return ;
				//根据坐标获得滑动删除的item的index
			    final int index =  flipperListView.pointToPosition((int)xPosition, (int)yPosition);
			    //一下两步是获得该条目在屏幕显示中的相对位置，直接根据index删除会空指針异常。因为listview中的child只有当前在屏幕中显示的才不会为空
			    int firstVisiblePostion = flipperListView.getFirstVisiblePosition();
				View view = flipperListView.getChildAt(index - firstVisiblePostion);
				
				TranslateAnimation tranAnimation = new TranslateAnimation(0,width,0,0);
				tranAnimation.setDuration(500);
				tranAnimation.setFillAfter(true);
				view.startAnimation(tranAnimation);
				//当动画播放完毕后，删除。否则不会出现动画效果（自己试验的）。
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
						//删除一个item
						items.remove(index);
					    adapter.notifyDataSetChanged();
					}
				});
				
			}
		});
	}

}
