package com.example.chattest;

import java.util.ArrayList;
import java.util.List;

import com.example.adapter.weixinAdapter;
import com.example.pojo.WeixinItem;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager.LayoutParams;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;

public class Weixin extends Activity {
	private ArrayList<WeixinItem> weixin;


	@Override
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		requestWindowFeature(Window.FEATURE_NO_TITLE);

		setContentView(R.layout.weixin);
		ListView weixinlist = (ListView) findViewById(R.id.weixinlist1);
		weixin = new ArrayList<WeixinItem>();
		weixin.add(new WeixinItem("SS", "", "½ñÌìÏÂÎç"));

		weixinAdapter adapter = new weixinAdapter(Weixin.this, weixin);
		weixinlist.setAdapter(adapter);

		weixinlist.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> arg0, View arg1, int arg2,
					long arg3) {

				Toast.makeText(getApplicationContext(), "ssssss",
						Toast.LENGTH_SHORT).show();
			}
		});

	}

	public void chat(View v) {
		Intent intent = new Intent(Weixin.this, ChatActivity.class);
		startActivity(intent);
	}

	public void weixin_top(View v) {
	}
}
