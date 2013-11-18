package com.runcross.servicetest.mediaplaytest;

import java.io.IOException;

import com.runcross.servicetest.R;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;

public class MediaPlayActivityTest extends Activity {

	MediaPlayer mp;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		mp = new MediaPlayer();
		// 从raw加载
		mp = MediaPlayer.create(MediaPlayActivityTest.this, R.raw.alarm);
		// 从sd卡加载
		try {
			// 重置
			mp.reset();
			mp.setDataSource("");
			// 预加载
			mp.prepare();
			mp.start();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		// 从网络加载
		try {

			mp.reset();
			mp.setDataSource(
					MediaPlayActivityTest.this,
					Uri.parse("http://i5.market.mi-img.com/download/fa0/506c95ac3041df5a8d89a39afc28b10db8168896/pv.mp3"));
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		mp.seekTo(0);
		mp.pause();
		mp.stop();

		// mp.setOnCompletionListener (new MediaPlayer.OnCompletionListener() ){
		//
		// }
		// 监听是否播放完毕
		mp.setOnCompletionListener(new OnCompletionListener() {
			@Override
			public void onCompletion(MediaPlayer mp) {

			}
		});

		ContentResolver cr = getContentResolver();
		String[] projection = 

	        { MediaStore.Audio.AudioColumns._ID, 

	                MediaStore.Audio.AudioColumns.ARTIST, 

	                MediaStore.Audio.AudioColumns.TITLE, 

	                MediaStore.Audio.AudioColumns.DURATION ,
	                
	                MediaStore.Audio.AudioColumns.DATA,
	                
	                MediaStore.Audio.AudioColumns.ALBUM
	                };
		Cursor cursor = cr.query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
				projection, null, null, null);
		
		//发送广播给系统扫描指定的文件夹，并写入数据库
		sendBroadcast(new Intent(Intent.ACTION_MEDIA_MOUNTED,
				Uri.parse("file://"
						+ Environment.getExternalStorageDirectory()
								.getAbsolutePath())));

		
		//接受系统广播，扫描结束
		IntentFilter intentfilter = new IntentFilter(
				Intent.ACTION_MEDIA_SCANNER_STARTED);
		intentfilter.addAction(Intent.ACTION_MEDIA_SCANNER_FINISHED);
		intentfilter.addDataScheme("file");
		Reciver receiver = new Reciver();
		registerReceiver(receiver, intentfilter);
	}
	
	public class Reciver extends BroadcastReceiver{

		@Override
		public void onReceive(Context context, Intent intent) {
			
		}
		
	}
}
