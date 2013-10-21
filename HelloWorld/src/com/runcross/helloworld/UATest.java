package com.runcross.helloworld;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.widget.TextView;

public class UATest extends Activity implements Callback{

	private Handler handler;
	private TextView txt;
	String result = "";
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.ua);
		
		txt = (TextView) findViewById(R.id.ua);
		handler = new Handler(this);
		
		new Thread(){
				public void run()
				{
					PrintWriter out = null;
					BufferedReader in = null;
					try
					{
						URL realUrl = new URL("http://easypp.duapp.com/hello");
						// �򿪺�URL֮�������
						URLConnection conn = realUrl.openConnection();
						// ����ͨ�õ���������
						conn.setRequestProperty("accept", "*/*");
						conn.setRequestProperty("connection", "Keep-Alive");
//						conn.setRequestProperty("user-agent",
//							"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)");
						// ����POST�������������������
						conn.setDoOutput(true);
						conn.setDoInput(true);
						// ��ȡURLConnection�����Ӧ�������
						out = new PrintWriter(conn.getOutputStream());
						// �����������
						out.print("d");  //��
						// flush������Ļ���
						out.flush();
						// ����BufferedReader����������ȡURL����Ӧ
						in = new BufferedReader(
							new InputStreamReader(conn.getInputStream()));
						String line;
						while ((line = in.readLine()) != null)
						{
							result +=line;
						}
						handler.sendEmptyMessage(1);
					}
					catch (Exception e)
					{
						System.out.println("����POST��������쳣��" + e);
						e.printStackTrace();
					}
					// ʹ��finally�����ر��������������
					finally
					{
						try
						{
							if (out != null)
							{
								out.close();
							}
							if (in != null)
							{
								in.close();
							}
						}
						catch (IOException ex)
						{
							ex.printStackTrace();
						}
					}
				}//run
		}.start();
		
		}
		
//		HttpResponse resp = null ;
//		String a = resp.getHeaders("UserAgent").toString();
	@Override
	public boolean handleMessage(Message msg) {
		txt.setText(result);
		handler.sendEmptyMessageDelayed(1, 1500);
		return false;
	}

}
