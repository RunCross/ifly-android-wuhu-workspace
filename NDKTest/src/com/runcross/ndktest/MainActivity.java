package com.runcross.ndktest;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.widget.Toast;

public class MainActivity extends Activity {

	static{
		System.loadLibrary("myjni");
	}
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		JNIWriter writer = new JNIWriter();
		String st = writer.write("Test");
		System.out.println("sss");
		System.out.println("return--"+st);
		
	}


}
