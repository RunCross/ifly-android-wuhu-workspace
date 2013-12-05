package com.example.webservicetest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;
import org.xmlpull.v1.XmlPullParserException;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ListView;

public class StudentActivity extends Activity {
	private static final String SERVICE_NS = "http://iflysse.com/";
	private static final String SERVICE_URL = "http://tool.iflysse.com/DailyReport.asmx";
	ListView stulist;
	List<Student> list;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.stu);
		list = new ArrayList<Student>();

		initData();
		stulist = (ListView) findViewById(R.id.stuList);

	}

	private void initData() {
		new Thread(new Runnable() {

			@Override
			public void run() {
				// 投递信封的类
				HttpTransportSE ht = new HttpTransportSE(SERVICE_URL);
				// 定义信封
				final SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(
						SoapEnvelope.VER11);
				// 服务器端的书写语言
				envelope.dotNet = false;
				// 构建要用的方法
				SoapObject soapObject = new SoapObject(SERVICE_NS,
						"UsLogin");
				// 传参
				 soapObject.addProperty("userName", "RunCross");
				 soapObject.addProperty("passWord", "rgj3313301");
				// 信封设置body 类似outputStream
				envelope.bodyOut = soapObject;

				try {
					ht.call(SERVICE_NS + "UsLogin", envelope);
					if (envelope.getResponse() != null) {
						// JSONObject temp = (JSONObject) envelope.bodyIn;
						SoapObject result = (SoapObject) envelope.bodyIn;
						System.out.println(result.toString());
						System.out.println(result.getPropertyCount());
						
//						JSONArray objs = (JSONArray)result.getProperty(0);
//						JSONArray objs = null;
//						try {
//							objs = new JSONArray(result.getProperty(0).toString());
//						} catch (JSONException e1) {
//							// TODO Auto-generated catch block
//							e1.printStackTrace();
//						}
//						JSONObject obj = null;
//						try {
//							obj = (JSONObject) objs.get(0);
//						} catch (JSONException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//						try {
//							System.out.println(obj.get("stuName"));
//						} catch (JSONException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//						System.out.println(result.getProperty(0).toString());
//						try {
//							JSONArray objs = new JSONArray(result.getProperty(0).toString());
//							JSONObject obj = (JSONObject) objs.get(0);
//							System.out.println(obj.get("stuName"));
//						} catch (JSONException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
						
						// System.out.println("parent count "
						// + result.getPropertyCount());
						//
						// for (int i = 0; i < result.getPropertyCount(); i++) {
						// JSONObject temp = (JSONObject) result
						// .getProperty(i);
						// try {
						// System.out.println(temp.get("name"));
						// } catch (JSONException e) {
						// // TODO Auto-generated catch block
						// e.printStackTrace();
						// }
						// hand.sendEmptyMessage(1);
						// }

					}
				} catch (IOException e) {
					e.printStackTrace();
				} catch (XmlPullParserException e) {
					e.printStackTrace();
				}
			}
		}).start();
	}
}
