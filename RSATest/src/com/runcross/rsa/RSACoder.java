package com.runcross.rsa;

import it.sauronsoftware.base64.Base64;

import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;

import java.util.HashMap;
import java.util.Map;

import javax.crypto.Cipher;

public class RSACoder {
	//算法
	public static String Key_ALGORITHM="RSA";
	//私钥
	public static String Private_Key="RSAPrivateKey";
	//公钥
	public static String Public_Key="RSAPublicKey";
	//密钥长度
	public static int Key_Size=512;
	public static Map<String,Object> initKey() throws Exception{
		//实例化密钥生成器
		KeyPairGenerator keypairgenerator=KeyPairGenerator.getInstance(Key_ALGORITHM);
		//初始�?
		keypairgenerator.initialize(Key_Size);
		
		//获得密钥�?
		KeyPair keypair=keypairgenerator.generateKeyPair();
		
		//密钥
		RSAPrivateKey pritekey=(RSAPrivateKey)keypair.getPrivate();
		
		//公钥
		RSAPublicKey pubkey=(RSAPublicKey)keypair.getPublic();
		Map<String,Object> keymap=new HashMap<String,Object>(2);
		keymap.put(Private_Key, pritekey);
		keymap.put(Public_Key, pubkey);
		return keymap;	
	}
	//获得密钥
	public static byte[] getPrivateKey(Map<String,Object>keymap){
        Key pritekey=(Key)keymap.get(Private_Key);
        return pritekey.getEncoded();
	}
	//获得公钥
	public static byte[] getPublicKey(Map<String,Object>keymap){
		 Key pubkey=(Key)keymap.get(Public_Key);
		 return pubkey.getEncoded();
	}
	//私钥加密
	public static byte[] encryptByPrivateKey(String key,byte[] data) throws Exception{
		//实例化密钥材�?
		PKCS8EncodedKeySpec pcs8spec=new PKCS8EncodedKeySpec(Base64.decode(key.getBytes()));
		//实例化密钥工�?
		KeyFactory keyfactory=KeyFactory.getInstance(Key_ALGORITHM);
		//生成私钥
		PrivateKey pritekey=keyfactory.generatePrivate(pcs8spec);
		//私钥加密
		Cipher cipher=Cipher.getInstance(pritekey.getAlgorithm());
		cipher.init(Cipher.ENCRYPT_MODE,pritekey);
		return cipher.doFinal(data);
	}
	//公钥解密
	public static byte[] decryptByPublicKey(String key,byte[] data) throws Exception{
		//实例化公钥材�?
		X509EncodedKeySpec x509spec=new X509EncodedKeySpec(Base64.decode(key.getBytes()));
		//实例化密钥工�?
		KeyFactory keyfactory=KeyFactory.getInstance(Key_ALGORITHM);
		//获得公钥
		PublicKey pubkey=keyfactory.generatePublic(x509spec);
		//对数据进行解�?
		Cipher cipher=Cipher.getInstance(Key_ALGORITHM);
		cipher.init(Cipher.DECRYPT_MODE, pubkey);
		return cipher.doFinal(data);
	}
	

}

