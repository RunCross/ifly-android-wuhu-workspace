package run.cross.calcula;

import java.util.Stack;

import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.TextView;

public class MainActivity extends Activity implements OnClickListener{

	//�ı�����ʱ����
//	private String cont;
	//����ջ
	private Stack<Double> numb;
	//����ջ
	private Stack<Integer> sign;
	//��ʱ����
	private int numtemp = 0;
	//���ְ�ť��
	private Button[] btnum;
	//���Ű�ť��
	private Button[] btnsign;
	//=
	private Button equ;
	//����
	private Button btnclear;
	//�����
	private TextView result;
	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.comgrid);
		//��ʼ��ջ
		initStack();
		//��ʼ�����
		initView();
		//��ʼ������
		initListener();
		
		
	}

	/**
	 * ���ü���
	 */
	private void initListener() {
		
		//����
		for(int i = 0; i<btnum.length;i++)
		{
			btnum[i].setOnClickListener(this);
		}
		
		//�����
		for(int i = 0; i<btnsign.length;i++)
		{
			btnsign[i].setOnClickListener(this);
		}
		
		//�Ⱥ�
		equ.setOnClickListener(this);
		//����
		btnclear.setOnClickListener(this);
		
	}

	/**
	 * �������
	 */
	private void initView() {
		int num = 0;		
		btnum = new Button[10];
		btnsign = new Button[4];
		
		equ = (Button) findViewById(R.id.go);
		btnclear = (Button) findViewById(R.id.clear);
		
		Button btn1 = (Button) findViewById(R.id.multi);
		Button btn2 = (Button) findViewById(R.id.plus);
		Button btn3 = (Button) findViewById(R.id.subtract);
		Button btn4 = (Button) findViewById(R.id.vdecre);
		//Button btn5 = (Button) findViewById(R.id.remainder);
		
		btnsign[0] = btn1;
		btnsign[1] = btn2;
		btnsign[2] = btn3;
		btnsign[3] = btn4;
//		btnsing[4] = btn 5;
		
		GridLayout gl = (GridLayout) findViewById(R.id.cal);
		
		for(int i=0;i<gl.getChildCount();i++)
		{
			
			View v = gl.getChildAt(i);
			if (v instanceof Button){
				Button btn = new Button(this);
				btn = (Button) v;
				char ch = btn.getText().toString().charAt(0);
				if (java.lang.Character.isDigit(ch)){
					btnum[num++] = btn;
				}
			}
		}//for
		
		result = (TextView) findViewById(R.id.result);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	/**
	 * ��ʼ��ջ
	 */
	private void initStack(){
		numb = new Stack<Double>();
		sign = new Stack<Integer>();
		sign.push(Integer.valueOf((int)'#'));
//		cont = new String();
	}

	@Override
	public void onClick(View v) {
		Button btn = (Button) v;
		if ("clear".equals(btn.getText().toString()))
		{
			result.setText("");
			numtemp = 0; 
			initStack();
			return ;
		}
		String bst = btn.getText().toString();
		String tst = result.getText().toString();
		if(java.lang.Character.isDigit(bst.charAt(0))){
			tst = tst + bst;
			result.setText(tst);
			numtemp = numtemp*10 + bst.charAt(0) - 48;
		}
		else {
//			int num = 0;
//			int ind = 0;
//			
//			while(java.lang.Character.isDigit(tst.charAt(ind))){
//			  	num = num*10 + tst.charAt(ind) - 48;
//			}
//			if (ind==0){
//				return;
//			}else{
//				numb.add(num);
//			}
	
			switch (bst.charAt(0)){			
			case '+':
			case '-':
			case '*':
			case '/':
				numb.push((double) numtemp);				
				numtemp = 0;
				sign.push((int) bst.charAt(0));
				tst = tst + bst;
				result.setText(tst);
				break;
			case '=':
				//����
				numb.push((double) numtemp);				
				numtemp = 0;
				Cal();
				tst= numb.pop().toString();
				result.setText(tst);
			}
			
		}
	}

	/**
	 * �������
	 */
	private void Cal() {		
		while(sign.peek().intValue() != (int)'#'){
			Double a = numb.pop();
			Double b = numb.pop();
			Double c;
			char ch = (char) sign.pop().intValue();
			char cht = (char) sign.peek().intValue();
			switch (ch){
			  case '+':
				  switch (cht){
				  case '#':
				  case '+':
				  case '-':
					  a += b;
					  numb.push(a);
					  //sign.push(Integer.valueOf((int)cht));
					  break;
				  case '*':
					  c = numb.pop();
					  c = c*b;
					  numb.push(c);
					  numb.push(a);
					  sign.pop();
					  sign.push(Integer.valueOf((int)ch));
					  break;
				  case '/':
					  c = numb.pop();
					  c = c/b;
					  numb.push(c);
					  numb.push(a);
					  sign.pop();
					  sign.push(Integer.valueOf((int)ch));
					  break;
				  }
				  break;
			  case '-':
				  switch (cht){
				  case '#':
				  case '+':
				  case '-':
					  a = b - a;
					  numb.push(a);
					 // sign.push(Integer.valueOf((int)cht));
					  break;
				  case '*':
					  c = numb.pop();
					  c = c*b;
					  numb.push(c);
					  numb.push(a);
					  sign.pop();
					 // sign.push(Integer.valueOf((int)ch));
					  break;
				  case '/':
					  c = numb.pop();
					  c = c/b;
					  numb.push(c);
					  sign.pop();
//					  sign.push(Integer.valueOf((int)cht));
					  break;
				  }
				  break;
			  case '*':
				  a *= b;
				  numb.push(a);
//				  sign.push(Integer.valueOf((int)cht));
				  break;
			  case '/':
				  a = b / a;
				  numb.push(a);
//				  sign.push(Integer.valueOf((int)cht));
				  break;
			}
		}
		//sign.push(Integer.valueOf((int)'#'));
	}

//	private boolean issign(char ch) {
//		switch (ch){			
//		case '+':				
//		case '-':
//		case '*':
//		case '/':
//		return false;
//		}	
//		return true;
//	}		
}
