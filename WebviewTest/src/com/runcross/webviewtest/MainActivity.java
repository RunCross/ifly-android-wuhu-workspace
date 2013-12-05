package com.runcross.webviewtest;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.webkit.WebView;

public class MainActivity extends Activity {

	private WebView web;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		web = (WebView) findViewById(R.id.webView1);
		web.getSettings().setDefaultTextEncodingName("gb2312") ;
		web.loadUrl("http://172.16.12.72:8080/CXFService/index.html");
		
		
	}


}
