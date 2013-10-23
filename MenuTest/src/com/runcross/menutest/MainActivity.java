package com.runcross.menutest;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		// getMenuInflater().inflate(R.menu.main, menu);
		SubMenu subMenu = menu.addSubMenu("ÁíÒ»¸ö");
		subMenu.setIcon(R.drawable.ic_launcher);
		MenuItem item = subMenu.add("Æô¶¯Activity");
		item.setIntent(new Intent(MainActivity.this, MentTest.class));

		try {
			setIconEnable(menu, true);
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return true;
	}

	private void setIconEnable(Menu menu, boolean enable)
			throws ClassNotFoundException, NoSuchMethodException,
			IllegalArgumentException, IllegalAccessException,
			InvocationTargetException {
		Class<?> clazz = Class
				.forName("com.android.internal.view.menu.MenuBuilder");
		Method m = clazz.getDeclaredMethod("setOptionalIconsVisible",
				boolean.class);
		m.setAccessible(true);
		m.invoke(menu, enable);

	}
}
