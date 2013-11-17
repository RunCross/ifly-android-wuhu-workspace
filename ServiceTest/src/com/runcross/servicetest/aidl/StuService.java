package com.runcross.servicetest.aidl;



import com.runcross.servicetest.aidl.IStudent.Stub;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;

public class StuService extends Service {

	private StudentBinder binder;
	
	@Override
	public IBinder onBind(Intent intent) {
		binder=new StudentBinder();
		return binder;
	}

	@Override
	public void onCreate() {
		// TODO Auto-generated method stub
		super.onCreate();
	}
	
	@Override
	public boolean onUnbind(Intent intent) {
		// TODO Auto-generated method stub
		return super.onUnbind(intent);
	}
	
	private class StudentBinder extends Stub{

		@Override
		public int getCount() throws RemoteException {
			// TODO Auto-generated method stub
			return 0;
		}

		@Override
		public Student getStudent() throws RemoteException {
			Student stu = new Student();
			stu.setId(2);
			stu.setName("456");
			School sch = new School();
			sch.setId(123);
			sch.setName("hfuu");
			stu.setSch(sch);
			return stu;
		}

		@Override
		public Student getStudent1(School test) throws RemoteException {
			Student stu = new Student();
			stu.setSch(test);
			return stu;
		}
	
	} 
}
