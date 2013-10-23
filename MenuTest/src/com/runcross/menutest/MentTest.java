package com.runcross.menutest;

import android.app.Activity;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnMenuItemClickListener;
import android.widget.TextView;
import android.widget.Toast;

public class MentTest extends Activity {

	private final int COLOR_RED = 0x111;
	private final int COLOR_GREEN = 0x112;
	private final int COLOR_BlUE = 0x113;
	
	private TextView tv;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.contextmenu);

		tv = (TextView) findViewById(R.id.txtView);
		//长按显示效果
		registerForContextMenu(tv);			

	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		MenuInflater mi = new MenuInflater(MentTest.this);
		mi.inflate(R.menu.main, menu);
		
		return super.onCreateOptionsMenu(menu);
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		switch(item.getItemId()){
		case R.id.font10sp:
			tv.setTextSize(10);
			break;
		}
		return super.onOptionsItemSelected(item);
	}
	
	@Override
	public void onCreateContextMenu(ContextMenu menu, View v,
			ContextMenuInfo menuInfo) {

//		menu.add(0, COLOR_RED, 0, "红色");
//		menu.add(0, COLOR_GREEN, 0, "绿色");
//		menu.add(0, COLOR_BlUE, 0, "蓝色");
//		menu.setGroupCheckable(0, true, true);
		
		MenuInflater mi = new MenuInflater(MentTest.this);
		mi.inflate(R.menu.main, menu);
		super.onCreateContextMenu(menu, v, menuInfo);
	}

	@Override
	public boolean onContextItemSelected(MenuItem item) {
		switch (item.getItemId()){
		case COLOR_RED:
			item.setChecked(true);
			tv.setBackgroundResource(R.color.red);
			break;
		case COLOR_GREEN:
			item.setChecked(true);
			
			tv.setBackgroundResource(R.color.green);
			break;
		case COLOR_BlUE:
			item.setChecked(true);
			tv.setBackgroundResource(R.color.blue);
			break;
		}
		return super.onContextItemSelected(item);
	}

	public void buttonClick(View button){
		Button btn = (Button) button;
//		Toast.makeText(MentTest.this, btn.getText(), Toast.LENGTH_SHORT).show();
		final PopupMenu pop = new PopupMenu(MentTest.this, btn);
		MenuInflater menu = new MenuInflater(MentTest.this);
		
		menu.inflate(R.menu.main, pop.getMenu());		
		pop.show();
		pop.setOnMenuItemClickListener(new OnMenuItemClickListener() {
			
			@Override
			public boolean onMenuItemClick(MenuItem item) {
				pop.dismiss();
				return false;
			}
		});
	}
	
}
