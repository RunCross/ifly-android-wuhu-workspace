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

	//http连接
	private static HttpClient http;
	//已点赞吧的地址
	private static final String MYLIKE = "http://tieba.baidu.com/f/like/mylike";
	//签到地址
	private static final String SIGN = "http://tieba.baidu.com/sign/add";
	//tbs地址
	private static final String TBS = "http://tieba.baidu.com/dc/common/tbs";
	
	// http://tieba.baidu.com/dc/common/tbs?t=1386225417
	// http://tieba.baidu.com/sign/add

	static {
		http = new DefaultHttpClient();
	}

	/**
	 * post请求类
	 * @param url 地址
	 * @param values 参数
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

						// 设置参数
						post.setEntity(new UrlEncodedFormEntity(values));
						// 发送请求
						HttpResponse response = http.execute(post);
						// 获取返回数据
						HttpEntity entity = response.getEntity();
						result = EntityUtils.toString(entity);
						if (entity != null) {
							entity.consumeContent();
						}

						// else if(response.getStatusLine().getStatusCode() ==
						// 500){
						// Toast.makeText(context,
						// "服务器连接失败!",Toast.LENGTH_SHORT).show();
						// }
						return result;
					}
				});
		new Thread(task).start();
		return task.get();
	}

	/**
	 * 通过用户名密码登陆
	 * @param name
	 * @param pwd
	 * @return
	 */
	public boolean login(String name,String pwd){
		
		
		return true;
	}
	
	/**
	 * 通过cookie登陆
	 * @param cookie
	 * @return
	 */
	public boolean cookieLogin(String cookie){
		//设置Cookie
		http.getParams().setParameter("Cookie", cookie);
		
		return true;
	}
	
	/**
	 * 获取我点赞的贴吧列表
	 * @return
	 */
	public static List<String> getMyLike(){
		List<String> mine = new ArrayList<String>();
		
		return mine;
	}
	
	/**
	 *  自动签到
	 * @param mine 贴吧名字列表
	 * @return
	 */
	
	public static boolean autoSign(List<String> mine){
		
		
		
		return true;
	}
	
	/**
	 * 获取tbs
	 * @return
	 */
	public static String getTbs(){
		String tbs = null;
		
		return tbs;
	}
}
