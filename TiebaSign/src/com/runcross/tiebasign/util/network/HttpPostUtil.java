package com.runcross.tiebasign.util.network;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public class HttpPostUtil {

	//http����
	private static HttpClient http;
	//�ѵ��ްɵĵ�ַ
	private static final String MYLIKE = "http://tieba.baidu.com/f/like/mylike";
	//ǩ����ַ
	private static final String SIGN = "http://tieba.baidu.com/sign/add";
	//tbs��ַ
	private static final String TBS = "http://tieba.baidu.com/dc/common/tbs";
	
	// http://tieba.baidu.com/dc/common/tbs?t=1386225417
	// http://tieba.baidu.com/sign/add

	static {
		http = new DefaultHttpClient();
	}

	/**
	 * post������
	 * @param url ��ַ
	 * @param values ����
	 * @return 
	 * @throws InterruptedException
	 * @throws ExecutionException
	 */
	public static String post(final String url, final List<NameValuePair> values)
			throws InterruptedException, ExecutionException {

		FutureTask<String> task = new FutureTask<String>(
				new Callable<String>() {
					@Override
					public String call() throws Exception {
						String result = "";

						HttpPost post = new HttpPost(url);
//						post.setHeader("User-Agent", UserAgent);

						// ���ò���
						post.setEntity(new UrlEncodedFormEntity(values));
						// ��������
						HttpResponse response = http.execute(post);
						// ��ȡ��������
						HttpEntity entity = response.getEntity();
						result = EntityUtils.toString(entity);
						if (entity != null) {
							entity.consumeContent();
						}

						// else if(response.getStatusLine().getStatusCode() ==
						// 500){
						// Toast.makeText(context,
						// "����������ʧ��!",Toast.LENGTH_SHORT).show();
						// }
						return result;
					}
				});
		new Thread(task).start();
		return task.get();
	}

	/**
	 * ͨ���û��������½
	 * @param name
	 * @param pwd
	 * @return
	 */
	public boolean login(String name,String pwd){
		
		
		return true;
	}
	
	/**
	 * ͨ��cookie��½
	 * @param cookie
	 * @return
	 */
	public boolean cookieLogin(String cookie){
		//����Cookie
		http.getParams().setParameter("Cookie", cookie);
		
		return true;
	}
	
	/**
	 * ��ȡ�ҵ��޵������б�
	 * @return
	 */
	public static List<String> getMyLike(){
		List<String> mine = new ArrayList<String>();
		
		return mine;
	}
	
	/**
	 *  �Զ�ǩ��
	 * @param mine ���������б�
	 * @return
	 */
	
	public static boolean autoSign(List<String> mine){
		
		
		
		return true;
	}
	
	/**
	 * ��ȡtbs
	 * @return
	 */
	public static String getTbs(){
		String tbs = null;
		
		return tbs;
	}
}
