package run.cross.flymessage;

import run.cross.fly.R;
import run.cross.flymessage.res.Res;
import android.os.Bundle;
import android.app.Activity;
import android.content.Intent;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

/**
 * ��������
 * @author RunCross
 * @since 2013-08-11
 */
public class MainActivity extends Activity {

	//TextView result
	String response;
	
	//UI�������
//	Handler handler = new Handler()
//	{
//		@Override
//		public void handleMessage(Message msg)
//		{
//			if(msg.what == 0x123)
//			{
//				// ����show�����ʾ��������Ӧ
//				TextView log = (TextView)findViewById(R.id.logining);
//				log.setText(null);
//			}
//		}
//	};
	
	/**
	 * ��д����  ��ʼ������ͼ���
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		Button button = (Button)findViewById(R.id.login);
		
		TextView log = (TextView)findViewById(R.id.logining);
		log.setText("");
		
		//result = (TextView) findViewById(R.id.result);
		//����
		button.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) { 
//				TextView log = (TextView)findViewById(R.id.logining);
//				log.setText("");
//				log.setText("��¼��\n ���Ե�..");
				new Thread()
				{
					@Override
					public void run()
					{
						//��õ�¼���
						if(login()){				
							//startActivity(new Intent(MainActivity.this,Get.class));							 
							//result.setText("��½�ɹ�");													
							Intent intent = new Intent();

							intent.setClass(MainActivity.this, Get.class);
							//�趨��ת����
							intent.putExtra("uid", Res.uid.toString());
							intent.putExtra("token",Res.token.toString());
							//��ʼ��ת
							startActivity(intent);
						}
						else
						{				
							//result.setText("�û������������");
						}
					}//run
				}.start();
				// ������Ϣ֪ͨUI�̸߳���UI���
				//handler.sendEmptyMessage(0x123);				
					
				
				
//				if(login()){				
//					//startActivity(new Intent(MainActivity.this,Get.class));							 
//					//result.setText("��½�ɹ�");													
//					Intent intent = new Intent();
//					
//					intent.setClass(MainActivity.this, Get.class);
//					//�趨��ת����
//					intent.putExtra("uid", uid.toString());
//					intent.putExtra("token",token.toString());
//					//��ʼ��ת
//					startActivity(intent);
//				}
				
				
				
				
			}//onclick
		});
		
		
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	
	/**
	 * ��¼��֤
	 * @return ��¼�ɹ�true ���� false
	 */
    public boolean login(){
		
//		EditText name = (EditText) findViewById(R.id.uname);
//		EditText pass = (EditText) findViewById(R.id.upass);
//		String params = "action=loginIn&uid="+name.getText().toString()+"&pwd="+pass.getText().toString();
		String params = "action=loginIn&uid=RunCross&pwd=rgj3313301";
		//��������  �õ�����ֵ
		response =Login.sendPost(params);			
		
		//����ֵ�ж�
		if("parameter_error".equals(response)||"login_error".equals(response)||response == null || response.length()<=0) return false;			
	
		String[] resu = response.split("\\|");
		if(resu.length !=2 ) return false;				    
		Res.uid = new StringBuffer(resu[0]);
		Res.token = new StringBuffer(resu[1]);
		return true;
	}

}
