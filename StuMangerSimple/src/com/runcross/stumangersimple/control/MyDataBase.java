package com.runcross.stumangersimple.control;

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
	
	@Override
	public void onCreate(SQLiteDatabase db) {

		db.execSQL("create table user_login(uid integer primary key ,uname nvarchar(50) not null unique ,upwd varchar(15) not null)");
		db.execSQL("create table user_mess(uid integer references user_login(uid) ," +
				                           "uname nvarchar(50)  ," +
				                           "sex nchar(1) ," +
				                           "mz nvarchar(50)," +
				                           "birthday date ," +
				                           "stuNum char(12)," +
				                           "tel char(11)," +
				                           "cont nvarchar(200))");

	}

	@Override
	public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

	}

	@Override 
	public void onOpen(SQLiteDatabase db) {
        super.onOpen(db); 
        if(!db.isReadOnly()) { 
              // Enable foreign key constraints 
        	db.execSQL("PRAGMA foreign_keys=ON;"); 
     } 
}
}
