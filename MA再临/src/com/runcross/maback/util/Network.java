package com.runcross.maback.util;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPInputStream;

import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
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

import com.runcross.maback.data.DeviecInfo;


public class Network {
	private static final String Auth = "iW7B5MWJ";
	private static final String Key = "8KdtjVfX";
	
	public static String UserAgent = DeviecInfo.getUserAgent();
	private DefaultHttpClient client;
	
	public Network() {
		client = new DefaultHttpClient();
		HttpParams hp = client.getParams();
		hp.setParameter("http.socket.timeout", 0x7530);
		hp.setParameter("http.connection.timeout", 0x7530);
	}
	
	private List<NameValuePair> RequestProcess(List<NameValuePair> source, boolean UseDefaultKey) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException {
		ArrayList<NameValuePair> result = new ArrayList<NameValuePair>();
		Iterator<NameValuePair> i  = source.iterator();
		while(i.hasNext()) {
			NameValuePair n = i.next();
			if (UseDefaultKey) {
				result.add(new BasicNameValuePair(n.getName(),Crypto.Encrypt2Base64NoKey(n.getValue())));
			} else {
				result.add(new BasicNameValuePair(n.getName(),Crypto.Encrypt2Base64WithKey(n.getValue())));
			}	
		}
		return result;
	}
	
	public byte[] ConnectToServer(String url, List<NameValuePair> content, boolean UseDefaultKey) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, IllegalBlockSizeException, BadPaddingException, ClientProtocolException, IOException {
		List<NameValuePair> post = RequestProcess(content,UseDefaultKey);
		System.out.println(url);
		HttpPost hp = new HttpPost(url);
		hp.setHeader("User-Agent", UserAgent);
		hp.setHeader("Accept-Encoding", "gzip, deflate");
		if (post.size()>1){
		System.out.println(content.get(0).getName()+" "+content.get(0).getValue());
		System.out.println(post.get(1).getName()+" "+post.get(1).getValue());
		}
		hp.setEntity(new UrlEncodedFormEntity(post,"UTF-8"));
		
		AuthScope as = new AuthScope(hp.getURI().getHost(),hp.getURI().getPort());
		CredentialsProvider cp = client.getCredentialsProvider();
//		UsernamePasswordCredentials upc = new UsernamePasswordCredentials(Auth,Key);
//		cp.setCredentials(as, upc);
		
		byte[] b = client.execute(hp,new HttpResponseHandler());
//		HttpResponse response = client.execute(hp);
//		 HttpEntity entity = response.getEntity();
//		// gzip Ω‚—π
//		 
//		 
//		 BufferedReader reader = new BufferedReader(new InputStreamReader(entity.getContent(), "UTF-8")); 
//		 
//		 String line = null;   
//		 String st = new String();
//		 
//		    while ((line = reader.readLine()) != null) {
//		    	st = st+line;
//		     }   
		
//		GZIPInputStream inStream = 
//		        new GZIPInputStream ( new ByteArrayInputStream(b) );
//		
//		 BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inStream)); ;
//		while((st = bufferedReader.readLine()) != null){}
//		System.out.println("ssssssssss\n"+st);
		/* end */
		if (b != null) {
			if (url.contains("gp_verify_receipt?")) {
				// need to be decoded
				return null;
			}
			try {
				if (UseDefaultKey) {
					return Crypto.DecryptNoKey(b);
				} else {
					return Crypto.DecryptWithKey(b);
				}
			} catch (Exception ex) {
				if (!UseDefaultKey) {
					return Crypto.DecryptNoKey(b);
				} else {
					return Crypto.DecryptWithKey(b);
				}
			}
		} 
		return null;
	}
	
}
