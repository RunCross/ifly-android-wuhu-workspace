package com.firstgroup.iflytekdaily.main;

import com.firstgroup.iflytekdaily.R;
import com.firstgroup.iflytekdaily.work.ChangePass;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class ChangePassword extends Activity implements Callback {

	private EditText oldPass;
	private EditText newPass;
	private EditText newdPassConfim;
	
	private TextView oldWarn;
	private TextView newWarn;
	private TextView newWarnConfim;
	
	private String oldStr;
	private String newStr;
	private String newStrConfim;
	
	private Handler hand;
	
	private static final int OLD_NULL = 1;
	private static final int NEW_NULL = 2;
	private static final int NEW_CONFIM_NULL = 3;
	private static final int OLD = 4;
	private static final int NEW = 5;
	private static final int NEW_CONFIM = 6;
	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.pass_change);
		
		hand = new Handler(this);
		initSub();
	}
	
	/**
	 * ��ʼ�����
	 */
	private void initSub() {
		oldPass = (EditText) findViewById(R.id.old_pass);
		newPass = (EditText) findViewById(R.id.new_pass);
		newdPassConfim = (EditText) findViewById(R.id.new_pass_confim);
		
		oldWarn = (TextView) findViewById(R.id.hint_old_pass);
		newWarn = (TextView) findViewById(R.id.hint_new_pass);
		newWarnConfim = (TextView) findViewById(R.id.hint_new_pass_confim);
	}

	public void onClick(View view){
		switch(view.getId()){
		//�ύ�޸�����
		case R.id.changepass_submit:
			//�ύ
			MyUpdate update = new MyUpdate();
			update.execute(1);
//			if(check()){
//				AlertDialog.Builder dialogBulder = new Builder(
//						ChangePassword.this);
//				AlertDialog dialog = dialogBulder
//						.setTitle("��ʾ")
//						.setIcon(R.drawable.ic_launcher)
//						.setMessage("�����޸ĳɹ�")
//						.setPositiveButton("ȷ��",
//								new DialogInterface.OnClickListener() {
//
//									@Override
//									public void onClick(DialogInterface dialog,
//											int which) {
//										finish();
//									}
//								}).create();
//				dialog.show();	
//			}else{
//				Toast.makeText(ChangePassword.this, "ԭʼ���벻�Ի������벻һ��", Toast.LENGTH_SHORT).show();
//			}
			break;
		case R.id.changepass_cancel:
			finish();
			break;
		}
	}

	/**
	 * �ύ
	 */
	private boolean check() {
		//��¼����״̬
		boolean state = false;
		//��д�ж�
		boolean flage = true;
		
		oldStr = oldPass.getText().toString();
		newStr = newPass.getText().toString();
		newStrConfim = newdPassConfim.getText().toString();
		
		
		if("".equals(oldStr)||oldStr == null){
//			oldWarn.setVisibility(View.VISIBLE);
			hand.sendEmptyMessage(OLD_NULL);
			flage = false;
		}else{
//			oldWarn.setVisibility(View.INVISIBLE);
			hand.sendEmptyMessage(OLD);
		}
		
		if("".equals(newStr)||newStr == null){
			hand.sendEmptyMessage(NEW_NULL);
//			newWarn.setVisibility(View.VISIBLE);
			flage = false;
		}else{
//			newWarn.setVisibility(View.INVISIBLE);
			hand.sendEmptyMessage(NEW);
		}
		
		if("".equals(newStrConfim)||newStrConfim == null){
			hand.sendEmptyMessage(NEW_CONFIM_NULL);
//			newWarnConfim.setVisibility(View.VISIBLE);
			flage = false;
		}else{
//			newWarnConfim.setVisibility(View.INVISIBLE);
			hand.sendEmptyMessage(NEW_CONFIM);
		}
		if(!newStr.equals(newStrConfim)){
			
			return false;
		}

		if(flage){
			state = ChangePass.change(oldStr,newStr);
		}
		
		return state;
	}
	
	
	class MyUpdate extends AsyncTask<Integer, Integer, String> {

		ProgressDialog pdialog;
		boolean resu;

		@Override
		protected String doInBackground(Integer... params) {

			resu = check();
			return null;
		}

		/**
		 * ������ִ��ǰ����ĺ���
		 */
		@Override
		protected void onPreExecute() {
			super.onPreExecute();
			pdialog = new ProgressDialog(ChangePassword.this);
			pdialog.setTitle("�޸�����");			
			pdialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);
			pdialog.setIndeterminate(false);
			pdialog.show();

		}

		/**
		 * �����ȸı�
		 */
		@Override
		protected void onProgressUpdate(Integer... values) {
			super.onProgressUpdate(values);

		}

		/**
		 * ������ִ����
		 */
		@Override
		protected void onPostExecute(String result) {
			super.onPostExecute(result);
			pdialog.dismiss();
			pdialog = null;
			if(resu){
				AlertDialog.Builder dialogBulder = new Builder(
						ChangePassword.this);
				AlertDialog dialog = dialogBulder
						.setTitle("��ʾ")
						.setIcon(R.drawable.ic_launcher)
						.setMessage("�����޸ĳɹ�")
						.setPositiveButton("ȷ��",
								new DialogInterface.OnClickListener() {

									@Override
									public void onClick(DialogInterface dialog,
											int which) {
										finish();
									}
								}).create();
				dialog.show();	
			}else{
				Toast.makeText(ChangePassword.this, "ԭʼ���벻�Ի������벻һ��", Toast.LENGTH_SHORT).show();
			}
		}
	}


	@Override
	public boolean handleMessage(Message msg) {
		switch(msg.what){
		case OLD_NULL:
			oldWarn.setVisibility(View.VISIBLE);
			break;
		case NEW_NULL:
			newWarn.setVisibility(View.VISIBLE);
			break;
		case NEW_CONFIM_NULL:
			newWarnConfim.setVisibility(View.VISIBLE);
			break;
		case OLD:
			oldWarn.setVisibility(View.INVISIBLE);
			break;
		case NEW:
			newWarn.setVisibility(View.INVISIBLE);
			break;
		case NEW_CONFIM:
			newWarnConfim.setVisibility(View.INVISIBLE);
			break;
		}
		return false;
	}
}