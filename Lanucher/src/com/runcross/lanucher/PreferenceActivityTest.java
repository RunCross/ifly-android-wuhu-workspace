package com.runcross.lanucher;

import java.util.Set;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.preference.PreferenceManager;
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
		boolean light = pre.getBoolean("light", false);
		String name = pre.getString("name", "");
		String sex = pre.getString("sex", "");
		Set<String> lesson = pre.getStringSet("lesson", null);

		Toast.makeText(PreferenceActivityTest.this,
				name + "-" + sex + "-" + lesson.toArray()[0] + "-" + light,
				Toast.LENGTH_SHORT).show();
		
	}
}
