package com.example.webservicetest;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;
import org.xmlpull.v1.XmlPullParserException;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.widget.ArrayAdapter;
import android.widget.Spinner;

public class RegionProvince extends Activity implements Callback {

	private static final String SERVICE_NS = "http://WebXml.com.cn/";
	private static final String SERVICE_URL = "http://webservice.webxml.com.cn/WebServices/WeatherWS.asmx";
	private List<String> pro;
	private Handler hand;

	ArrayAdapter<String> adapter;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		pro = new ArrayList<String>();

		hand = new Handler(this);
		
		initData();
		
		String[] strs=new String[]{};
		strs=pro.toArray(strs);
		System.out.println("1111111111111"+strs.length);
		Spinner sp = (Spinner) findViewById(R.id.spinner1);
		// String[] arr = (String[]) pro.toArray();

		adapter = new ArrayAdapter<String>(this,
				android.R.layout.simple_spinner_dropdown_item, pro);

		sp.setAdapter(adapter);
		// sp.setSelection(1,true);
		// sp.setVisibility(View.VISIBLE);

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
						"getRegionProvince");
				// 传参
				// soapObject.addProperty("name", "YOOO");
				// 信封设置body 类似outputStream
				envelope.bodyOut = soapObject;

				try {
					ht.call(SERVICE_NS + "getRegionProvince", envelope);

					if (envelope.getResponse() != null) {
						SoapObject result = (SoapObject) envelope.bodyIn;
						System.out.println("parent count "
								+ result.getPropertyCount());
						
						for (int i = 0; i < result.getPropertyCount(); i++) {
							SoapObject temp = (SoapObject) result
									.getProperty(i);
							System.out.println("child count "
									+ temp.getPropertyCount());
							
							for (int j = 0; j < temp.getPropertyCount(); j++) {
								// SoapObject temp1 = (SoapObject)
								// temp.getProperty(j);
								System.out.println(temp.getProperty(j)
										.toString());
								pro.add(temp.getProperty(j).toString());
							}
							hand.sendEmptyMessage(1);
						}

					}
				} catch (IOException e) {
					e.printStackTrace();
				} catch (XmlPullParserException e) {
					e.printStackTrace();
				}
			}
		}).start();
	}

	@Override
	public boolean handleMessage(Message msg) {
		switch(msg.what){
		case 1:
			adapter.notifyDataSetChanged();
		}
		return false;
	}

}
