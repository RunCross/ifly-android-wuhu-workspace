package com.runcross.download;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

public class HttpPostActivity extends Activity {

	private TextView text;
	private MyLogin login;
	private String cookie;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.http);
		text = (TextView) findViewById(R.id.textView1);
		login = new MyLogin();
	}

	public void onClick(View view) {
		switch (view.getId()) {
		case R.id.login:
			login = new MyLogin();
			login.execute("post",
					"http://172.16.12.90:8080/AndroidWeb/login.jsp",
					"name=test&pass=test");
			break;
		case R.id.button2:
			login = new MyLogin();
			login.execute("get",
					"http://172.16.12.90:8080//AndroidWeb/secret.jsp", "");
			break;
		}
	}

	class MyLogin extends AsyncTask<String, Integer, String> {

		ProgressDialog pdialog;
		long nEndPos;
		private String st;
		@Override
		protected String doInBackground(String... params) {

			st = new String();
			try {

				int startPose = 0;

				URL url = new URL(params[1]);
				// 打开连接
				HttpURLConnection httpConnection = (HttpURLConnection) url
						.openConnection();
				
				if(cookie==null){
					httpConnection.setRequestProperty("User-Agent",
							"Internet Explorer");
					httpConnection.setRequestMethod("POST");
					httpConnection.setDoInput(true);
					httpConnection.setDoOutput(true);
					httpConnection.getOutputStream()
							.write(params[2].getBytes());
					httpConnection.getOutputStream().flush();
					httpConnection.getOutputStream().close();
					cookie = httpConnection.getHeaderField("Set-Cookie");
				}else {
					httpConnection.setRequestProperty("Cookie", cookie);
					
				}
				System.out.println(params[0]+"  "+cookie);
				
				
				httpConnection.setConnectTimeout(5000);
								
				InputStream input = httpConnection.getInputStream();
				// 写入文件
				byte[] b = new byte[1024];
			System.out.println(params[1]);
				// 定位
				// 读取网络文件,写入指定的文件中
				while ((input.read(b, 0, 1024)) > 0) {
					st = st+new String(b);
				}// while
				input.close();
				httpConnection.disconnect();
			} catch (Exception e) {
				e.printStackTrace();
			}// try

			return null;
		}

		/**
		 * 在任务执行前激活的函数
		 */
		@Override
		protected void onPreExecute() {
			super.onPreExecute();

		}

		/**
		 * 当进度改变
		 */
		@Override
		protected void onProgressUpdate(Integer... values) {
			super.onProgressUpdate(values);

		}

		/**
		 * 当任务执行完
		 */
		@Override
		protected void onPostExecute(String result) {
			super.onPostExecute(result);
			text.setText(st);
		}
	}
}
