package com.example.chattest;




import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;

public class Welcome extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		 requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.welcome);
	
	}
public void btnLogin(View v){
	
	Intent intentToAnotherActivity=new Intent(Welcome.this,Login.class);
	startActivity(intentToAnotherActivity);
}
public void btnRegister(View v){
	Intent intentToAnotherActivity=new Intent(Welcome.this,Register.class);
	startActivity(intentToAnotherActivity);
}

}
