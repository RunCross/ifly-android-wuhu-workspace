package com.example.masign;

import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import android.util.Base64;

public class DeKey {
	enum E_CODE {
		RSA, RSA_EP, AES
	}

	public static boolean isLogin = false;
	private static String rsa_key = "011218525486l6u1"; // a
	private static String rsa_ep_key = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAL1mnz5vCQEa1xPeyIUQ2WHIzKIsZp9PKAzJ6etXV2NpyxoGheqlDZ5rXQVLEY2JSY2nBlt/QBdo9xkp8XcFgUsCAwEAAQ=="; // b
//	private static String rsa_ep_key = "AQAB"; // b
	private static String aes_key = ""; // c

//	private static String[] key;
//	private static String[] key2;
//	static {
//		key = new String[10];
//		key2 = new String[10];
//		key[0] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANV2ohK";
//		key[1] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAOLtTe7";
//		key[2] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAM5U06J";
//		key[3] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAL1mnz5";
//		key[4] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAKFTx5s";
//		key[5] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAL3EP/q";
//		key[6] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANWNwx1";
//		key[7] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANzMvdA";
//		key[8] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANr/4m+";
//		key[9] = "FwwDQYJKoZIhvcNAQEBBQADSwAwSAJBANqJlJz";
//
//		key2[0] = "TtcKbuDbIlBMocH+Eu0n2nBYZQ2xQbAv+E9na8K2FyMyVY4+RIYEJ+0CAwEAAQ==";
//		key2[1] = "qabQ3XHhmqqW8C4ZLxG7uW6bNmUdZQSUk8dO2+7ZTbN5lQw/u70Av2ECAwEAAQ==";
//		key2[2] = "NKm7i8s1Uy/fvpvfxLeoWowLGIBKz0kDLIvhuLV8Lv4XV0+aXdl2j4kCAwEAAQ==";
//		key2[3] = "KAzJ6etXV2NpyxoGheqlDZ5rXQVLEY2JSY2nBlt/QBdo9xkp8XcFgUsCAwEAAQ==";
//		key2[4] = "i+nwb9ru30oeoYviC6e5iHD/Qk7Gc8JPpIA335YHo6K1/U8U9gM3BncCAwEAAQ==";
//		key2[5] = "K3zPZ7d/qCF1GbQSSzPI+FUnuJjAXSZ43vvYYmQNHNYg791C9SrSOT0CAwEAAQ==";
//		key2[6] = "WbrLG3ZyCI1q3NUMOC+xdC87gGiINs4WC3S28j0/DrrocIXS7zf2MdECAwEAAQ==";
//		key2[7] = "iATLRV0t/HeudLvhUgbkWm2UNr4M84f0wA52XqFPABMyp+o59D4DEwUCAwEAAQ==";
//		key2[8] = "5JZwk+Wi2m8E68sUMyfKkhr1t2OXlvNAEfQrSYHu6rlXqpSf2o1zvSkCAwEAAQ==";
//		key2[9] = "ExrJC3uyxsEk+HiCnNJ8ZUFtkc7XeZKEyw2UFfiQ73SOFAzhVfkCCS0CAwEAAQ==";
//	}

	public static ArrayList<NameValuePair> addnew_crypt_K_param(
			List<NameValuePair> param) throws InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, BadPaddingException {
		ArrayList<NameValuePair> localArrayList = new ArrayList<NameValuePair>();

		generate_new_aes_key();

		localArrayList.add(new BasicNameValuePair("K", get_K()));

		E_CODE type = E_CODE.AES;
//		if (i.next().getName().indexOf("login_id") != -1) {
//			type = E_CODE.RSA_EP;
//		}
		if(isLogin){
			type = E_CODE.RSA_EP;
			isLogin = false;
		}
		Iterator<NameValuePair> i = param.iterator();
		for(;i.hasNext();){
			NameValuePair n = i.next();
			System.out.println(n.getName()+"-"+n.getValue());
			localArrayList.add(new BasicNameValuePair(n.getName(), Base64
					.encodeToString(new_encrypt_cn(type, n.getValue()),
							android.util.Base64.DEFAULT)));
			
		}
//		i = param.iterator();
//		while (i.hasNext()) {
//			NameValuePair n = i.next();
//			localArrayList.add(new BasicNameValuePair(n.getName(), Base64
//					.encodeToString(new_encrypt_cn(type, n.getValue()),
//							android.util.Base64.DEFAULT)));
//		}
		return localArrayList;
	}

	public static void set_rsa_key(String key) {
		rsa_key = key;
	}

	public static void set_rsa_ep_key(String key) {
		rsa_ep_key = key;
	}

	public static String get_K() {
		return aes_key;
	}

	public static void generate_new_aes_key() {
		try {
			KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
			localKeyGenerator.init(128, SecureRandom.getInstance("SHA1PRNG"));
			aes_key = Base64.encodeToString(localKeyGenerator.generateKey()
					.getEncoded(), android.util.Base64.DEFAULT);
		} catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {

		}
		return;
	}

