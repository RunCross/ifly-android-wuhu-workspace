package net;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.ArrayList;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import net.DeKey.E_CODE;

import org.apache.http.NameValuePair;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

import com.runcross.maback.mini.data.DeviecInfo;

public class Connect {

	//游戏版本
	private static final String UserAgent = DeviecInfo.getUserAgent();
	
//	private static final String Auth = "eWa25vrE";
//	private static final String Key = "2DbcAh3G";
	private static final String Auth = "iW7B5MWJ";
	private static final String Key = "8KdtjVfX";
	public static boolean isLogin = false;
	
	private static DeKey dk;
	private static DefaultHttpClient client;
	
	public Connect() {
		client = new DefaultHttpClient();
		HttpParams hp = client.getParams();
		hp.setParameter("http.socket.timeout", 0x7530);
		hp.setParameter("http.connection.timeout", 0x7530);
	}
	
	//加密参数
	private static List<NameValuePair> requestProcess(List<NameValuePair> source) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, BadPaddingException {
		ArrayList<NameValuePair> result = new ArrayList<NameValuePair>();
		//初始化guid
//		result.add(new BasicNameValuePair("K",DeKey.get_K()));
//		dk = new DeKey();
//		Iterator<NameValuePair> i  = source.iterator();
//		E_CODE type = E_CODE.AES;
//		if(isLogin){
//			type = E_CODE.RSA_EP;
//		}
//		while(i.hasNext()) {
//			NameValuePair n = i.next();
//			System.out.println(n.getName()+"-"+n.getValue());
//			result.add(new BasicNameValuePair(n.getName(), Base64
//					.encodeToString(DeKey.new_encrypt_cn(type, n.getValue()),
//							android.util.Base64.DEFAULT)));
//		}
//		result =  dk.addnew_crypt_K_param(source,url);
		return result;
	}

	//访问请求
	public byte[] connectToServer(String url, List<NameValuePair> content) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, BadPaddingException  {
		List<NameValuePair> post = null;
//		post = requestProcess(content);
		dk = new DeKey();
		post = dk.addnew_crypt_K_param(content,url);
		HttpPost hp = new HttpPost(url);
		hp.setHeader("User-Agent", UserAgent);
		hp.setHeader("Accept-Encoding", "gzip, deflate");
		try {
			hp.setEntity(new UrlEncodedFormEntity(post,"UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		AuthScope as = new AuthScope(hp.getURI().getHost(),hp.getURI().getPort());
		CredentialsProvider cp = client.getCredentialsProvider();
		UsernamePasswordCredentials upc = new UsernamePasswordCredentials(Auth,Key);
		cp.setCredentials(as, upc);
		byte[] b = null;
		try {
			b = client.execute(hp,new HttpResponseHandler());
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		/* end */
		if (b != null) {
			if (url.contains("gp_verify_receipt?")) {
				// need to be decoded
				return null;
			}
			try {
//				return Crypto.DecryptNoKey(b);
				
				return DeKey.decode(b);
				
//				if(url.indexOf("login?") != -1 || url.indexOf("regist?") != -1)
//				{
//					return dk.decode(paramArrayOfByte)(E_CODE.AES, dk.new_decrypt_cn(E_CODE.RSA, b));
//				}else{
//					return dk.new_decrypt_cn(E_CODE.AES, b);
//				}
				
			} catch (Exception ex) {
				try {
					throw ex;
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		} else{
			connectToServer(url,content);
		}
		return null;
	}
	public byte[] connectToServerCheckIn(String url, List<NameValuePair> content) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, BadPaddingException  {
		List<NameValuePair> post = null;
//		post = requestProcess(content);
		dk = new DeKey();
		post = dk.addnew_crypt_K_param(content,url);
		HttpPost hp = new HttpPost(url);
		hp.setHeader("User-Agent", UserAgent);
		hp.setHeader("Accept-Encoding", "gzip, deflate");
		try {
			hp.setEntity(new UrlEncodedFormEntity(post,"UTF-8"));
		} catch (UnsupportedEncodingException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		AuthScope as = new AuthScope(hp.getURI().getHost(),hp.getURI().getPort());
		CredentialsProvider cp = client.getCredentialsProvider();
		UsernamePasswordCredentials upc = new UsernamePasswordCredentials(Auth,Key);
		cp.setCredentials(as, upc);
		byte[] b = null;
		try {
			b = client.execute(hp,new HttpResponseHandler());
		} catch (ClientProtocolException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
//		/* end */
//		if (b != null) {
//			if (url.contains("gp_verify_receipt?")) {
//				// need to be decoded
//				return null;
//			}
//			try {
////				return Crypto.DecryptNoKey(b);
//				
//				if(url.indexOf("login?") != -1 || url.indexOf("regist?") != -1)
//				{
//					return dk.new_decrypt_cn(E_CODE.AES, dk.new_decrypt_cn(E_CODE.RSA, b));
//				}else{
//					return dk.new_decrypt_cn(E_CODE.AES, b);
//				}
//				
//			} catch (Exception ex) {
//				try {
//					throw ex;
//				} catch (Exception e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//			}
//		} else{
//			connectToServer(url,content);
//		}
		return b;
	}
}
