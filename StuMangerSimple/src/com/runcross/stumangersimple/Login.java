package com.runcross.stumangersimple;

import java.io.File;

import com.runcross.stumangersimple.bean.StuInfo;
import com.runcross.stumangersimple.bean.UserInfo;
import com.runcross.stumangersimple.session.SESSION;
import com.runcross.stumangersimple.stu.StuListPre;
import com.runcross.stumangersimple.tool.BitmapTools;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

@SuppressLint("WorldReadableFiles")
public class Login extends Activity implements Callback {

	private EditText uname;
	private EditText upwd;

	private Button login;
	private Button register;
	private Button off;

	private ContentResolver cr;
	private Handler hand;

	private SharedPreferences shared;

	private static final int LOGIN_FAIL_BLANK = -1;
	private static final int LOGIN_FAIL_DATA = 0;
//	private static final int LOGIN = 1;
	private static final int REGISTER = 2;
//	private static final int REGISTER_FAIL_EXITS = -2;
//	private static final int REGISTER_FAIL_PWD = -3;
	private static final int OFF = 3;

	private SESSION session = new SESSION();

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.login);

		cr = getContentResolver();
		hand = new Handler(this);

		initSub();

		initPhotoFolder();
	}

	private void initPhotoFolder() {
		if (android.os.Environment.getExternalStorageState().equals(
				android.os.Environment.MEDIA_MOUNTED)) {
			File photop = new File(BitmapTools.root+"/"+BitmapTools.photoPath);
			BitmapTools.photofile = BitmapTools.root+"/"+BitmapTools.photoPath;
			if(!photop.exists()){
				BitmapTools.photofile = BitmapTools.root+"/"+BitmapTools.photoPath;
				photop.mkdirs();
			}
		} else {
		}
	}

	/**
	 * 初始化控件
	 */
	private void initSub() {

		shared = getSharedPreferences("stu", Context.MODE_PRIVATE);
		String nameStr = shared.getString("uname", "");

		uname = (EditText) findViewById(R.id.uname);
		upwd = (EditText) findViewById(R.id.upwd);

		login = (Button) findViewById(R.id.login);
		register = (Button) findViewById(R.id.register);
		off = (Button) findViewById(R.id.off);

		uname.setText(nameStr);
		// 当有用户名存在，密码框获取焦点
		if (nameStr.length() > 0)
			upwd.requestFocus();

		initListener();

	}

	/**
	 * 按钮监听
	 */
	private void initListener() {

		login.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				String name = uname.getText().toString();
				String pwd = upwd.getText().toString();

				Editor editor = shared.edit();
				editor.putString("uname", name);
				editor.commit();
				// System.out.println("name " + name);
				// System.out.println(editor.commit());

				// String nameStr = shared.getString("uname", "");
				// System.out.println("nameStr"+nameStr);

				if (name.length() < 1 || pwd.length() < 1) {
					hand.sendEmptyMessage(LOGIN_FAIL_BLANK);
				} else if (!login(name, pwd)) {
					hand.sendEmptyMessage(LOGIN_FAIL_DATA);
				} else {

					UserInfo user = new UserInfo();
					user.setUname(name);
					session.put("user", user);
//					getUserInfo(user);
					// System.out.println("SUCCESS");
					upwd.setText("");
					Intent intent = new Intent(Login.this, StuListPre.class);
					startActivity(intent);
					finish();
				}
			}
		});
		register.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				hand.sendEmptyMessage(REGISTER);
			}
		});
		off.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				hand.sendEmptyMessage(-1);
			}
		});
	}

	/**
	 * 获取用户详细信息
	 * 
	 * @param user
	 */
	protected boolean getUserInfo(StuInfo user) {
		ContentResolver cr = getContentResolver();
		Cursor cursor = cr
				.query(Uri
						.parse("content://com.runcross.stumanager.go/get/mess/username/"
								+ user.getUname()), null, null, null, null);
		if (cursor == null || cursor.getCount() < 1) {
			// System.out.println("NONE");
			return false;

		}
		// System.out.println(222);

		while (cursor.moveToNext()) {

			user.setUid(cursor.getInt(cursor.getColumnIndex("uid")));
			user.setUname(cursor.getString(cursor.getColumnIndex("uname")));
		}
		cursor.close();
		session.put("user", user);
		return false;
	}

	/**
	 * 登录查询
	 * 
	 * @param name
	 *            用户名
	 * @param pwd
	 *            密码
	 * @return
	 */
	protected boolean login(String name, String pwd) {
		ContentResolver cr = getContentResolver();
		Cursor cursor = cr.query(Uri
				.parse("content://com.runcross.stumanager.go/login/username/"
						+ name), null, null, null, null);
		if (cursor == null || cursor.getCount() < 1) {
			// System.out.println("NONE");
			return false;

		}
		// System.out.println(222);

		// while (cursor.moveToNext()) {
		//
		// System.out.println("ddddddddddddddddddd " + cursor.getString(0));
		// }
		cursor.close();
		return true;
	}

	/**
	 * 内部消息处理
	 * 
	 */
	@Override
	public boolean handleMessage(Message msg) {
		AlertDialog.Builder dialogBulder = new Builder(Login.this);
		switch (msg.what) {
		case OFF:
			AlertDialog dialog = dialogBulder
					.setTitle("提示")
					.setIcon(R.drawable.ic_launcher)
					.setMessage("退出程序")
					.setPositiveButton("确定",
							new DialogInterface.OnClickListener() {

								@Override
								public void onClick(DialogInterface dialog,
										int which) {
									// System.exit(0);
									Login.this.onDestroy();
								}
							}).setNegativeButton("取消", null).create();
			dialog.show();
			break;
		case LOGIN_FAIL_BLANK:

			AlertDialog dialoga = dialogBulder.setTitle("提示")
					.setIcon(R.drawable.ic_launcher).setMessage("用户名或密码未填写")
					.setPositiveButton("确定", null)
					.setNegativeButton("取消", null).create();
			dialoga.show();

			break;
		case LOGIN_FAIL_DATA:

			AlertDialog dialogb = dialogBulder.setTitle("提示")
					.setIcon(R.drawable.ic_launcher).setMessage("用户不存在或密码错误")
					.setPositiveButton("确定", null)
					.setNegativeButton("取消", null).create();
			dialogb.show();

			break;
		case REGISTER:
			LayoutInflater inflater = LayoutInflater.from(Login.this);
			final View view = inflater.inflate(R.layout.registere, null);
			final AlertDialog dialogc = dialogBulder.setTitle("用户注册")
					.setView(view).create();
			dialogc.show();

			Button btn_conf = (Button) view.findViewById(R.id.register_conf);
			Button btn_cancel = (Button) view
					.findViewById(R.id.register_cancel);

			btn_cancel.setOnClickListener(new OnClickListener() {

				@Override
				public void onClick(View v) {
					dialogc.dismiss();
				}
			});
			btn_conf.setOnClickListener(new OnClickListener() {

				@Override
				public void onClick(View v) {
					String regis_uname = ((EditText) view
							.findViewById(R.id.regi_uname)).getText()
							.toString();
					String regis_upwd = ((EditText) view
							.findViewById(R.id.regi_upwd)).getText().toString();
					String regis_upwd_conf = ((EditText) view
							.findViewById(R.id.regi_upwd_conf)).getText()
							.toString();
					if (regis_uname.length() < 1 || regis_upwd.length() < 1
							|| regis_upwd_conf.length() < 1) {
						Toast.makeText(Login.this, "信息不完整", Toast.LENGTH_SHORT)
								.show();
					} else if (!regis_upwd.equals(regis_upwd_conf)) {
						Toast.makeText(Login.this, "密码不一致", Toast.LENGTH_SHORT)
								.show();
					} else if (!register(regis_uname, regis_upwd)) {
						Toast.makeText(Login.this, "用户已经存在", Toast.LENGTH_SHORT)
								.show();
					} else {
						Toast.makeText(Login.this, "注册成功", Toast.LENGTH_SHORT)
								.show();
						dialogc.dismiss();
					}
				}
			});
			break;
		}
		return false;
	}

	/**
	 * 注册判断
	 * 
	 * @param regis_uname
	 *            用户名
	 * @param regis_upwd
	 *            密码
	 * @return
	 */
	protected boolean register(String regis_uname, String regis_upwd) {
		boolean flag = false;
		ContentValues values = new ContentValues();
		values.put("uname", regis_uname);
		values.put("upwd", regis_upwd);
		Uri uri = cr.insert(
				Uri.parse("content://com.runcross.stumanager.go/register"),
				values);
		if (uri == null) {
			flag = false;
		} else {
			flag = true;
			uname.setText(regis_uname);

		}
		return flag;

	}

}
