package net;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.apache.http.NameValuePair;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpParams;

import com.runcross.maback.mini.data.DeviecInfo;

public class Connect {

	//游戏版本
	private static final String UserAgent = DeviecInfo.getUserAgent();
	
	private static final String Auth = "eWa25vrE";
	private static final String Key = "2DbcAh3G";

	private static DefaultHttpClient client;
	
	public Connect() {
		client = new DefaultHttpClient();
		HttpParams hp = client.getParams();
		hp.setParameter("http.socket.timeout", 0x7530);
		hp.setParameter("http.connection.timeout", 0x7530);
	}
	
	//加密参数
	private static List<NameValuePair> requestProcess(List<NameValuePair> source) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException {
		ArrayList<NameValuePair> result = new ArrayList<NameValuePair>();
		Iterator<NameValuePair> i  = source.iterator();
		while(i.hasNext()) {
			NameValuePair n = i.next();
			result.add(new BasicNameValuePair(n.getName(),Crypto.Encrypt2Base64NoKey(n.getValue())));
		}
		return result;
	}

	//访问请求
	public byte[] connectToServer(String url, List<NameValuePair> content)  {
		List<NameValuePair> post = null;
		try {
			post = requestProcess(content);
		} catch (InvalidKeyException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		} catch (NoSuchAlgorithmException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		} catch (NoSuchPaddingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		} catch (IllegalBlockSizeException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		} catch (BadPaddingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
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
				return Crypto.DecryptNoKey(b);
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
	
}
