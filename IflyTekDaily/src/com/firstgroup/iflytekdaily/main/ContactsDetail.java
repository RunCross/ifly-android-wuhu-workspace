package com.firstgroup.iflytekdaily.main;

import com.firstgroup.iflytekdaily.R;
import com.firstgroup.iflytekdaily.bean.Contacts;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class ContactsDetail extends Activity {

	private EditText name;
	private EditText tel;
	private EditText email;
	private EditText homephone;
	private EditText remark;

	private Contacts contact;

	private AlertDialog dialogCancel;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.contact_detail);

		contact = (Contacts) getIntent().getSerializableExtra("contact");

		initSub();

	}

	private void initSub() {
		name = (EditText) findViewById(R.id.contact_detail_name);
		tel = (EditText) findViewById(R.id.contact_detail_tel);
		email = (EditText) findViewById(R.id.contact_detail_email);
		homephone = (EditText) findViewById(R.id.contact_detail_homephone);
		remark = (EditText) findViewById(R.id.contact_detail_remark);

		name.setText(contact.getName());
		tel.setText(contact.getTel());
		email.setText(contact.getMail());
		homephone.setText(contact.getHomephone());
		remark.setText(contact.getRemark());

		AlertDialog.Builder dialogBulder = new Builder(ContactsDetail.this);
		dialogCancel = dialogBulder.setTitle("提示")
				.setIcon(R.drawable.ic_launcher).setMessage("放弃修改")
				.setPositiveButton("确认", new DialogInterface.OnClickListener() {

					@Override
					public void onClick(DialogInterface dialog, int which) {
						finish();
					}
				}).setNegativeButton("取消", null).create();

	}

	public void onClick(View view) {
		switch (view.getId()) {
		case R.id.contact_detail_submit:

			if (tel.getText().toString() == ""
					|| tel.getText().toString() == null
					|| tel.getText().toString().length() != 11) {
				Toast.makeText(ContactsDetail.this, "请填写正确的手机号码",
						Toast.LENGTH_SHORT).show();
				return;
			}

			ContentValues values = new ContentValues();
			values.put("tel", tel.getText().toString());
			values.put("mail", email.getText().toString());
			values.put("homephone", homephone.getText().toString());
			values.put("remark", remark.getText().toString());

			ContentResolver cr = getContentResolver();
			int row = cr
					.update(Uri
							.parse("content://com.firstgroup.iflytekdaily.Contacts/update"),
							values, "id = ?", new String[] { String
									.valueOf(contact.getId()) });
			if(row>0){
				Toast.makeText(ContactsDetail.this, "修改成功",
						Toast.LENGTH_SHORT).show();
				finish();
			}else{
				Toast.makeText(ContactsDetail.this, "修改失败",
						Toast.LENGTH_SHORT).show();
			}

			break;
		case R.id.contact_detail_cancel:
			dialogCancel.show();
			break;
		}
	}
}
