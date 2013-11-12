package com.example.chattest;


import android.app.Activity;
import android.app.AlertDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;

public class Login extends Activity {
	private EditText username;
	private EditText password;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.login);

		Button btnLogin = (Button) findViewById(R.id.login_login);
		username = (EditText) findViewById(R.id.login_username);
		password = (EditText) findViewById(R.id.login_password);

		btnLogin.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View arg0) {
				if("weixin".equals(username.getText().toString()) && "123".equals(password.getText().toString()))   //�ж� �ʺź�����
		        {
		             Intent intent = new Intent();
		             intent.setClass(Login.this,Loading.class);
		             startActivity(intent);
		            
		          }
		        else if("".equals(username.getText().toString()) || "".equals(password.getText().toString()))   //�ж� �ʺź�����
		        {
		        	new AlertDialog.Builder(Login.this)
					.setIcon(getResources().getDrawable(R.drawable.login_error_icon))
					.setTitle("��¼����")
					.setMessage("΢���ʺŻ������벻��Ϊ�գ�\n��������ٵ�¼��")
					.create().show();
		         }
		        else{
		           
		        	new AlertDialog.Builder(Login.this)
					.setIcon(getResources().getDrawable(R.drawable.login_error_icon))
					.setTitle("��¼ʧ��")
					.setMessage("΢���ʺŻ������벻��ȷ��\n������������룡")
					.create().show();
		        }

				}

			
		});

	}

	public void login_back(View v) {
		Login.this.finish();

	}

	public void forget_password(View v) {

	}
}
