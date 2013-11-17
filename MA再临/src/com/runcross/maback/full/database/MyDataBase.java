package com.runcross.maback.full.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteDatabase.CursorFactory;

public class MyDataBase extends SQLiteOpenHelper {

	public MyDataBase(Context context, String name, CursorFactory factory,
			int version) {
		super(context, name, factory, version);
		// TODO Auto-generated constructor stub
	}	
	
//	public interface xml2sql{
//		public InputStream xml2sql();
//	}
	
	@Override
	public void onCreate(SQLiteDatabase db) {

		db.execSQL("create table app(version varchar(25))");

	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

	}

	@Override 
	public void onOpen(SQLiteDatabase db) {
        super.onOpen(db); 
//        if(!db.isReadOnly()) { 
//              // Enable foreign key constraints 
//        	db.execSQL("PRAGMA foreign_keys=ON;"); 
//     } 
}
}
