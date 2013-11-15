package com.runcross.servcetest;

import android.app.IntentService;
import android.content.Intent;

public class MyIntentService extends IntentService {

	public MyIntentService(){
		super("myIntentService");
	}
	
	public MyIntentService(String name) {
		super(name);
		// TODO Auto-generated constructor stub
	}

	
	/*
	 * ����
	 * (non-Javadoc)
	 * @see android.app.IntentService#onHandleIntent(android.content.Intent)
	 */
	@Override
	protected void onHandleIntent(Intent intent) {
		System.out.println("���յ�intent");
		int i = 0;
		while(i<10){
			i++;
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(i);
		}
	}

	
}
