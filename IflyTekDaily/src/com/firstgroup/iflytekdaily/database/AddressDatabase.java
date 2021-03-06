package com.firstgroup.iflytekdaily.database;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import com.firstgroup.iflytekdaily.R;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Environment;

public class AddressDatabase extends SQLiteOpenHelper {

	private String DB_NAME = "teldata.db";// 保存的数据库文件名
	private String PACKAGE_NAME = "com.firstgroup.iflytekdaily";
	private String DB_PATH = "/data"
			+ Environment.getDataDirectory().getAbsolutePath() + "/"
			+ PACKAGE_NAME; // 在手机里存放数据库的位置

	private Context context;
	private int BUFFER_SIZE = 1024;

	public AddressDatabase(Context context, String name, CursorFactory factory,
			int version) {
		super(context, name, factory, version);
		this.context = context;
	}

	@Override
	public void onCreate(SQLiteDatabase db) {
		File dbfile = new File(DB_PATH+"/"+DB_NAME);
//		System.out.println(DB_PATH+"/"+DB_NAME);
		InputStream is = context.getResources()
				.openRawResource(R.raw.teldata);// 欲导入的数据库
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(dbfile);
			byte[] buffer = new byte[BUFFER_SIZE ];
			int count = 0;
			while ((count = is.read(buffer)) > 0) {
				fos.write(buffer, 0, count);
			}
			fos.close();
			is.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		db= SQLiteDatabase.openOrCreateDatabase(dbfile,
                 null);
	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

	}

}
