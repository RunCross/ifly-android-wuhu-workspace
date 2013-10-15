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
import android.widget.Toast;

public class MainActivity extends Activity implements OnClickListener{

	//文本框临时内容
//	private String cont;
	//数字栈
	private Stack<Double> numb;
	//符号栈
	private Stack<Integer> sign;
	//临时数字
	private Double numtemp = 0.0;
	//数字按钮组
	private Button[] btnum;
	//符号按钮组
	private Button[] btnsign;
	//=
	private Button equ;
	//清屏
	private Button btnclear;
	//结果栏
	private TextView result;
	//输入标记
	private boolean inputflag;
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.comgrid);
		
		//初始化栈
		initStack();
		
		//初始化组件
		initView();
		
		//初始化监听
		initListener();
		
		
	}

	/**
	 * 配置监听
	 */
	private void initListener() {
		
		//数字
		for(int i = 0; i<btnum.length;i++)
		{
			btnum[i].setOnClickListener(this);
		}
		
		//运算符
		for(int i = 0; i<btnsign.length;i++)
		{
			btnsign[i].setOnClickListener(this);
		}
		
		//等号
		equ.setOnClickListener(this);
		//清屏
		btnclear.setOnClickListener(this);
		
	}

	/**
	 * 配置组件
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
	 * 初始化栈
	 */
	private void initStack(){
		numb = new Stack<Double>();
		sign = new Stack<Integer>();
		sign.push(Integer.valueOf((int)'#'));
		inputflag = true;
//		cont = new String();
	}

	/**
	 * 监听响应
	 */
	@Override
	public void onClick(View v) {
		Button btn = (Button) v;
		if ("clear".equals(btn.getText().toString()))
		{
			result.setText("");
			numtemp = 0.0; 
			initStack();
			return ;
		}
		String bst = btn.getText().toString();
		String tst = result.getText().toString();
		if(java.lang.Character.isDigit(bst.charAt(0))){
			tst = tst + bst;
			result.setText(tst);
			numtemp = numtemp*10 + bst.charAt(0) - 48;
			inputflag = true;
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
				
				//简易判断
				if (!inputflag){
					Toast.makeText(this, "输入错误", Toast.LENGTH_SHORT).show();
					break;
				}
				
				numb.push((double) numtemp);				
				numtemp = 0.0;
				sign.push((int) bst.charAt(0));
				tst = tst + bst;
				result.setText(tst);
				inputflag = false;
				break;
			case '=':
				//简易判断
				if (!inputflag){
					Toast.makeText(this, "输入错误", Toast.LENGTH_SHORT).show();
					break;
				}
				
				//计算				
				numb.push((double) numtemp);				
				numtemp = 0.0;
				Cal();
				numtemp = numb.peek();
				tst= numb.pop().toString();
				result.setText(tst);
			}
			
		}
	}

	/**
	 * 计算过程
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
					  a = a + b;
					  numb.push(a);
					  break;
				  case '+':
					  a = a + b;
					  numb.push(a);
					  sign.pop();
					  sign.push(Integer.valueOf((int) '+'));
					  break;
				  case '-':
					  a =0 - b + a;
					  numb.push(a);
					  sign.pop();
					  sign.push(Integer.valueOf((int) '+'));
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
					  a = b - a;
					  numb.push(a);
					  break;
				  case '+':
					  a = b - a;
					  numb.push(a);
					  sign.pop();
					  sign.push(Integer.valueOf((int) '+'));
					  break;
				  case '-':
					  a = 0 - b - a;
					  numb.push(a);
					  sign.pop();
					  sign.push(Integer.valueOf((int) '+'));
					 // sign.push(Integer.valueOf((int)cht));
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
					  sign.pop();
					  sign.push(Integer.valueOf((int)ch));
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
