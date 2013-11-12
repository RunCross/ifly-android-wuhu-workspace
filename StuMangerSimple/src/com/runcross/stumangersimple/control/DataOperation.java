package com.runcross.stumangersimple.control;

import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;

public class DataOperation extends ContentProvider {

	private static UriMatcher uriMatch ;
	private MyDataBase data;
	private static final int USERS = 1;
	private static final int USER = 2;
	private static final int REGISTER = 3;
	private static final int STU_INFO = 4;
	private static final int STUS_MESS = 5;
	private static final int STU_ADD = 6;
	private static final int STU_UPDATE = 7;
	static{
		uriMatch = new UriMatcher(UriMatcher.NO_MATCH);
		uriMatch.addURI("com.runcross.stumanager.go", "users", USERS);
		uriMatch.addURI("com.runcross.stumanager.go", "login/username/*", USER);
		uriMatch.addURI("com.runcross.stumanager.go", "register", REGISTER);
		uriMatch.addURI("com.runcross.stumanager.go", "get/mess/username/*", STU_INFO);
		uriMatch.addURI("com.runcross.stumanager.go", "get/mess/users", STUS_MESS);
		uriMatch.addURI("com.runcross.stumanager.go", "add/user", STU_ADD);
		uriMatch.addURI("com.runcross.stumanager.go", "update/user", STU_UPDATE);
	}
	
	@Override
	public boolean onCreate() {
		data = new MyDataBase(this.getContext(), "stumana", null, 1);
		return false;
	}

	@Override
	public Cursor query(Uri uri, String[] projection, String selection,
			String[] selectionArgs, String sortOrder) {
		SQLiteDatabase db = data.getWritableDatabase();
		Cursor cursor = null ;
		switch(uriMatch.match(uri)){
		case USER:						
			cursor = db.rawQuery("select * from user_login where uname = "+uri.getLastPathSegment(), null);
//			System.out.println("data "+uri.toString());
			break;
		case USERS:						
//			System.out.println(111);
			cursor = db.rawQuery("select * from user_login", null);
			break;
		case STU_INFO:						
//			System.out.println(111);
			
			cursor = db.rawQuery("select * from user_mess where uname = "+uri.getLastPathSegment(), null);
			break;	
		case STUS_MESS:						
			cursor = db.rawQuery("select * from user_mess", null);
			break;
		}
		return cursor;
	}

	@Override
	public String getType(Uri uri) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Uri insert(Uri uri, ContentValues values) {
		SQLiteDatabase db = data.getWritableDatabase();
		String uname = (String) values.getAsString("uname");
//		String upwd = (String) values.getAsString("upwd");
		Uri uriBack = null;
		switch(uriMatch.match(uri)){
		case REGISTER:
			Cursor cursor = db.rawQuery("select rowid from user_login where uname = "+uname, null); 
			if(cursor==null || cursor.getCount() == 0){
				long rowid = db.insert("user_login", "user_login.uid", values);
				if(rowid>0){
					uriBack = ContentUris.withAppendedId(uri, rowid);
//					db.rawQuery("insert into user_mess ", selectionArgs)
					getContext().getContentResolver().notifyChange(uriBack, null);
				}
			}
//			db.execSQL("ÐÞ¸ÄÓï¾ä"); else db.execSQL("²åÈëÓï¾ä"); 
			break;
		case STU_ADD:
			long rowid = db.insert("user_mess","user_login.uid", values);
			if(rowid>0){
				uriBack = ContentUris.withAppendedId(uri, rowid);
//				db.rawQuery("insert into user_mess ", selectionArgs)
				getContext().getContentResolver().notifyChange(uriBack, null);
			}
			break;
		}
		return uriBack;
	}

	@Override
	public int delete(Uri uri, String selection, String[] selectionArgs) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Uri uri, ContentValues values, String selection,
			String[] selectionArgs) {
		SQLiteDatabase db = data.getWritableDatabase();
		
		int row = 0;
		switch(uriMatch.match(uri)){
		case STU_UPDATE:
			row = db.update("user_mess", values, selection, selectionArgs);
			break;
		}
		return row;
	}

}
