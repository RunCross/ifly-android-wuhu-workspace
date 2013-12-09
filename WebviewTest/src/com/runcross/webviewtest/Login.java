package com.runcross.webviewtest;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;

public class Login extends Activity {

	@SuppressLint({ "JavascriptInterface", "SetJavaScriptEnabled" })
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		WebView webView = (WebView) findViewById(R.id.webView1);
		webView.loadUrl("http://172.16.12.72:8080/CXFService/login.html");
		webView.getSettings().setJavaScriptEnabled(true);
		webView.addJavascriptInterface(new MyObject(this), "MyJSOBJ");
		
	}
}
