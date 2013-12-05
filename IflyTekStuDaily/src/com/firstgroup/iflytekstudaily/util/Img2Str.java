package com.firstgroup.iflytekstudaily.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.util.Base64;

/**
 * ͼƬת����
 * @author RunCross
 *
 */
public class Img2Str {

	// ͼƬ����·��
	private static final String cachePath = "/data"
			+ Environment.getDataDirectory().getAbsolutePath()
			+ "/com.firstgroup.iflytekstudaily/cache";
	// ͼƬ��������
	private static final String cacheName = "photo.cache";

	/**
	 * ��ͼƬת�����ַ���
	 * 
	 * @param img ��ת��ͼƬ
	 * @return ת�����ַ���
	 */
	public static String code(Bitmap img) {

		String str = null;
		ByteArrayOutputStream bStream = new ByteArrayOutputStream();
		img.compress(CompressFormat.PNG, 100, bStream);
		byte[] bytes = bStream.toByteArray();
		str = Base64.encodeToString(bytes, Base64.DEFAULT);

		return str;
	}

	/**
	 * ���ַ���ת����ͼƬ
	 * 
	 * @param str �ַ���
	 * @return ת����ͼƬ
	 */
	public static Bitmap decode(String str) {
		Bitmap img = null;
		byte[] decode = Base64.decode(str, Base64.DEFAULT);
		File file = new File(cachePath + "/" + cacheName);
		if (file.exists()) {
			file.delete();
		}
		try {
			file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(file);
			fos.write(decode);
			fos.flush();
			fos.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		img = BitmapFactory.decodeFile(cachePath + "/" + cacheName);
		return img;
	}

}
