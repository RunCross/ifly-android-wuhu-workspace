package com.runcross.stumangersimple.control;

import java.util.List;

import android.content.ContentProvider;
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
	static{
		uriMatch = new UriMatcher(UriMatcher.NO_MATCH);
		uriMatch.addURI("com.runcross.stumanager.go", "users", USERS);
		uriMatch.addURI("com.runcross.stumanager.go", "login/user/#", USER);
		uriMatch.addURI("com.runcross.stumanager.go", "register", REGISTER);
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
		case 1:						
			System.out.println(111);
			cursor = db.rawQuery("select * from user_login", null);
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
		String upwd = (String) values.getAsString("upwd");
		Uri uriBack = null;
		switch(uriMatch.match(uri)){
		case REGISTER:
			Cursor cursor = db.rawQuery("select rowid from user_login where uname = "+uname, null); 
			if(cursor!=null && cursor.getCount() > 0){
				
			}
//			db.execSQL("–ﬁ∏ƒ”Ôæ‰"); else db.execSQL("≤Â»Î”Ôæ‰"); 
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
		// TODO Auto-generated method stub
		return 0;
	}

}
