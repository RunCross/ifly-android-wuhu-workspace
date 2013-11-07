package com.runcross.contentprovide;

import android.net.Uri;
import android.os.Bundle;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);

		ContentResolver cr = getContentResolver();
		ContentValues value = new ContentValues();
		value.put("uid", 1);
		value.put("uname", "runcross");
//		cr.update(Uri.parse("content://com.runcross.provider.example/user"), value, null,
//				null);
		Cursor cursor = cr.query(Uri.parse("content://com.runcross.provider.example/users/1/uname"), null, null, null, null);
		
		while(cursor.moveToNext()){
			System.out.println("ddddddddddddddddddd "+cursor.getString(0));
			}
			cursor.close();

	}

}
