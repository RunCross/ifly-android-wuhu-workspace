package com.runcross.charboxpre;

import java.util.ArrayList;
import java.util.List;

import com.runcross.charboxpre.adapter.ChatAdapter;
import com.runcross.charboxpre.po.ChatMessage;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.widget.ListView;

public class MainActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		ListView listview = (ListView) findViewById(R.id.charlist);
		
		List<ChatMessage>  chatMessages = new ArrayList<ChatMessage>();
		
		
		
		ChatAdapter chatAdapter = new ChatAdapter(MainActivity.this, chatMessages);
		
		listview.setAdapter(chatAdapter);
		
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
