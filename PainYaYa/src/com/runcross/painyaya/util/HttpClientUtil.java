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

	// ����HttpClient����
	private static HttpClient httpClient;
	public static final String HOST = "http://app.mdoll-br.com";
	private static String uid;

	/**
	 * ���³�ʼ��initNew
	 */
	public static void initNet() {
		httpClient = new DefaultHttpClient();

		uid = "0";
	}

	/**
	 * ����uid
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
//						// ִ��get����,���ҽ���response������
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
//							// ��ȡ���ؽ���������ж�״̬
//							if (response.getStatusLine().getStatusCode() == 200) {
//								// 200��������ɹ�,getEntityָ���ص�����
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
//							// "����������ʧ��!",Toast.LENGTH_SHORT).show();
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
	 * URLConnection ��ʽ���� post����
	 * @param url ��ַ
	 * @param message ������Ϣ
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
							// �򿪺�URL֮�������
							URLConnection conn = realUrl.openConnection();
							// ����ͨ�õ���������
							conn.setRequestProperty("platform","Android");
							if (null != uid) {
								conn.setRequestProperty("User-Id", uid);
							}
							conn.setRequestProperty("Connection","Keep-Alive");
							conn.setRequestProperty("Accept-Encoding", "gzip");
							conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
							// ����POST�������������������
							conn.setDoOutput(true);
							conn.setDoInput(true);
							// ��ȡURLConnection�����Ӧ�������
							
//							OutputStream output = conn.getOutputStream();
//							output.write(message);
							
//							output.flush();
							out = new PrintWriter(conn.getOutputStream());
							out.write(message);
							
						
//							// �����������
////							String st = "\\"+"203\\"+"250userName\\"+"243Aoi\\"+"245UsrID\\"+"240\\"+"246TimeID\\000";
////							System.out.println("st-"+st);
//							out.print(message);  
////						ԭʼ\203\250userName\243Aoi\245UsrID\240\246TimeID\000
////						�ҵ�\302\203\302\250userName\302\243Aoi\302\245UsrID\302\240\302\246TimeID\000
//							// flush������Ļ���
							out.flush();
							// ����BufferedReader����������ȡURL����Ӧ
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

						
						return result;
					}

				});
		new Thread(task).start();
		return task.get();

	}

}
