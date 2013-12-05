package com.runcross.download;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.URL;

import android.os.Bundle;
import android.os.Environment;
import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;

public class MainActivity extends Activity {

	private ProgressBar progress;
	private long startPose;
	private boolean isdown;
	private Button start;
	private Button pause;
	private String filePath;
	private String fileName;
	private Thread download;
	private String surl;
	private SharedPreferences shared;
	private Editor editor;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		initData();
		initSub();
	}

	/**
	 * 初始化组件
	 */
	private void initSub() {
		start = (Button) findViewById(R.id.begin);
		pause = (Button) findViewById(R.id.pause);
		pause.setEnabled(false);
		progress = (ProgressBar) findViewById(R.id.progress);
		
	}

	/**
	 * 初始化数据
	 */
	private void initData() {
		surl = "http://down.360safe.com/360mobilemgr/360box_web.apk";
		
		filePath = Environment.getExternalStorageDirectory().getPath()
				+ "/stuM";
		fileName = "download.apk";
		File file = new File(filePath);
		if (!file.exists()) {
			file.mkdirs();
		}
		file = null;
		file = new File(filePath
				+ "//" + fileName);
		if(!file.exists()){
			try {
				file.createNewFile();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println(file.getPath());
		isdown = false;
		
		shared = getSharedPreferences("data", MODE_PRIVATE);
		startPose = shared.getLong("startPose", 0);
		startPose = 0;
		editor = shared.edit();
	}

	public void onClick(View view) {
		switch (view.getId()) {
		case R.id.begin:
			isdown = true;
			start.setEnabled(false);
			pause.setEnabled(true);
			download = new Thread(downloadCont);
			download.start();
			break;
		case R.id.pause:
			isdown = false;
			download.interrupt();
			pause.setEnabled(false);
			start.setEnabled(true);
			break;
		}
	}

	private Runnable downloadCont = new Runnable() {

		@Override
		public void run() {
			try {
				URL url = new URL(surl);
				// 打开连接
				HttpURLConnection httpConnection = (HttpURLConnection) url
						.openConnection();
				// 获得文件长度
//				long nEndPos = getFileSize(surl);
//				long nEndPos = httpConnection.getContentLength();
//				System.out.println("length "+nEndPos);
				RandomAccessFile oSavedFile = new RandomAccessFile(filePath
						+ "//" + fileName, "rw");
				System.out.println(filePath
						+ "//" + fileName);
				httpConnection.setRequestProperty("User-Agent",
						"Internet Explorer");
				String sProperty = "bytes=" + startPose+"-";
				// 告诉服务器这个文件从nStartPos字节开始传
				httpConnection.setRequestProperty("RANGE", sProperty);
				// 获得文件长度
				long nEndPos = httpConnection.getContentLength();
				System.out.println("length "+nEndPos);
				System.out.println(sProperty);
				System.out.println(startPose);
				InputStream input = httpConnection.getInputStream();
				// 写入文件
				byte[] b = new byte[1024];
				int nRead = 0;
				//定位
				oSavedFile.seek(startPose);
				// 读取网络文件,写入指定的文件中
				while ((nRead = input.read(b, 0, 1024)) > 0
						&& startPose < nEndPos && isdown) {
					oSavedFile.write(b, 0, nRead);
					startPose += nRead;
					progress.setProgress((int)startPose);
					System.out.println(nRead);
				}//while
				oSavedFile.close();
				input.close();
				httpConnection.disconnect();
			} catch (Exception e) {
				e.printStackTrace();
			}//try
			
			editor.putLong("startPose", startPose);
			editor.commit();
		}// run

//		public long getFileSize(String sURL) {
//			int nFileLength = -1;
//			try {
//				URL url = new URL(sURL);
//				HttpURLConnection httpConnection = (HttpURLConnection) url
//						.openConnection();
//				httpConnection.setRequestProperty("User-Agent",
//						"Internet Explorer");
//				int responseCode = httpConnection.getResponseCode();
//				if (responseCode >= 400) {
//					System.err.println("Error Code : " + responseCode);
//					return -2; // -2 represent access is error
//				}
//				String sHeader;
//				for (int i = 1;; i++) {
//					sHeader = httpConnection.getHeaderFieldKey(i);
//					if (sHeader != null) {
//						if (sHeader.equals("Content-Length")) {
//							nFileLength = Integer.parseInt(httpConnection
//									.getHeaderField(sHeader));
//							break;
//						}
//					} else
//						break;
//				}
//			} catch (IOException e) {
//				e.printStackTrace();
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//			System.out.println(nFileLength);
//			progress.setMax(nFileLength);
//			return nFileLength;
//		}
	};
}
