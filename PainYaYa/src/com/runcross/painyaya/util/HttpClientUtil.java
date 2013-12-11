package com.runcross.painyaya.util;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public class HttpClientUtil {

	// ����HttpClient����
	private static  HttpClient httpClient;	
	public static final String HOST = "app.mdoll-br.com"; 
	private static String uid; 

	/**
	 * ���³�ʼ��initNew
	 */
	public static void initNet(){
		httpClient = new DefaultHttpClient();
		uid = null;
	}
	
	/**
	 * ����uid
	 * @param uid
	 */
	public void initUser(String uid){		
		this.uid = uid; 
	}
    
	/*
	 * �����˷���������FutureTask<String>��ȡ���������õ�����Ӧ
	 * 
	 */
	public static String get(final String massage) throws Exception {
				
		FutureTask<String> task = new FutureTask<String>(
				new Callable<String>() {
					@Override
					public String call() throws Exception {
						String result="";
						
						
						HttpGet get = new HttpGet(HOST+massage);
						// ִ��get����,���ҽ���response������
						if(null != uid){
							get.setHeader("User-Id", uid);							
						}						
						HttpResponse response = httpClient.execute(get);
						
						// ��ȡ���ؽ���������ж�״̬
						if (response.getStatusLine().getStatusCode() == 200) {
							// 200��������ɹ�,getEntityָ���ص�����
							HttpEntity entity = response.getEntity();
							if (entity != null) {
												
								result = EntityUtils.toString(entity,"utf-8");
								get.abort();
								entity.consumeContent();
							}							
						}
//						else if(response.getStatusLine().getStatusCode() == 500){
//							Toast.makeText(context, "����������ʧ��!",Toast.LENGTH_SHORT).show();
//						}
						return result;
					}
				});
		new Thread(task).start();
		return task.get();

	}
	
}
