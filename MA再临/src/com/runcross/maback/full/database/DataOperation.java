package com.runcross.maback.full.database;

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
	private static final String address = "com.runcross.maback.go";
	private static final int VERSION = 1;
	private static final int VERSION_UPDATE = 2;
	
	
	static{
		uriMatch = new UriMatcher(UriMatcher.NO_MATCH);
		uriMatch.addURI(address, "version", VERSION);
		uriMatch.addURI(address, "version/#", VERSION_UPDATE);
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
		case VERSION:						
			cursor = db.rawQuery("select version from app ", null);
//			System.out.println("data "+uri.toString());
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
		case VERSION_UPDATE:
			db.rawQuery("update ", selectionArgs);
			break;
		}
		return row;
	}

}
