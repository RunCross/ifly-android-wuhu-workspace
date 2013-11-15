package com.runcross.maback;

import java.util.List;

import com.runcross.maback.data.Card;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class CardsChoice extends Activity implements OnClickListener{

	private String[] cards; 
	private List<Card> cardList;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.cards_choice);
		
		initCardList();
		
		cards = new String[9];
		Button btn1 = (Button) findViewById(R.id.cards1);
		Button btn2 = (Button) findViewById(R.id.cards2);
		Button btn3 = (Button) findViewById(R.id.cards3);
		Button btn4 = (Button) findViewById(R.id.cards4);
		Button btn5 = (Button) findViewById(R.id.cards5);
		Button btn6 = (Button) findViewById(R.id.cards6);
		Button btn7 = (Button) findViewById(R.id.cards7);
		Button btn8 = (Button) findViewById(R.id.cards8);
		Button btn9 = (Button) findViewById(R.id.cards9);
		
		btn1.setOnClickListener(this);
		
	}
	private void initCardList() {
		// TODO Auto-generated method stub
		
	}
	@Override
	public void onClick(View v) {
		switch(v.getId()){
		case R.id.cards1:
//			cards[1] = 
			break;
		}
	}
}
