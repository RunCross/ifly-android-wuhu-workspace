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

		db.execSQL("create table user_login(uid integer primary key AUTOINCREMENT,uname nvarchar(50) not null unique ,upwd varchar(15) not null)");
		db.execSQL("create table user_mess(uid integer primary key AUTOINCREMENT ," +
				                           "uname nvarchar(50)  ," +
				                           "sex nchar(1) ," +
				                           "mz nvarchar(50)," +
				                           "birthday varchar(12) ," +
				                           "stuNum char(12)," +
				                           "tel char(11)," +
				                           "cont nvarchar(200)," +
				                           "photo nvarchar(500))");
		// 触发器，当有新用户注册成功时，自动加入user_mess表
//		db.execSQL("create trigger fk_login" +
//				" after insert on user_login " +
//				" begin " +
//				" insert into user_mess(uid,uname) values(new.uid,new.uname);" +
//				" end ;");

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
