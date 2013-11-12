package com.example.chattest;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.example.adapter.ChatAdapter;
import com.example.adapter.MySpinnerAdapter;
import com.example.pojo.ImageShow;
import com.example.pojo.Message;

import android.app.Activity;
import android.media.ExifInterface;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.TextView;

public class ChatActivity extends Activity {

	ChatAdapter chatadapter;
	int state = 0;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		// TODO Auto-generated method stub
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);
		setContentView(R.layout.main);
		final ListView listView = (ListView) findViewById(R.id.listview);
		final EditText sendMessage = (EditText) findViewById(R.id.sendMessage);
		// 2、新建自定义的适配器
		final List<Message> message = new ArrayList<Message>();

		chatadapter = new ChatAdapter(ChatActivity.this, message);

		listView.setAdapter(chatadapter);
		// final Spinner spinner = (Spinner) findViewById(R.id.spnTest);

		List<ImageShow> imageShows = new ArrayList<ImageShow>();
		imageShows.add(new ImageShow(R.drawable.caomei, "1"));
		imageShows.add(new ImageShow(R.drawable.weixiao, "2"));

		// MySpinnerAdapter mySpinnerAdapter = new MySpinnerAdapter(
		// ChatActivity.this, imageShows);
		// //spinner.setAdapter(mySpinnerAdapter);
		//
		// //spinner.setOnItemSelectedListener(new OnItemSelectedListener() {
		//
		// @Override
		// public void onItemSelected(AdapterView<?> arg0, View arg1,
		// int arg2, long arg3) {
		//
		// TextView textView = (TextView) arg1
		// .findViewById(R.id.imageText);
		//
		//
		// if (textView.getText().toString().equals("1")) {
		// state = 1;
		//
		// } else
		// state = 0;
		// }
		//
		// @Override
		// public void onNothingSelected(AdapterView<?> arg0) {
		// // TODO Auto-generated method stub
		//
		// }
		// });

		Button btnSend = (Button) findViewById(R.id.btnSend);
		btnSend.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				Message messages = new Message();
				messages.setTxt(sendMessage.getText().toString());

				SimpleDateFormat df = new SimpleDateFormat(
						"yyyy-MM-dd HH:mm:ss");// 设置日期格式
				messages.setTime(df.format(new Date()).toString());
				messages.setId(state);
				message.add(messages);
				listView.setSelection(message.size() - 1);

				chatadapter.notifyDataSetInvalidated();
				sendMessage.setText("");
			}
		});

		Button btnBack = (Button) findViewById(R.id.btnBack);
		btnBack.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				ChatActivity.this.finish();

			}
		});

	}

}
