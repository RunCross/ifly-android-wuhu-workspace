package com.runcross.helloworld;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

/**
 * ��½����
 * @author RunCross
 *
 */
public class LoginActivity extends Activity implements OnClickListener{

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		setContentView(R.layout.login);
		Button btn  = (Button)findViewById(R.id.login);
		
//		button.setOnClickListener(new OnClickListener() {
//			
//			@Override
//			public void onClick(View arg0) {
//				
//			}
//		});
		//��������
		btn.setOnClickListener(this);
		//��������
//		btn.setLongClickable(this);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// TODO Auto-generated method stub
		return super.onCreateOptionsMenu(menu);
	}

	/**
	 * ��½����
	 */
	@Override
	public void onClick(View arg0) {
		EditText ename = (EditText)findViewById(R.id.uid);
		EditText epwd = (EditText)findViewById(R.id.pwd);
		String sess = ename.getText().toString();
		Intent intentToMainActivity = new Intent(LoginActivity.this, 
				MainActivity.class);
		startActivity(intentToMainActivity);
//		if((sess.length() > 0  ) &&
//		   (sess.equals(
//				   epwd.getText().
//				         toString()))) {
//			//��½�ɹ�
//		Intent intentToMainActivity = new Intent(LoginActivity.this, 
//				MainActivity.class);
//		startActivity(intentToMainActivity);
//		}
//		else {
//			//��½ʧ��
//			Toast.makeText(getApplicationContext(), "�û������������", Toast.LENGTH_LONG).show();
//		}
	}
}
