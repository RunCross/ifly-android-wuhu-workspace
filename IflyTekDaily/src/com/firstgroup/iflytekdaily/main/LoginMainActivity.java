package com.firstgroup.iflytekdaily.main;
import java.util.Map;

import com.firstgroup.iflytekdaily.R;
import com.firstgroup.iflytekdaily.main.ChangePassword.MyUpdate;
import com.firstgroup.iflytekdaily.util.HttpClientUtil;
import com.firstgroup.iflytekdaily.util.Session;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Toast;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
/**
 * 登录界面，实现记住账号、记住密码，以及判断网络是否连接
 * @author Administrator
 *
 */
public class LoginMainActivity extends Activity {
	private EditText editUser;
	private EditText editPassword;
	private String userName;
	private String userPassword;
	private CheckBox chkName;
	private CheckBox chkPassword;
	private Button btnLogin;
	private SharedPreferences preferences;
	private SharedPreferences.Editor editor;
	private Map<String, String> map;
	private int stateCode;
	private String message;	
	private ConnectivityManager manager;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
    	
    	super.onCreate(savedInstanceState);
    	setContentView(R.layout.loginlayout);
    	
    	preferences=getSharedPreferences("userLogin",MODE_WORLD_READABLE);
    	editor=preferences.edit();
    	   	
    	editUser=(EditText)findViewById(R.id.editUser);
		editPassword=(EditText)findViewById(R.id.editPassword);		
		chkName=(CheckBox)findViewById(R.id.chkName);
		chkPassword=(CheckBox)findViewById(R.id.chkPassword);
		
		readSharePreferences();
		//光标放在末尾处
		editUser.setSelection(editUser.getText().length());
		
		btnLogin=(Button)findViewById(R.id.btnLogin);		 
		btnLogin.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				if (checkNetworkState() == false) {
					Toast.makeText(LoginMainActivity.this, "网络连接错误！",
							Toast.LENGTH_SHORT).show();
				} else {
				loginProgress update = new loginProgress();
				update.execute(1);
				}
			}
		});
		/*
		 * 取消记住账号，就连同记住密码的checkbox也一起取消勾选
		 */
		chkName.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				if(!isChecked){
					chkPassword.setChecked(isChecked);				   
				}
			}
		});
		/*
		 * 点击记住密码，就连同记住账号的checkbox也一起勾选
		 */
		chkPassword.setOnCheckedChangeListener(new OnCheckedChangeListener() {
			
			@Override
			public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
				if(isChecked){
					chkName.setChecked(isChecked);					
				}				
			}
		});
    }
    /**
     * 将本次登录的用户名、密码以及两个checkbox的状态写入到sharePreferences里
     * @param userName
     * @param userPassword
     * @param nameIsChecked
     * @param passIsChecked
     */
    public void writeSharePreferences(String userName,String userPassword,boolean nameIsChecked,boolean passIsChecked){
    	editor.putString("userName",userName);
    	editor.putString("userPassword",userPassword);
    	editor.putBoolean("nameIsChecked",nameIsChecked);
    	editor.putBoolean("passIsChecked",passIsChecked);
    	editor.commit();
    }
    /**
     * 读取sharePreferences里上一次登录的用户名和密码
     */
    public void readSharePreferences(){
    	String name=preferences.getString("userName",null);
    	String password=preferences.getString("userPassword",null);
    	if(name!=null&password==null){
    		editUser.setText(name);
    		chkName.setChecked(true);    	    	   
    	}
    	else if(name!=null&password!=null){
    	   editUser.setText(name);
    	   editPassword.setText(password);
    	   chkName.setChecked(true);
   	       chkPassword.setChecked(true);  		 
    	}  	
    }
    /**
     * 判断网络是否有链接
     * @return
     */
    private boolean checkNetworkState() {
        boolean flag = false;
        //得到网络连接信息
        manager = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
        //去进行判断网络是否连接
        if (manager.getActiveNetworkInfo() != null) {
            flag = manager.getActiveNetworkInfo().isAvailable();
        }
        return flag;
    }
    
    private int logincheck(){
    	
		
			userName = editUser.getText().toString();
			userPassword = editPassword.getText().toString();
			int userId = 0;
			String massage = "?" + "funID=" + userId + '&' + "username="
					+ userName + '&' + "password=" + userPassword;
			try {
				String result = HttpClientUtil.getLoginUser(massage);
				map = HttpClientUtil.turnToJSon(result);

				stateCode = Integer.parseInt(map.get("StateCode"));
				message = map.get("Message");

				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
    	
    	return stateCode;
    }
    
	class loginProgress extends AsyncTask<Integer, Integer, String> {
		ProgressDialog pdialog;
        int checkstate;
		@Override
		protected String doInBackground(Integer... params) {
			
			checkstate=logincheck();
			
			return null;
		}

		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			pdialog = new ProgressDialog(LoginMainActivity.this);
			pdialog.setTitle("正在登陆");
			pdialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
			pdialog.setIndeterminate(false);
			pdialog.show();

		}

		@Override
		protected void onProgressUpdate(Integer... values) {

			super.onProgressUpdate(values);
		}

		@Override
		protected void onPostExecute(String result) {
			super.onPostExecute(result);
			pdialog.dismiss();
			pdialog = null;			

			if (checkstate != 0) {
				HttpClientUtil.showStateCode(checkstate, LoginMainActivity.this);
				chkName.setChecked(false);
				chkPassword.setChecked(false);
				editPassword.setText(null);
				writeSharePreferences(null, null, false, false);
				
			} else {
				// 登录成功后，在这里跳转
				// 存放key
				Session.put("key", message);
				// 存放name
				Session.put("username", userName);
				Intent intent = new Intent(LoginMainActivity.this,
						YiDailyMainActivity.class);
				startActivity(intent);
				LoginMainActivity.this.finish();

			}
			if (chkName.isChecked() == true & !chkPassword.isChecked()) {
				if (stateCode == 0) {
					userName = editUser.getText().toString();
					writeSharePreferences(userName, null, true, false);
				}
			} else if (chkName.isChecked() == true
					& chkPassword.isChecked()) {
				if (stateCode == 0) {
					userName = editUser.getText().toString();
					userPassword = editPassword.getText().toString();
					writeSharePreferences(userName, userPassword, true,
							true);
				}
			} else if (chkName.isChecked() != true) {
				writeSharePreferences(null, null, false, false);
			}
		}
	}
}
