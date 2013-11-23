package com.runcross.maback.mini;

import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

import com.runcross.maback.mini.action.Login;
import com.runcross.maback.mini.data.ActionRegistry;
import com.runcross.maback.mini.data.Fairy;
import com.runcross.maback.mini.data.Info;
import com.runcross.maback.mini.util.Network;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class UserInfoShow extends Activity {
	private TextView maxbc;
	private TextView bc;
	private TextView maxap;
	private TextView ap;
	private TextView name;
	private TextView level;
	private CheckBox isSelf;
	private EditText reCon;

	//�Ƿ���Լ�����
	private static boolean self;
	//��������ʱ��
	private static int reconTime;
	
	private Thread run;
	
	//����
	public static Stack<Integer> action;
	//�����б�
	public static List<Fairy> fairyList;
	//��������
	public static Network network ;
	//
	public static Info info;
	static{
		action = new Stack<Integer>();
		fairyList = new ArrayList<Fairy>();
		network = new Network();
		info = new Info();
	}
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.user_info);

		
		
		maxbc = (TextView) findViewById(R.id.maxbc);
		bc = (TextView) findViewById(R.id.bc);
		maxap = (TextView) findViewById(R.id.maxap);
		ap = (TextView) findViewById(R.id.ap);
		name = (TextView) findViewById(R.id.playerName);
		level = (TextView) findViewById(R.id.playerLevel);
		isSelf = (CheckBox) findViewById(R.id.self);
		reCon = (EditText) findViewById(R.id.recon);

		maxbc.setText(String.valueOf(info.bcMax));
		maxap.setText(String.valueOf(info.apMax));
		bc.setText(String.valueOf(info.bc));
		ap.setText(String.valueOf(info.ap));
		name.setText(String.valueOf(info.username));
		level.setText(String.valueOf(info.lv));

		run = new Thread(UserInfoShow);
		
		
		isSelf.setOnCheckedChangeListener(new OnCheckedChangeListener() {

			@Override
			public void onCheckedChanged(CompoundButton buttonView,
					boolean isChecked) {
				self = isChecked;
			}
		});

	}
	
	public void onClick(View view){
		switch (view.getId()){
		//��ʼִ��
		case R.id.start:
			 //����Button �� checkBox EditText����ѡ
			 findViewById(R.id.start).setEnabled(false);
			 isSelf.setEnabled(false);
			 reCon.setEnabled(false);
			 //��ȡ��������ʱ��
			 reconTime = Integer.parseInt(reCon.getText().toString());
			 Toast.makeText(UserInfoShow.this, "��ʼ����", Toast.LENGTH_SHORT).show();
			run.start();			
			break;
		//����ִ�в��˳�
		case R.id.end:
			run.interrupt();
			System.exit(0);
			break;
			
		}
	}
	//����ִ��
	private Runnable UserInfoShow = new Runnable() {
		
		@Override
		public void run() {
			while(true){
				if(action.isEmpty()){
					action.push(ActionRegistry.NOTHING);
				}
				switch(action.pop()){
				
				case ActionRegistry.NOTHING:	
					sleep(3000);
					break;
				case ActionRegistry.LOGIN:
					sleep(reconTime);
					try {
						Login.run();
					} catch (Exception e) {
						e.printStackTrace();
					}
					break;
				case ActionRegistry.AREA_ADD:
					break;
				case ActionRegistry.AREA_ADD_FLOOR:
					break;
				case ActionRegistry.AREA_GO:
					break;
					
				case ActionRegistry.FAIRY_LIST:
					
					break;
					
				case ActionRegistry.FAIRY_BATTLE:
					sleep(5000);
					break;
				}				
				
			}
		}
	};
	
	//����ʱ�����
	private void sleep(int time){
		try {
			Thread.sleep(time);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
	
	@Override
	public void onBackPressed() {
		moveTaskToBack(false);
	};
}
