package com.runcross.webviewtest;

import android.content.Context;
import android.widget.Toast;

public class MyObject {
    private Context context;
    MyObject(Context context) {
		this.context=context;
	}
    public void login(String name,String password){
    	if(name.equals(password)){
    		Toast.makeText(context, "��¼�ɹ�",Toast.LENGTH_SHORT).show();
    	}
    	else{
    		Toast.makeText(context, "��¼ʧ��",Toast.LENGTH_SHORT).show();
    	}
    }
}
