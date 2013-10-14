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
 * 启动界面
 * @author RunCross
 * @since 2013-08-11
 */
public class MainActivity extends Activity {

	//TextView result
	String response;
	
	//UI组件更新
//	Handler handler = new Handler()
//	{
//		@Override
//		public void handleMessage(Message msg)
//		{
//			if(msg.what == 0x123)
//			{
//				// 设置show组件显示服务器响应
//				TextView log = (TextView)findViewById(R.id.logining);
//				log.setText(null);
//			}
//		}
//	};
	
	/**
	 * 重写方法  初始化界面和监听
	 */
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		Button button = (Button)findViewById(R.id.login);
		
		TextView log = (TextView)findViewById(R.id.logining);
		log.setText("");
		
		//result = (TextView) findViewById(R.id.result);
		//监听
		button.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) { 
//				TextView log = (TextView)findViewById(R.id.logining);
//				log.setText("");
//				log.setText("登录中\n 请稍等..");
				new Thread()
				{
					@Override
					public void run()
					{
						//获得登录结果
						if(login()){				
							//startActivity(new Intent(MainActivity.this,Get.class));							 
							//result.setText("登陆成功");													
							Intent intent = new Intent();

							intent.setClass(MainActivity.this, Get.class);
							//设定跳转参数
							intent.putExtra("uid", Res.uid.toString());
							intent.putExtra("token",Res.token.toString());
							//开始跳转
							startActivity(intent);
						}
						else
						{				
							//result.setText("用户名或密码错误");
						}
					}//run
				}.start();
				// 发送消息通知UI线程更新UI组件
				//handler.sendEmptyMessage(0x123);				
					
				
				
//				if(login()){				
//					//startActivity(new Intent(MainActivity.this,Get.class));							 
//					//result.setText("登陆成功");													
//					Intent intent = new Intent();
//					
//					intent.setClass(MainActivity.this, Get.class);
//					//设定跳转参数
//					intent.putExtra("uid", uid.toString());
//					intent.putExtra("token",token.toString());
//					//开始跳转
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
	 * 登录验证
	 * @return 登录成功true 否则 false
	 */
    public boolean login(){
		
//		EditText name = (EditText) findViewById(R.id.uname);
//		EditText pass = (EditText) findViewById(R.id.upass);
//		String params = "action=loginIn&uid="+name.getText().toString()+"&pwd="+pass.getText().toString();
		String params = "action=loginIn&uid=RunCross&pwd=rgj3313301";
		//发送请求  得到返回值
		response =Login.sendPost(params);			
		
		//返回值判断
		if("parameter_error".equals(response)||"login_error".equals(response)||response == null || response.length()<=0) return false;			
	
		String[] resu = response.split("\\|");
		if(resu.length !=2 ) return false;				    
		Res.uid = new StringBuffer(resu[0]);
		Res.token = new StringBuffer(resu[1]);
		return true;
	}

}
