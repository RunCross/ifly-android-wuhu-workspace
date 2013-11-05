package com.runcross.animationslide;

import java.util.Set;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.Toast;

@SuppressWarnings("deprecation")
public class PreferenceActivityTest extends PreferenceActivity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		// 添加布局
		this.addPreferencesFromResource(R.xml.setting);

		// 读取设置的值
		SharedPreferences pre = PreferenceManager
				.getDefaultSharedPreferences(PreferenceActivityTest.this);
		boolean promt = pre.getBoolean("promt", false);
		boolean sex = pre.getBoolean("sex", false);

		
		ImageView img = new ImageView(PreferenceActivityTest.this);
		img.setImageResource(R.drawable.ic_launcher);
		Animation ani = AnimationUtils.loadAnimation(PreferenceActivityTest.this, R.anim.translate);
//		img.setAnimation(ani);
		img.setPadding(0, 130, 0, 0);
//		img.setVisibility(View.GONE);
		if(promt){
			img.startAnimation(ani);	
		}
		this.addContentView(img	, new LayoutParams(200, 200));
		
	}
}
