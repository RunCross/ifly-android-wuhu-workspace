package run.cross.flymessage;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import run.cross.fly.R;
import run.cross.flymessage.bean.Page;
import run.cross.flymessage.bean.Project;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.Spinner;
import android.widget.TextView;

/**
 * ��ȡ�ֻ����뼰��֤��
 * @author RunCross
 * @since @since 2013-08-11
 */
@SuppressLint("HandlerLeak")
public class Get extends Activity {

	
	private String uid;
	private String token;
	
	private TextView phone;
	private String phoNum;
	
	private TextView cat;
	private String catNum;
	
	private Spinner proList;
	
	private TextView cau;
	
	private Page page;
	private Map<String, String> pro;
	private String pid;
	
	/**
	 * ����UI
	 */
	Handler handler = new Handler()
	{
		@Override
		public void handleMessage(Message msg)
		{
			switch (msg.what)
			{
			case 0x123:
				// ����show�����ʾ��������Ӧ
				//cau.setText(st);
				
				//����page����
				//initProject();
				
				//���������б�
				List<String> list = new ArrayList<String>();				
				//cau.setText(s);				
				Iterator<String> it = pro.keySet().iterator();  
				while (it.hasNext()) {  
					String key = it.next().toString();  
					list.add(key);  	           
				}  
				ArrayAdapter<String> adapter = new ArrayAdapter<String>(Get.this, android.R.layout.simple_spinner_item, list);
				proList.setAdapter(adapter);
				break;
			case 0x124:
				if ("max_count_disable".equals(phoNum))
				     { cau.setText("�ﵽ����ֻ��Ż�ȡ���� \n ������");}
				  else {phone.setText(phoNum);cau.setText("");}
				break;
			case 0x125:
				cat.setText(catNum);
			    break;
			
			}			
		}
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_get);
		
		phone = (TextView) findViewById(R.id.phone);
		cat = (TextView) findViewById(R.id.cat);
		proList = (Spinner)findViewById(R.id.prolist); 
		cau = (TextView)findViewById(R.id.caution);
		Button getPhone = (Button)findViewById(R.id.getPhone);
		Button getCat = (Button)findViewById(R.id.getCat);
		
		//�ӵ�һ��activity���ղ���       
	    Intent intent = getIntent();
	    Bundle bundle = intent.getExtras();
          uid = bundle.getString("uid");
        token = bundle.getString("token");
        
        phone.setText(uid);
          cat.setText(token);
        
        //��ȡ������Ŀ�б�
        new Thread(){

        	@Override
        	public void run(){
        		page = Phone.getAllProject(uid, token);
        		initProject();
        		handler.sendEmptyMessage(0x123);
        		
        	}
        }.start();
//        phone.setText("XXXX");
//		  cat.setText("XXXX");

        //���������б�
	    proList.setOnItemSelectedListener(new OnItemSelectedListener() {

			@Override
			public void onItemSelected(AdapterView<?> arg0, View arg1,
					int arg2, long arg3) {
				//��ȡ��Ŀid				
				pid = arg0.getItemAtPosition(arg2).toString();				
                pid = pro.get(pid);
			}

			@Override
			public void onNothingSelected(AdapterView<?> arg0) {
				
			}
		});
	    
	    //������ȡ�ֻ��Ű�ť
	    getPhone.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				
				//��ȡ�ֻ���
				new Thread(){
					@Override
					public void run() {
						phoNum = Phone.getPhone(uid, token, pid);
						if("max_count_disable".equals(phoNum)) Phone.cancelSMSRecvAll(uid,token);
						else {
						String[] num = phoNum.split("\\|");
						phoNum = num[0];}
						handler.sendEmptyMessage(0x124);						
					}									
				}.start();
			}
		});
	    
	    //������֤�밴ť
	    getCat.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				new Thread(){

					@Override
					public void run() {						
						
						catNum = Phone.getCat(uid,token,phoNum);
						handler.sendEmptyMessage(0x125);
					}
					
				}.start();
			}
		});
	}	
	
	/**
	 * ��ʼ����Ŀ�б���ȡ��Ŀ���ƺ�id
	 */
	public void initProject(){
		pro = new HashMap<String, String>();
		for(Project project: page.getContent())
		{
		  pro.put(project.getTitle(), project.getID());
		}		
		
	}
	

}
