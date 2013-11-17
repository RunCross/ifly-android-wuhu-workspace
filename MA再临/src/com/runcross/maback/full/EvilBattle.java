package com.runcross.maback.full;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ListView;

public class EvilBattle extends Activity {

	private ListView evilBattel;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.evil_battle);
		
		evilBattel = (ListView) findViewById(R.id.evil_card_list);
		
	}
}
