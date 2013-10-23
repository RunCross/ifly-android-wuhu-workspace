package run.cross.flymessage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;

import com.google.gson.Gson;

import run.cross.flymessage.bean.Page;
import run.cross.flymessage.res.Res;

/**
 * ��ȡ�ֻ��� ��֤�� ��Ŀ
 * @author RunCross
 *
 */
public class Phone {

	
	/**
	 * �ؼ��ֲ�����Ŀ
	 * @param uid �û���
	 * @param token �û���Կ
	 * @return ��Ŀ�б�
	 */
	public static Page getAllProject(String uid , String token){		
		String result = null;

		HttpClient httpclient = new DefaultHttpClient();
		HttpPost post = new HttpPost(Res.url);
		try {
			
			List<NameValuePair> params = new ArrayList<NameValuePair>();
			params.add(new BasicNameValuePair("action", "getAllProject"));
			params.add(new BasicNameValuePair("uid", uid));
			params.add(new BasicNameValuePair("token", token));
			params.add(new BasicNameValuePair("key", "����"));			
			params.add(new BasicNameValuePair("cp", "1" ));
			post.setEntity(new UrlEncodedFormEntity(params,HTTP.UTF_8));
			HttpResponse response = httpclient.execute(post);
			if(200 == response.getStatusLine().getStatusCode())
			{
				result = EntityUtils.toString(response.getEntity());
			}
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		
		Gson gson = new Gson();
        Page page = gson.fromJson(result,
                                    Page.class);       
        //System.out.println(page.getFirstPage());
		
		return page;
	}//method

	/**
	 * ��ȡ�ֻ���
	 * @param uid
	 * @param token
	 * @param pid
	 * @return
	 */
	public static String getPhone(String uid, String token, String pid) {
		String result = null;

		HttpClient httpclient = new DefaultHttpClient();
		HttpPost post = new HttpPost(Res.url);
		try {
			
			List<NameValuePair> params = new ArrayList<NameValuePair>();
			params.add(new BasicNameValuePair("action", "getMobilenum"));
			params.add(new BasicNameValuePair("pid", pid));
			params.add(new BasicNameValuePair("uid", uid));
			params.add(new BasicNameValuePair("token", token));
			post.setEntity(new UrlEncodedFormEntity(params,HTTP.UTF_8));
			HttpResponse response = httpclient.execute(post);
			if(200 == response.getStatusLine().getStatusCode())
			{
				result = EntityUtils.toString(response.getEntity());
			}
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
				
		return result;
	}

	/**
	 * ȡ�������ֻ�����֤��Ľ���
	 * @param uid
	 * @param token
	 * @return
	 */
	public static String cancelSMSRecvAll(String uid, String token) {
		String result = null;
		HttpClient httpclient = new DefaultHttpClient();
		HttpPost post = new HttpPost(Res.url);
		try {
			
			List<NameValuePair> params = new ArrayList<NameValuePair>();
			params.add(new BasicNameValuePair("action", "cancelSMSRecvAll"));
			params.add(new BasicNameValuePair("uid", uid));
			params.add(new BasicNameValuePair("token", token));
			post.setEntity(new UrlEncodedFormEntity(params,HTTP.UTF_8));
			HttpResponse response = httpclient.execute(post);
			if(200 == response.getStatusLine().getStatusCode())
			{
				result = EntityUtils.toString(response.getEntity());
			}
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return result;
	}

	/**
	 * ��ȡ��֤��
	 * @param uid
	 * @param token
	 * @param phoNum
	 * @return
	 */
	public static String getCat(String uid, String token, String phoNum) {
		String result = null;
		HttpClient httpclient = new DefaultHttpClient();
		HttpPost post = new HttpPost(Res.url);
		try {
			
			List<NameValuePair> params = new ArrayList<NameValuePair>();
			params.add(new BasicNameValuePair("action", "getVcodeAndReleaseMobile"));
			params.add(new BasicNameValuePair("mobile", phoNum));
			params.add(new BasicNameValuePair("uid", uid));
			params.add(new BasicNameValuePair("token", token));
			post.setEntity(new UrlEncodedFormEntity(params,HTTP.UTF_8));
			HttpResponse response = httpclient.execute(post);
			if(200 == response.getStatusLine().getStatusCode())
			{
				result = EntityUtils.toString(response.getEntity());
			}
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return result;
	}

	
}