	/**
	 * 加密
	 * @param paramE_CODE
	 * @param val
	 * @return
	 * @throws NoSuchPaddingException 
	 * @throws NoSuchAlgorithmException 
	 * @throws InvalidKeySpecException 
	 * @throws InvalidKeyException 
	 * @throws BadPaddingException 
	 * @throws IllegalBlockSizeException 
	 */
	public static byte[] new_encrypt_cn(E_CODE paramE_CODE, String val) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeySpecException, InvalidKeyException, IllegalBlockSizeException, BadPaddingException {
		byte[] localObject = null;
		System.out.println("--"+Base64.decode(rsa_key, android.util.Base64.DEFAULT));
			if (paramE_CODE == E_CODE.RSA) {
				if (rsa_key.length() > 2) {
					Cipher localCipher;
					byte[] arrayOfByte = null;
					PublicKey localPublicKey = KeyFactory.getInstance("RSA")
							.generatePublic(
									new X509EncodedKeySpec(Base64.decode(rsa_key, android.util.Base64.DEFAULT)));
					localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
					localCipher.init(Cipher.ENCRYPT_MODE, localPublicKey);
					arrayOfByte = localCipher.doFinal(val.getBytes());
					return arrayOfByte;
				}
			} else if (paramE_CODE == E_CODE.RSA_EP) {
				if (rsa_ep_key.length() >= 2) {
//					PrivateKey localPrivateKey = KeyFactory.getInstance("RSA")
//							.generatePrivate(
//									new PKCS8EncodedKeySpec(Base64.decode(
//											rsa_ep_key,
//											android.util.Base64.DEFAULT)));
//					PrivateKey localPrivateKey = KeyFactory.getInstance("RSA")
//							.generatePrivate(
//									new PKCS8EncodedKeySpec(Base64.decode(
//											rsa_ep_key,
//											android.util.Base64.DEFAULT)));
//					Cipher localCipher2 = Cipher
//							.getInstance("RSA/ECB/PKCS1Padding");
//					localCipher2.init(Cipher.ENCRYPT_MODE, localPrivateKey);
//					localObject = localCipher2.doFinal(val.getBytes());
					//实例化密钥材�?
					PKCS8EncodedKeySpec pcs8spec=new PKCS8EncodedKeySpec(rsa_ep_key.getBytes());
					//实例化密钥工�?
					KeyFactory keyfactory=KeyFactory.getInstance("RSA");
					//生成私钥
					PrivateKey pritekey=keyfactory.generatePrivate(pcs8spec);
					//私钥加密
					Cipher cipher=Cipher.getInstance(pritekey.getAlgorithm());
					cipher.init(Cipher.ENCRYPT_MODE,pritekey);
					localObject = cipher.doFinal(val.getBytes());
				}
			} else if (paramE_CODE == E_CODE.AES) {
				SecretKeySpec localSecretKeySpec = new SecretKeySpec(
						Base64.decode(aes_key.getBytes(),
								android.util.Base64.DEFAULT), "AES");
				Cipher localCipher1 = Cipher
						.getInstance("AES/ECB/PKCS5Padding");
				localCipher1.init(Cipher.ENCRYPT_MODE, localSecretKeySpec);
				byte[] arrayOfByte2 = localCipher1.doFinal(val.getBytes());
				localObject = arrayOfByte2;
			}

		return localObject;
	}

	/**
	 * 解密
	 * @param paramE_CODE
	 * @param paramArrayOfByte
	 * @return
	 */
	public static byte[] new_decrypt_cn(E_CODE paramE_CODE, byte[] paramArrayOfByte) {
		byte[] localObject = null;
		try {
			if (paramE_CODE == E_CODE.RSA) {
				if (rsa_key.length() > 2) {
					Cipher localCipher;
					byte[] arrayOfByte = null;
					PublicKey localPublicKey = KeyFactory.getInstance("RSA")
							.generatePublic(
									new X509EncodedKeySpec(Base64.decode(
											rsa_key,
											android.util.Base64.DEFAULT)));
					localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
					localCipher.init(1, localPublicKey);
					arrayOfByte = localCipher.doFinal(paramArrayOfByte);
					return arrayOfByte;
				}
			} else if (paramE_CODE == E_CODE.RSA_EP) {
				if (rsa_ep_key.length() >= 2) {
					PrivateKey localPrivateKey = KeyFactory.getInstance("RSA")
							.generatePrivate(
									new PKCS8EncodedKeySpec(Base64.decode(
											rsa_ep_key,
											android.util.Base64.DEFAULT)));
					Cipher localCipher2 = Cipher
							.getInstance("RSA/ECB/PKCS1Padding");
					localCipher2.init(2, localPrivateKey);
					localObject = localCipher2.doFinal(paramArrayOfByte);
				}
			} else if (paramE_CODE == E_CODE.AES) {
				SecretKeySpec localSecretKeySpec = new SecretKeySpec(
						Base64.decode(aes_key.getBytes(),
								android.util.Base64.DEFAULT), "AES");
				byte[] arrayOfByte1 = Base64.decode(paramArrayOfByte,
						android.util.Base64.DEFAULT);
				Cipher localCipher1 = Cipher
						.getInstance("AES/ECB/PKCS5Padding");
				localCipher1.init(2, localSecretKeySpec);
				byte[] arrayOfByte2 = localCipher1.doFinal(arrayOfByte1);
				localObject = arrayOfByte2;
			}
		} catch (Exception localException) {
			return null;
		}
		return localObject;
	}
}
