package com.runcross.contentprovide;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;

public class MyDatabase extends SQLiteOpenHelper {

	public MyDatabase(Context context, String name, CursorFactory factory,
			int version) {
		super(context, name, factory, version);
	}

	

	@Override
	public void onCreate(SQLiteDatabase db) {
		db.execSQL("create table student(uid int , uname varchar(50))");

	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
		// TODO Auto-generated method stub

	}

}
