package com.runcross.charboxpre;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.runcross.charboxpre.adapter.ChatAdapter;
import com.runcross.charboxpre.po.ChatMessage;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;

public class MainActivity extends Activity {

	private List<ChatMessage>  chatMessages;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		final ListView listview = (ListView) findViewById(R.id.charlist);
		
		chatMessages = new ArrayList<ChatMessage>();
		
		final ChatAdapter chatAdapter = new ChatAdapter(MainActivity.this, chatMessages);
		
		listview.setAdapter(chatAdapter);
		
		final EditText txtSend = (EditText) findViewById(R.id.cont);
		Button btnSend = (Button) findViewById(R.id.send);
		
		
		btnSend.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				String con = txtSend.getText().toString();
				if(!"".equals(con)){
					chatMessages.add(new ChatMessage(true,con,Calendar.getInstance()));
					chatAdapter.notifyDataSetChanged();
					listview.setSelection(chatMessages.size() - 1);
				}
			}
		});
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}