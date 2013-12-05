package com.example.webservicetest;

import java.io.IOException;

import org.ksoap2.SoapEnvelope;
import org.ksoap2.serialization.Marshal;
import org.ksoap2.serialization.MarshalDate;
import org.ksoap2.serialization.MarshalFloat;
import org.ksoap2.serialization.PropertyInfo;
import org.ksoap2.serialization.SoapObject;
import org.ksoap2.serialization.SoapPrimitive;
import org.ksoap2.serialization.SoapSerializationEnvelope;
import org.ksoap2.transport.HttpTransportSE;
import org.xmlpull.v1.XmlPullParserException;

import cross.run.test.Product;

import android.os.Bundle;
import android.app.Activity;

public class MainActivity extends Activity {

	private static final String SERVICE_NS="http://test.run.cross/";
	private static final String SERVICE_URL="http://172.16.12.72:8080/ProductService?wsdl";
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		queryByName();
		validate();
		
	}

	public void queryByName(){
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				//投递信封的类
				HttpTransportSE ht = new HttpTransportSE(SERVICE_URL);
				//定义信封
				final SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(SoapEnvelope.VER11);
				//服务器断的书写语言
				envelope.dotNet = false;
				//构建要用的方法
				SoapObject soapObject = new SoapObject(SERVICE_NS, "queryByName");
				//传参
				soapObject.addProperty("name", "YOOO");
				//信封设置body 类似outputStream
				envelope.bodyOut = soapObject;
				
				try {
					ht.call(SERVICE_NS + "queryByName", envelope);
					
					if(envelope.getResponse() != null){
						SoapObject result = (SoapObject) envelope.bodyIn;
						System.out.println("parent count "+result.getPropertyCount());
						for(int i=0;i<result.getPropertyCount();i++){
							SoapObject temp = (SoapObject) result.getProperty(i);
							System.out.println("child count "+temp.getPropertyCount());
//							SoapPrimitive sp =   (SoapPrimitive) temp.getProperty(0);							
							for(int j=0;j<temp.getPropertyCount();j++){
//								SoapObject temp1 = (SoapObject) temp.getProperty(j);
								System.out.println(temp.getProperty(j).toString());
							}
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
	public void validate(){
		new Thread(new Runnable() {
			
			@Override
			public void run() {
				//投递信封的类
				HttpTransportSE ht = new HttpTransportSE(SERVICE_URL);
				//定义信封
				final SoapSerializationEnvelope envelope = new SoapSerializationEnvelope(SoapEnvelope.VER11);
				//服务器断的书写语言
				envelope.dotNet = false;
				//构建要用的方法
				SoapObject soapObject = new SoapObject(SERVICE_NS, "validate");
				
				Product product = new Product(3,"Cross",8);
				
				PropertyInfo info = new PropertyInfo();
				info.setName("product");
				info.setValue(product);
				
				//传参
				soapObject.addProperty(info);
				//代表客户端和服务器Product映射
				envelope.addMapping(SERVICE_NS, "Product", Product.class);
				//float属性    注册
				Marshal floatmarshal = new MarshalFloat();
				floatmarshal.register(envelope);
				
//				Marshal datamarshal = new MarshalDate();
//				floatmarshal.register(envelope);
				
				
				//信封设置body 类似outputStream
				envelope.bodyOut = soapObject;
				
				try {
					ht.call(SERVICE_NS + "validate", envelope);
					
					SoapObject result = (SoapObject) envelope.bodyIn;
					System.out.println(result.getProperty(0).toString());
						
				} catch (IOException e) {
					e.printStackTrace();
				} catch (XmlPullParserException e) {
					e.printStackTrace();
				}
			}
		}).start();
		
		
		
	}
}
