package com.runcross.webviewtest;

import android.app.Activity;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;

public class MusicListActivity extends Activity {

	private static MediaPlayer mp;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		WebView webView = (WebView) findViewById(R.id.webView1);
		webView.loadUrl("http://172.16.12.72:8080/CXFService/musiclist.html");
//		webView.setWebViewClient(new WebViewClient() {
//			@Override
//			public boolean shouldOverrideUrlLoading(WebView view, String url) {
//				view.loadUrl(url);
//				return super.shouldOverrideUrlLoading(view, url);
//			}
//
//			@Override
//			public void onPageFinished(WebView view, String url) {
//				if (url.endsWith(".mp3")) {
//					mp = MediaPlayer.create(MusicListActivity.this,
//							Uri.parse(url));
//					mp.start();
//				}
//
//				Toast.makeText(MusicListActivity.this, url, Toast.LENGTH_SHORT)
//						.show();
//				super.onPageFinished(view, url);
//
//				super.onPageFinished(view, url);
//			}
//		});

		webView.getSettings().setDefaultTextEncodingName("gb2312");

		webView.setWebViewClient(new WebViewClient() {
			@Override
			public void onPageFinished(WebView view, String url) {
				if (url.endsWith(".mp3")) {
					mp = MediaPlayer.create(MusicListActivity.this,
							Uri.parse(url));
					mp.start();
				}
				Toast.makeText(MusicListActivity.this, url, Toast.LENGTH_SHORT)
						.show();
				super.onPageFinished(view, url);
			}

		});
	}
}
