package com.runcross.servicetest;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.ITelephony.Stub;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.widget.Toast;

public class TelePhoneServiceTest extends Activity {
	
	private class myPhoneListener extends PhoneStateListener{
		public void onCallStateChanged(int state,String incomingNumber){
			super.onCallStateChanged(state,incomingNumber);
			
			if(state==TelephonyManager.CALL_STATE_RINGING){
				System.out.println("���绰��");
				Toast.makeText(TelePhoneServiceTest.this,"���绰��",200).show();
				
				Method method;
				try {
					method = Class.forName("android.os.ServiceManager")
							.getMethod("getService", String.class);
					// ��ȡԶ��TELEPHONY_SERVICE��IBinder����Ĵ���
					IBinder binder = (IBinder) method.invoke(null,
					new Object[] { TELEPHONY_SERVICE });
					
					//��ȡ����
					ITelephony telphone=Stub.asInterface(binder);
					if(incomingNumber.equals("10086")){
					//�����绰
					telphone.endCall();
					}
					
				} catch (NoSuchMethodException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalArgumentException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (InvocationTargetException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (RemoteException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else if(state==TelephonyManager.CALL_STATE_OFFHOOK){
				
				System.out.println("�绰��ͨ");
				Toast.makeText(TelePhoneServiceTest.this,"�绰��ͨ",200).show();
			}
			else if(state==TelephonyManager.DATA_DISCONNECTED){
				System.out.println("�绰�ҵ�");
				Toast.makeText(TelePhoneServiceTest.this,"�绰�ҵ�",200).show();
			}
		}
	}
	
	private myPhoneListener listener=new myPhoneListener();
	
   @Override
    protected void onCreate(Bundle savedInstanceState) {
	// TODO Auto-generated method stub
	   super.onCreate(savedInstanceState);
	   //��ȡϵͳ��Service
	   TelephonyManager telMagager=(TelephonyManager)getSystemService(Context.TELEPHONY_SERVICE);
	   
	   telMagager.listen(listener,PhoneStateListener.LISTEN_CALL_STATE);
   }
}
