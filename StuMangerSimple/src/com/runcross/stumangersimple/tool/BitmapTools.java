package com.runcross.stumangersimple.tool;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;

public class BitmapTools {

	public static final String photoPath;
	public static final String root;
	public static String photofile;
	static {
		
		photoPath= "stuM/photo";
		root = Environment
				.getExternalStorageDirectory().getPath();
	}
	
	/*
	 * ͼƬ����ѹ��
	 */
	public static Bitmap getimage(String srcPath,float hh,float ww) {  
        BitmapFactory.Options newOpts = new BitmapFactory.Options();  
        //��ʼ����ͼƬ����ʱ��options.inJustDecodeBounds ���true��  
        newOpts.inJustDecodeBounds = true;  
        Bitmap bitmap = BitmapFactory.decodeFile(srcPath,newOpts);//��ʱ����bmΪ��  
          
        newOpts.inJustDecodeBounds = false;  
        int w = newOpts.outWidth;  
        int h = newOpts.outHeight;  
        
        
        //���űȡ������ǹ̶��������ţ�ֻ�ø߻��߿�����һ�����ݽ��м��㼴��  
        int be = 1;//be=1��ʾ������  
        if (w > h && w > ww) {//�����ȴ�Ļ����ݿ�ȹ̶���С����  
            be = (int) (newOpts.outWidth / ww);  
        } else if (w < h && h > hh) {//����߶ȸߵĻ����ݿ�ȹ̶���С����  
            be = (int) (newOpts.outHeight / hh);  
        }  
        if (be <= 0)  
            be = 1;  
        newOpts.inSampleSize = be;//�������ű���  
        //���¶���ͼƬ��ע���ʱ�Ѿ���options.inJustDecodeBounds ���false��  
        bitmap = BitmapFactory.decodeFile(srcPath, newOpts);  
        return compressImage(bitmap);//ѹ���ñ�����С���ٽ�������ѹ��  
    }  
	
	/*
	 * ͼƬ��Сѹ��
	 */
	public static Bitmap compressImage(Bitmap image) {  
		  
        ByteArrayOutputStream baos = new ByteArrayOutputStream();  
        image.compress(Bitmap.CompressFormat.JPEG, 100, baos);//����ѹ������������100��ʾ��ѹ������ѹ��������ݴ�ŵ�baos��  
        int options = 100;  
        while ( baos.toByteArray().length / 1024>10) {  //ѭ���ж����ѹ����ͼƬ�Ƿ����100kb,���ڼ���ѹ��         
            baos.reset();//����baos�����baos  
            image.compress(Bitmap.CompressFormat.JPEG, options, baos);//����ѹ��options%����ѹ��������ݴ�ŵ�baos��  
            options -= 10;//ÿ�ζ�����10  
        }  
        ByteArrayInputStream isBm = new ByteArrayInputStream(baos.toByteArray());//��ѹ���������baos��ŵ�ByteArrayInputStream��  
        Bitmap bitmap = BitmapFactory.decodeStream(isBm, null, null);//��ByteArrayInputStream��������ͼƬ  
        return bitmap;  
 
	}
	
	/**
	 * ����bitmap�ļ�
	 * @param image
	 * @param path
	 * @throws IOException
	 */
	public static void saveBitmap2file(Bitmap image, String path) throws IOException {
	    File f = new File(path+".png");
	    f.createNewFile();
	    FileOutputStream fOut = null;
	    try {
	            fOut = new FileOutputStream(f);
	    } catch (FileNotFoundException e) {
	            e.printStackTrace();
	    }
	    image.compress(Bitmap.CompressFormat.PNG, 100, fOut);
	    try {
	            fOut.flush();
	    } catch (IOException e) {
	            e.printStackTrace();
	    }
	    try {
	            fOut.close();
	    } catch (IOException e) {
	            e.printStackTrace();
	    }
	}
}
