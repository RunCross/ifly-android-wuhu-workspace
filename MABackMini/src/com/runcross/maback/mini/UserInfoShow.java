package com.runcross.maback.mini;

import com.runcross.maback.mini.start.Info;

import net.Process;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
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
	private CheckBox isStop;
	private EditText reCon;

	private static int reconTime;

	// private Process proc;

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
		isStop = (CheckBox) findViewById(R.id.stopRun);
		reCon = (EditText) findViewById(R.id.recon);

		maxbc.setText(String.valueOf(Info.bcMax));
		maxap.setText(String.valueOf(Info.apMax));
		bc.setText(String.valueOf(Info.bcCurrent));
		ap.setText(String.valueOf(Info.apCurrent));
		name.setText(String.valueOf(Info.userName));
		level.setText(String.valueOf(Info.userLv));

		// proc = new Process();

		// isSelf.setOnCheckedChangeListener(new OnCheckedChangeListener() {
		//
		// @Override
		// public void onCheckedChanged(CompoundButton buttonView,
		// boolean isChecked) {
		// self = isChecked;
		// }
		// });

	}

	public void onClick(View view) {
		switch (view.getId()) {
		case R.id.start:
			findViewById(R.id.start).setEnabled(false);
			isSelf.setEnabled(false);
			isStop.setEnabled(false);
			reCon.setEnabled(false);
			reconTime = Integer.parseInt(reCon.getText().toString());
			Toast.makeText(UserInfoShow.this, "开始运行", Toast.LENGTH_SHORT)
					.show();

			Info.hasPrivateFairyStopRun = isStop.isChecked() ? 1 : 0;
			Info.sleepTime = reconTime;
			Info.isRun = "1";
			Info.isBattlePrivateFariy = isSelf.isChecked() ? "1" : "0";
			// System.out.println("run-0");
			//
			// System.out.println(Info.hasPrivateFairyStopRun+"-"+Info.isBattlePrivateFariy);
			new Thread(new Runnable() {

				@Override
				public void run() {
					System.out.println("run");
					Process proc = new Process();
					while (true) {
						proc.start();
					}
				}
			}).start();
			break;
		case R.id.end:
			System.exit(0);
			break;

		}
	}

	@Override
	public void onBackPressed() {
		moveTaskToBack(false);
	};
}
