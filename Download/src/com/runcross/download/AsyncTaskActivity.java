package com.runcross.download;

import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.os.Bundle;
//http://172.16.12.90:8080/AndroidWeb/login.jsp?name=test&pass=test
public class AsyncTaskActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		MyDownload down = new MyDownload();
		try {
			down.execute(new URL(
					"http://down.360safe.com/360mobilemgr/360box_web.apk"));
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
	}

	class MyDownload extends AsyncTask<URL, Integer, String> {

		ProgressDialog pdialog;
		long nEndPos;

		@Override
		protected String doInBackground(URL... params) {

			try {

				int startPose = 0;

				URL url = params[0];
				// ������
				HttpURLConnection httpConnection = (HttpURLConnection) url
						.openConnection();
				httpConnection.setConnectTimeout(5000);
				httpConnection.setRequestMethod("GET");

				httpConnection.setRequestProperty("User-Agent",
						"Internet Explorer");
				String sProperty = "bytes=" + startPose + "-";
				// ���߷���������ļ���nStartPos�ֽڿ�ʼ��
				httpConnection.setRequestProperty("RANGE", sProperty);
				// ����ļ�����
				nEndPos = httpConnection.getContentLength();
				
				System.out.println("length " + nEndPos);
				System.out.println(sProperty);
				System.out.println(startPose);
				
				InputStream input = httpConnection.getInputStream();
				// д���ļ�
				byte[] b = new byte[1024];
				int nRead = 0;
				// ��λ
				// ��ȡ�����ļ�,д��ָ�����ļ���
				while ((nRead = input.read(b, 0, 1024)) > 0
						&& startPose < nEndPos) {
					startPose += nRead;
					publishProgress(startPose);
					System.out.println(startPose);
				}// while
				input.close();
				httpConnection.disconnect();
			} catch (Exception e) {
				e.printStackTrace();
			}// try

			return null;
		}

		/**
		 * ������ִ��ǰ����ĺ���
		 */
		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			pdialog = new ProgressDialog(AsyncTaskActivity.this);
			pdialog.setTitle("��");
			pdialog.setMessage("�ȴ�");
			pdialog.setCancelable(false);
			pdialog.setMax(4545396);
			pdialog.setProgressStyle(ProgressDialog.STYLE_HORIZONTAL);
			pdialog.setIndeterminate(false);
			pdialog.show();

		}

		/**
		 * �����ȸı�
		 */
		@Override
		protected void onProgressUpdate(Integer... values) {
			super.onProgressUpdate(values);

			pdialog.setProgress(values[0]);
			System.out.println("---------" + values[0]);

		}

		/**
		 * ������ִ����
		 */
		@Override
		protected void onPostExecute(String result) {
			super.onPostExecute(result);
			pdialog.dismiss();
		}
	}
}
