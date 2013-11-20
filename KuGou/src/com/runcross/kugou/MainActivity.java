package com.runcross.kugou;

import java.util.List;

import com.runcross.kugou.bean.Music;
import com.runcross.kugou.bean.MusicAction;
import com.runcross.kugou.play.MusicPlay;
import com.runcross.kugou.play.MusicPlay.MyBind;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.app.Activity;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class MainActivity extends Activity implements Callback{

	private TextView localMusic;
//	private TextView myList;
	private TextView musicName;
	private TextView musicAri;
	private ProgressBar songProgress;
	private ImageView playDetail;

	private ImageButton play;
	private ImageButton next;
	private PlayState receiver;
	private boolean isPlaying;
	private MyBind mySer;
	private Handler hand;
	private ServiceConnection myConn = new ServiceConnection() {
		/*
		 * 解除绑定成功 (non-Javadoc)
		 * 
		 * @see
		 * android.content.ServiceConnection#onServiceDisconnected(android.content
		 * .ComponentName)
		 */
		@Override
		public void onServiceDisconnected(ComponentName name) {
			System.out.println("DisConnect");
		}

		/*
		 * 绑定成功 (non-Javadoc)
		 * 
		 * @see
		 * android.content.ServiceConnection#onServiceConnected(android.content
		 * .ComponentName, android.os.IBinder)
		 */
		@Override
		public void onServiceConnected(ComponentName name, IBinder service) {
			System.out.println("Connect");
			mySer = (MyBind) service;
//			mySer.download();
			
		}
	};
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		//绑定
		hand = new Handler(this);
		Intent intents = new Intent(MainActivity.this, MusicPlay.class);
		Messenger mess = new Messenger(hand);
		intents.putExtra("mess", mess);
		bindService(intents, myConn, Service.BIND_AUTO_CREATE);
		hand.sendEmptyMessageDelayed(1, 1000);
		//注册
		receiver = new PlayState();
		IntentFilter filter = new IntentFilter();
		filter.addAction("com.runcross.kugou.info");
		filter.addAction(Intent.ACTION_MEDIA_SCANNER_FINISHED);
		registerReceiver(receiver, filter);
		
		
		intiSub();
		intiListener();
	}


	private void intiListener() {
		next.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Intent intentMusic = new Intent("com.runcross.kugou.music");
				intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_NEXT);
				sendBroadcast(intentMusic);
			}
		});
		play.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				isPlaying = !isPlaying;				
				if (isPlaying) {
					System.out.println("play");
					play.setImageResource(R.drawable.ic_player_pause_default);
					Intent intentMusic = new Intent("com.runcross.kugou.music");
					intentMusic.putExtra("model", MusicAction.PLAY_MUSIC);
					sendBroadcast(intentMusic);
				} else {
					System.out.println("pause");
					play.setImageResource(R.drawable.ic_player_play_default);
					Intent intentMusic = new Intent("com.runcross.kugou.music");
					intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_PAUSE);
					sendBroadcast(intentMusic);
				}
			}
		});
		
		localMusic.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Intent intent = new Intent(MainActivity.this, LocalMusicList.class);
				startActivity(intent);
//				View view = manager.startActivity("", intent).getDecorView();
//				
//				AllActivity.addView(view);
			}
		});
		playDetail.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				Intent intent = new Intent(MainActivity.this, PlayMusic.class);				
				startActivity(intent);
			}
		});
		
	}

	private void intiSub() {
		localMusic = (TextView) findViewById(R.id.main_local);
//		myList = (TextView) findViewById(R.id.myList);
		musicName = (TextView) findViewById(R.id.main_music_name);
		musicAri = (TextView) findViewById(R.id.main_music_artist);
		play = (ImageButton) findViewById(R.id.main_play);
		next = (ImageButton) findViewById(R.id.main_next);
		songProgress = (ProgressBar) findViewById(R.id.music_progress);
		playDetail = (ImageView) findViewById(R.id.toPlay);
	}

	

	
	@Override
	public void onBackPressed() {
//		super.onBackPressed();
		moveTaskToBack(false);		
	}
	
	@Override
	protected void onResume() {
		super.onResume();
		Intent intentMusic = new Intent("com.runcross.kugou.music");
		intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_DETAIL);
		sendBroadcast(intentMusic);
	}
	
	@Override
	protected void onDestroy() {
		super.onDestroy();
		Intent intents = new Intent(MainActivity.this, MusicPlay.class);
		stopService(intents);
	}
	
	/**
	 * 内部接收消息
	 * 
	 * @author RunCross
	 * 
	 */
	public class PlayState extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
//			System.out.println("activity " + intent.getIntExtra("model", 0));
			switch (intent.getIntExtra("model", 0)) {
			case MusicAction.MUSIC_PRO:
				System.out.println("prog " + intent.getIntExtra("progress", 0));
				songProgress.setProgress(intent.getIntExtra("progress", 0));
				break;
			case MusicAction.MUSIC_DONE:
				isPlaying = false;
				break;
			case MusicAction.MUSIC_PREPARE:
				songProgress.setMax(intent.getIntExtra("length", 0));
				
				break;
			case MusicAction.MUSIC_NEW:
				Music temp = (Music) intent.getSerializableExtra("music");
				musicName.setText(temp.getName());
				musicAri.setText(temp.getArtist());
				songProgress.setProgress(0);
				int length = temp.getDuration();
				songProgress.setMax(length);
				break;
			}

		}// method

	}// receiver

	@Override
	public boolean handleMessage(Message msg) {
		switch(msg.what){
		case 1:
			songProgress.setProgress(mySer.send());			
			hand.sendEmptyMessageDelayed(1, 500);
			break;
		}
		return false;
	}
}
