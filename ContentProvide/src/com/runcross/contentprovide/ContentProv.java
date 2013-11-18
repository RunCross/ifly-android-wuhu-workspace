package com.runcross.contentprovide;

import java.util.List;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;

public class ContentProv extends ContentProvider {

	private static UriMatcher uriMatch ;
	private MyDatabase myData; 
	
	static{
		uriMatch = new UriMatcher(UriMatcher.NO_MATCH);
		uriMatch.addURI("com.runcross.provider.example", "user", 1);
		uriMatch.addURI("com.runcross.provider.example", "users/#", 2);
		uriMatch.addURI("com.runcross.provider.example", "users/#/*", 3);
	}
	
	@Override
	public boolean onCreate() {
		myData = new MyDatabase(this.getContext(), "test", null, 1);		
		return false;
	}

	@Override
	public Cursor query(Uri uri, String[] projection, String selection,
			String[] selectionArgs, String sortOrder) {
		SQLiteDatabase db = myData.getWritableDatabase();
		Cursor cursor = null ;
		switch(uriMatch.match(uri)){
		case 3:
			List<String> st = uri.getPathSegments();			
			cursor = db.rawQuery("select "+st.get(2)+" from student where uid = "+Integer.parseInt(st.get(1)), selectionArgs);
			break;
		}
		return cursor;
	}

	@Override
	public String getType(Uri uri) {
		switch(uriMatch.match(uri)){
		case 1:
			return "vnd.android.cursor.item/com.runcross.provider.example" ;			
		case 2:
			return "vnd.android.cursor.dir/com.runcross.provider.example" ;
		}
		return null;
	}

	@Override
	public Uri insert(Uri uri, ContentValues values) {
		return null;
	}

	@Override
	public int delete(Uri uri, String selection, String[] selectionArgs) {
		return 0;
	}

	@Override
	public int update(Uri uri, ContentValues values, String selection,
			String[] selectionArgs) {
		SQLiteDatabase db = myData.getWritableDatabase();  
		switch(uriMatch.match(uri)){
		case 1:
			db.insert("student", null,values);
			Cursor cursor = db.rawQuery("select * from student", null);
			while(cursor.moveToNext()){
			System.out.println("ddddddddddddddddddd "+cursor.getString(1));
			}
			cursor.close();
		}
		return 0;
	}

}
