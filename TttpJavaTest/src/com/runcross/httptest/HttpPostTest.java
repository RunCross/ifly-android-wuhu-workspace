package com.runcross.httptest;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.GZIPInputStream;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.protocol.HTTP;

public class HttpPostTest {

	private static final String BaseSecretKey = "rBwj1MIAivVN222b";

	@SuppressWarnings("deprecation")
	public static boolean post(String uri) throws ClientProtocolException,
			IOException, InvalidAlgorithmParameterException {

		HttpClient httpClient = new DefaultHttpClient();

		HttpPost post = new HttpPost(uri);
		post.setHeader(
				"User-Agent",
				"Million/101 (GT-I9100; GT-I9100; 2.3.4) samsung/GT-I9100/GT-I9100:2.3.4/GRJ22/eng.build.20120314.185218:eng/release-keys");
		post.setHeader("Accept-Encoding", "gzip, deflate");
		List<NameValuePair> params = new ArrayList<NameValuePair>();
		post.setEntity(new UrlEncodedFormEntity(params, HTTP.UTF_8));

		// HttpResponse response = httpClient.execute(post);
		// System.out.println("encode "
		// + response.getEntity().getContentEncoding());
		// System.out.println(uri);
		// InputStream input = response.getEntity().getContent();
		try {
			byte[] b = httpClient.execute(post, new HttpResponseHandler());
			System.out.println("byte \n" + new String(b));
			System.out.println(new String(decrypt2Bytes(b, false)));
		} catch (InvalidKeyException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (NoSuchPaddingException e) {
			e.printStackTrace();
		} catch (IllegalBlockSizeException e) {
			e.printStackTrace();
		} catch (BadPaddingException e) {
			e.printStackTrace();
		}
		// if (response.getStatusLine().getStatusCode() == 200) {
		// BufferedReader reader = new BufferedReader(new InputStreamReader(
		// new GZIPInputStream(input), "UTF-8"));
		// String line = null;
		// String st = new String();
		//
		// while ((line = reader.readLine()) != null) {
		// st = st + line;
		// }
		//
		// System.out.println(st);
		// }

		return true;
	}

	private static String GetSecretKey(boolean useLoginId) {
		String pw = BaseSecretKey;
		if (useLoginId)
			pw += "15220183481";
		while (pw.length() < 16)
			pw += "0";
		System.out.println("pw " + pw);
		return pw;
	}

	private static byte[] decrypt2Bytes(byte[] ciphertext, boolean useLoginId)
			throws NoSuchAlgorithmException, NoSuchPaddingException,
			InvalidKeyException, IllegalBlockSizeException,
			BadPaddingException, InvalidAlgorithmParameterException {
		byte[] key = GetSecretKey(useLoginId).getBytes();
		SecretKeySpec keyspec = new SecretKeySpec(key, "AES");
		Cipher c = Cipher.getInstance("AES/ECB/PKCS5Padding");
//		IvParameterSpec iv = new IvParameterSpec(key);
		c.init(Cipher.DECRYPT_MODE, keyspec);
		return c.doFinal(ciphertext);
	}
}