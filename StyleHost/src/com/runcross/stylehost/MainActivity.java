package com.runcross.stylehost;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
 

import dalvik.system.DexClassLoader;
import android.os.Bundle;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;

public class MainActivity extends Activity {

	private static final String PACKAGE_TEST_B = "com.example.styleclients";

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		final RelativeLayout tre=(RelativeLayout)findViewById(R.id.root);
		Button btn = (Button) findViewById(R.id.button1);
		Button btn2 = (Button) findViewById(R.id.button2);
		
		btn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				String dexPath = "/storage/sdcard0/StyleClients.apk";
				//String dexPath = "/data/skin.apk";
				String dexOuputPath = getApplicationInfo().dataDir;
				String libPath = null;
				DexClassLoader localDexClassLoader = new DexClassLoader(
						dexPath, dexOuputPath, libPath, this.getClass()
								.getClassLoader());
				try {

					Class localClass1 = localDexClassLoader
							.loadClass("com.example.styleclients.R$drawable");
					                    
					Field[] fields = localClass1.getDeclaredFields();
					for (Field f : fields) {
						// 将其属性设置为可读
						f.setAccessible(true);
						System.out.println(f.getName());
						if (f.getName().equals("bili_app_icon")) {
							int i = f.getInt(new R.id());
							
							tre.setBackground(getPackageResource().getDrawable(i));
							
						}

					}

				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
			}
		});
		// getApplication().setTheme(resid)
		
		
		btn2.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				try {
					int id = getId(getTestBContext().getResources(), "drawable", "bili_app_icon");
					
					tre.setBackground(getPackageResource().getDrawable(id));
					
				} catch (NameNotFoundException e) {
					e.printStackTrace();
				}
			}
		});
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	private Resources getPackageResource() {
		try {
			// 反射出资源管理器
			Class<?> class_AssetManager = Class
					.forName("android.content.res.AssetManager");
			Object assetMag = class_AssetManager.newInstance();
			Method method_addAssetPath = class_AssetManager.getDeclaredMethod(
					"addAssetPath", String.class);
			method_addAssetPath.invoke(assetMag, "/storage/sdcard0/StyleClients.apk");
			Resources res = getResources();

			Constructor<?> constructor_Resources = Resources.class
					.getConstructor(class_AssetManager, res.getDisplayMetrics()
							.getClass(), res.getConfiguration().getClass());

			res = (Resources) constructor_Resources.newInstance(assetMag,
					res.getDisplayMetrics(), res.getConfiguration());

			return res;
			/*
			 * String test = res.getString(id); System.out.println(test);
			 */

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 获取TestB的Context
	 * 
	 * @return
	 * @throws NameNotFoundException
	 */
	private Context getTestBContext() throws NameNotFoundException {
		return createPackageContext("com.example.styleclients",
				Context.CONTEXT_IGNORE_SECURITY | Context.CONTEXT_INCLUDE_CODE);
	}

	private int getId(Resources testb, String resType, String resName) {
		return testb.getIdentifier(resName, resType, "com.example.styleclients");
	}
}
