package com.runcross.actionbartest;

import android.app.ActionBar;
import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;

public class ActionBarTest extends Activity {

	private ActionBar actionbar;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);

		setContentView(R.layout.actionbar);
		actionbar = getActionBar();
		actionbar.setDisplayShowHomeEnabled(true);
		actionbar.setHomeButtonEnabled(true);
		actionbar.setDisplayShowTitleEnabled(true);
		

	}

	public void goclick(View button) {
		switch (button.getId()) {
		case R.id.button1:
			actionbar.show();
			actionbar.setDisplayShowHomeEnabled(true);
			actionbar.setHomeButtonEnabled(true);
			actionbar.setDisplayShowTitleEnabled(true);
			break;
		case R.id.button2:
//			actionbar.hide();
			actionbar.setDisplayShowHomeEnabled(false);
			actionbar.setHomeButtonEnabled(false);
			actionbar.setDisplayShowTitleEnabled(false);
			break;
		}
	}
	
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
//		View view = 
		MenuInflater inflater = new MenuInflater(ActionBarTest.this);
		inflater.inflate(R.menu.main, menu);
		return super.onCreateOptionsMenu(menu);
	}
	
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		return super.onOptionsItemSelected(item);
	}
	
	
}
