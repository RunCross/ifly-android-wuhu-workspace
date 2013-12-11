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

	// 创建HttpClient对象
	private static  HttpClient httpClient;	
	public static final String HOST = "app.mdoll-br.com"; 
	private static String uid; 

	/**
	 * 重新初始化initNew
	 */
	public static void initNet(){
		httpClient = new DefaultHttpClient();
		uid = null;
	}
	
	/**
	 * 设置uid
	 * @param uid
	 */
	public void initUser(String uid){		
		this.uid = uid; 
	}
    
	/*
	 * 向服务端发送请求，用FutureTask<String>获取发送请求后得到的响应
	 * 
	 */
	public static String get(final String massage) throws Exception {
				
		FutureTask<String> task = new FutureTask<String>(
				new Callable<String>() {
					@Override
					public String call() throws Exception {
						String result="";
						
						
						HttpGet get = new HttpGet(HOST+massage);
						// 执行get请求,并且接收response的请求
						if(null != uid){
							get.setHeader("User-Id", uid);							
						}						
						HttpResponse response = httpClient.execute(get);
						
						// 获取返回结果，首先判断状态
						if (response.getStatusLine().getStatusCode() == 200) {
							// 200代表请求成功,getEntity指返回的内容
							HttpEntity entity = response.getEntity();
							if (entity != null) {
												
								result = EntityUtils.toString(entity,"utf-8");
								get.abort();
								entity.consumeContent();
							}							
						}
//						else if(response.getStatusLine().getStatusCode() == 500){
//							Toast.makeText(context, "服务器连接失败!",Toast.LENGTH_SHORT).show();
//						}
						return result;
					}
				});
		new Thread(task).start();
		return task.get();

	}
	
}
