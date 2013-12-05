package com.firstgroup.iflytekdaily.main;

import java.util.ArrayList;
import java.util.List;

import com.firstgroup.iflytekdaily.R;
import com.firstgroup.iflytekdaily.adapter.ContactPersonAdapter;
import com.firstgroup.iflytekdaily.bean.Contacts;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.Toast;

public class ContactsActivity extends Activity implements OnClickListener {

	private ListView contactList;
	private List<Contacts> contacts;
	private ContactPersonAdapter adapter;
	private View menuView;
	private AlertDialog dialog;
	private ImageButton phone;
	private ImageButton message;
	private ImageButton email;
	private EditText search;

	private int location;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.contacts_list);

		contacts = new ArrayList<Contacts>();
		initData();

		contactList = (ListView) findViewById(R.id.contact_list);
		adapter = new ContactPersonAdapter(contacts, ContactsActivity.this);
		contactList.setAdapter(adapter);
		menuView = View.inflate(this, R.layout.contact_go, null);

		phone = (ImageButton) menuView.findViewById(R.id.go_phone);
		message = (ImageButton) menuView.findViewById(R.id.go_message);
		email = (ImageButton) menuView.findViewById(R.id.go_email);
		search = (EditText) findViewById(R.id.searchCont);

		phone.setOnClickListener(this);
		message.setOnClickListener(this);
		email.setOnClickListener(this);

//		System.out.println(menuView.getWidth());
//		System.out.println(menuView.getHeight());
		AlertDialog.Builder dialogBulder = new Builder(ContactsActivity.this);
		dialog = dialogBulder.setView(menuView).create();

		contactList.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {

				dialog.show();
				dialog.getWindow().setLayout(450, 330);
				location = position;

			}
		});
		contactList.setOnItemLongClickListener(new OnItemLongClickListener() {

			@Override
			public boolean onItemLongClick(AdapterView<?> parent, View view,
					int position, long id) {
				Intent intent = new Intent(ContactsActivity.this, ContactsDetail.class);
				
				intent.putExtra("contact", contacts.get(position));
				
				startActivity(intent);
				return false;
			}
			
		});		

	}

	private void initData() {
		contacts.clear();
		ContentResolver cr = getContentResolver();
		Cursor cursor = cr
				.query(Uri
						.parse("content://com.firstgroup.iflytekdaily.Contacts/contact"),
						null, null, null, null);
		while (cursor.moveToNext()) {
			Contacts con = new Contacts();
			con.setId(cursor.getInt(0));
			con.setName(cursor.getString(1));
			con.setTel(cursor.getString(2));
			con.setMail(cursor.getString(3));
			con.setHomephone(cursor.getString(4));
			con.setRemark(cursor.getString(5));
			contacts.add(con);
		}
		cursor.close();
	}

	@Override
	public void onClick(View v) {
		Intent intent = new Intent();
		switch (v.getId()) {
		case R.id.go_phone:
			if ("".equals(contacts.get(location).getTel())
					|| contacts.get(location).getTel() == null) {
				dialog.dismiss();
				Toast.makeText(ContactsActivity.this, "联系人号码不存在",
						Toast.LENGTH_SHORT).show();
			} else {
				// 系统默认的action，用来打开默认的电话界面
				intent.setAction(Intent.ACTION_CALL);
				// 需要拨打的号码
				intent.setData(Uri.parse("tel:"
						+ contacts.get(location).getTel()));
				startActivity(intent);
			}
			break;
		case R.id.go_message:
			if ("".equals(contacts.get(location).getTel())
					|| contacts.get(location).getTel() == null) {
				dialog.dismiss();
				Toast.makeText(ContactsActivity.this, "联系人号码不存在",
						Toast.LENGTH_SHORT).show();
			} else {
				intent.setAction(Intent.ACTION_SENDTO);
				intent.setData(Uri.parse("smsto:"
						+ contacts.get(location).getTel()));
				startActivity(intent);
			}
			break;
		case R.id.go_email:
			if ("".equals(contacts.get(location).getMail())
					|| contacts.get(location).getMail() == null) {
				dialog.dismiss();
				Toast.makeText(ContactsActivity.this, "联系人号码不存在",
						Toast.LENGTH_SHORT).show();
			} else {
				intent.setAction(Intent.ACTION_SENDTO);
				intent.setData(Uri.parse("mailto:way.ping.li@gmail.com"));
				startActivity(intent);
			}
			break;
		case R.id.search:
			String cont = search.getText().toString();
			if(cont == null || "".equals(cont)){
				initData();
			}else{
				contacts.clear();
				ContentResolver cr = getContentResolver();
				Cursor cursor = cr
						.query(Uri
								.parse("content://com.firstgroup.iflytekdaily.Contacts/con/username/"+cont),
								null, null, null, null);
				while (cursor.moveToNext()) {
					Contacts con = new Contacts();
					con.setId(cursor.getInt(0));
					con.setName(cursor.getString(1));
					con.setTel(cursor.getString(2));
					con.setMail(cursor.getString(3));
					con.setHomephone(cursor.getString(4));
					con.setRemark(cursor.getString(5));
					contacts.add(con);
				}
				cursor.close();
			}
			adapter.notifyDataSetChanged();
			
			break;
			
		}
		dialog.dismiss();
	}
}
