package com.example.aidlserviceclient;



import com.example.aidltest.IStudent;
import com.example.aidltest.IStudent.Stub;
import com.example.aidltest.SchoolClass;

import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.widget.Toast;

public class MainActivity extends Activity  implements Handler.Callback{

	private IStudent studentClient;
	private ServiceConnection myconn=new ServiceConnection() {
		
		@Override
		public void onServiceDisconnected(ComponentName name) {
			// TODO Auto-generated method stub
			
		}
		
		@Override
		public void onServiceConnected(ComponentName name, IBinder service) {
			//获取到代理
			studentClient=Stub.asInterface(service);
		}
	};
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		Intent intent=new Intent();
		intent.setAction("com.example.aidlserver");
		startService(intent);
		bindService(intent, myconn, BIND_AUTO_CREATE);
		
		Handler handler=new Handler(this);
		handler.sendEmptyMessageDelayed(1, 2000);
	}

	

	@Override
	public boolean handleMessage(Message msg) {
		// TODO Auto-generated method stub
		try {
			Toast.makeText(MainActivity.this, String.valueOf(studentClient.getCount()), 200).show();
//			Toast.makeText(MainActivity.this, studentClient.getStudent().getId()+"-"+studentClient.getStudent().getName(), 200).show();
			Toast.makeText(MainActivity.this, studentClient.getStudent1(new SchoolClass(studentClient.getStudent())).getId()+"-"+studentClient.getStudent1(new SchoolClass(studentClient.getStudent())).getName(), 200).show();
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

}
