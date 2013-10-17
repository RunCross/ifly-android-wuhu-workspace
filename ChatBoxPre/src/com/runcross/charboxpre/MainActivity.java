package com.runcross.charboxpre;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import com.runcross.charboxpre.po.ChatMessage;
import com.runcross.chatboxpre.adapter.ChatAdapter;
import com.runcross.chatboxpre.adapter.SelectAdapter;

import android.os.Bundle;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Spinner;

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
	
		//下拉列表
		
		Spinner sp = (Spinner) findViewById(R.id.choice);
		
		List<Drawable> splist= new ArrayList<Drawable>();
		splist.add(this.getResources().getDrawable(R.drawable.tuanzia));
		splist.add(this.getResources().getDrawable(R.drawable.tuanzib));
//		sp.setLayoutParams(new LayoutParams(125, 125));
		SelectAdapter sa = new SelectAdapter(MainActivity.this, splist);
		sp.setAdapter(sa);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

}
