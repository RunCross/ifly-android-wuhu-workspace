package com.runcross.painyaya.util;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ContentProducer;
import org.apache.http.entity.EntityTemplate;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public class HttpClientUtil {

	// 创建HttpClient对象
	private static HttpClient httpClient;
	public static final String HOST = "http://app.mdoll-br.com";
	private static String uid;

	/**
	 * 重新初始化initNew
	 */
	public static void initNet() {
		httpClient = new DefaultHttpClient();

		uid = "0";
	}

	/**
	 * 设置uid
	 * 
	 * @param uid
	 */
	public void initUser(String uid) {
		this.uid = uid;
	}

//	public static String post(final String url, final String message)
//			throws Exception {
//
//		FutureTask<String> task = new FutureTask<String>(
//				new Callable<String>() {
//					@Override
//					public String call() throws Exception {
//						String result = "";
//
//						HttpPost post = new HttpPost(HOST + url);
//						// 执行get请求,并且接收response的请求
//						System.out.println("host-" + HOST + url + message);
//						if (null != uid) {
//							post.setHeader("User-Id", uid);
//						}
//						post.setHeader("Connection","Keep-Alive");
//						post.setHeader("platform","Android");
//						post.setHeader("Accept-Encoding", "gzip");
//
//						try {
//							ContentProducer cp = new ContentProducer() {
//								public void writeTo(OutputStream outstream)
//										throws IOException {
//									
//									Writer writer = new OutputStreamWriter(
//											outstream, "utf-8");
//									writer.write(message);
//									writer.flush();
//								}
//							};
//
//							post.setEntity(new EntityTemplate(cp));
//							HttpResponse response = httpClient.execute(post);
//
//							// 获取返回结果，首先判断状态
//							if (response.getStatusLine().getStatusCode() == 200) {
//								// 200代表请求成功,getEntity指返回的内容
//
//								HttpEntity entity = response.getEntity();
//								if (entity != null) {
//									
//									result = EntityUtils.toString(entity,
//											"utf-8");
//									 post.abort();
//									 entity.consumeContent();
//								}
//							}
//							// else if(response.getStatusLine().getStatusCode()
//							// == 500){
//							// Toast.makeText(context,
//							// "服务器连接失败!",Toast.LENGTH_SHORT).show();
//							// }
//						} catch (ClientProtocolException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						} catch (IOException e) {
//							// TODO Auto-generated catch block
//							e.printStackTrace();
//						}
//						return result;
//					}
//
//				});
//		new Thread(task).start();
//		return task.get();
//	}
	
	/**
	 * URLConnection 方式发送 post请求
	 * @param url 地址
	 * @param message 参数信息
	 * @return 
	 * @throws InterruptedException
	 * @throws ExecutionException
	 */
	public static String urlPost(final String url, final String message) throws InterruptedException, ExecutionException{
		FutureTask<String> task = new FutureTask<String>(
				new Callable<String>() {
					@Override
					public String call() throws Exception {
						String result = "";

						PrintWriter out = null;
						BufferedReader in = null;
						try
						{
							URL realUrl = new URL(HOST+url);
							// 打开和URL之间的连接
							URLConnection conn = realUrl.openConnection();
							// 设置通用的请求属性
							conn.setRequestProperty("platform","Android");
							if (null != uid) {
								conn.setRequestProperty("User-Id", uid);
							}
							conn.setRequestProperty("Connection","Keep-Alive");
							conn.setRequestProperty("Accept-Encoding", "gzip");
							conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
							// 发送POST请求必须设置如下两行
							conn.setDoOutput(true);
							conn.setDoInput(true);
							// 获取URLConnection对象对应的输出流
							
//							OutputStream output = conn.getOutputStream();
//							output.write(message);
							
//							output.flush();
							out = new PrintWriter(conn.getOutputStream());
							out.write(message);
							
						
//							// 发送请求参数
////							String st = "\\"+"203\\"+"250userName\\"+"243Aoi\\"+"245UsrID\\"+"240\\"+"246TimeID\\000";
////							System.out.println("st-"+st);
//							out.print(message);  
////						原始\203\250userName\243Aoi\245UsrID\240\246TimeID\000
////						我的\302\203\302\250userName\302\243Aoi\302\245UsrID\302\240\302\246TimeID\000
//							// flush输出流的缓冲
							out.flush();
							// 定义BufferedReader输入流来读取URL的响应
							in = new BufferedReader(
								new InputStreamReader(conn.getInputStream()));
							String line;
							while ((line = in.readLine()) != null)
							{
								result +=line;
							}
						}
						catch (Exception e)
						{
							System.out.println("发送POST请求出现异常！" + e);
							e.printStackTrace();
						}
						// 使用finally块来关闭输出流、输入流
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

						
						return result;
					}

				});
		new Thread(task).start();
		return task.get();

	}

}
