package com.runcross.servicetest;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

public class MyServices extends Service {

	MyBind mb;
	Messenger mess;

	@Override
	public void onCreate() {
		super.onCreate();
		mb = new MyBind();
		System.out.println("Create");
	}

	@Override
	public int onStartCommand(Intent intent, int flags, int startId) {
		System.out.println("StartCommand");
		return super.onStartCommand(intent, flags, startId);
	}

	@Override
	public IBinder onBind(Intent intent) {
		System.out.println("onBind");
		mess = intent.getParcelableExtra("mess");
		mb.download();
		return mb;
	}

	@Override
	public boolean onUnbind(Intent intent) {
		System.out.println("onUnbind");
		return super.onUnbind(intent);
	}

	@Override
	public void onDestroy() {
		System.out.println("onDestroy");
		super.onDestroy();
	}

	@Override
	public void onRebind(Intent intent) {
		super.onRebind(intent);
		System.out.println("onRebind");
	}

	public class MyBind extends Binder {
		public int getCount() {
			return 1;
		}

		public void download() {
			new Thread(new Runnable() {

				@Override
				public void run() {
					
					int i = 1;
					while (i < 1100) {
						System.out.println("thread "+i);
						i++;
//						Message msg = new Message();
//						msg.what = 1;
//						msg.obj = i++;
//						if (mess != null) {
//							try {
//								mess.send(msg);
//							} catch (RemoteException e) {
//								// TODO Auto-generated catch block
//								e.printStackTrace();
//							}
//							
//						}// if
						try {
							Thread.sleep(1000);
						} catch (InterruptedException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					}// while
				}// run
			}).start();
		}//download
	}

}
