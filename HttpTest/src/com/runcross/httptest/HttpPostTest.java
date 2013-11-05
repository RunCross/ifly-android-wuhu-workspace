package com.runcross.httptest;

import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;



public class HttpPostTest {

	private static final String BaseSecretKey = "rBwj1MIAivVN222b";

	public static boolean post(String uri) throws ClientProtocolException,
			IOException {

		HttpClient httpClient = new DefaultHttpClient();

		HttpPost post = new HttpPost(uri);
		post.setHeader("User-Agent", DeviecInfo.getUserAgent());
		post.setHeader("Accept-Encoding", "gzip, deflate");
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		post.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8));

//		HttpResponse response = httpClient.execute(post);
//		System.out.println("encode "
//				+ response.getEntity().getContentEncoding());
//		System.out.println(uri);
//		InputStream input = response.getEntity().getContent();
		try {
			System.out.println(new String(decrypt2Bytes(httpClient.execute(post, new HttpResponseHandler()),false)));
		} catch (InvalidKeyException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (BadPaddingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		if (response.getStatusLine().getStatusCode() == 200) {
//			BufferedReader reader = new BufferedReader(new InputStreamReader(
//					new GZIPInputStream(input), "UTF-8"));
//			String line = null;
//			String st = new String();
//
//			while ((line = reader.readLine()) != null) {
//				st = st + line;
//			}
//
//			System.out.println(st);
//		}

		return true;
	}

	private static String GetSecretKey(boolean useLoginId) {
		String pw = BaseSecretKey;
		if (useLoginId)
			pw += "15220183481";
		while (pw.length() < 32)
			pw += "0";
		System.out.println("pw "+pw);
		return pw;
	}
	private static byte[] decrypt2Bytes(byte[] ciphertext, boolean useLoginId) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException{
		byte[] key = GetSecretKey(useLoginId).getBytes();
		SecretKeySpec keyspec = new SecretKeySpec(key,"AES");
		Cipher c = Cipher.getInstance("AES");
		c.init(Cipher.DECRYPT_MODE, keyspec);
		return c.doFinal(ciphertext);
	}
}
