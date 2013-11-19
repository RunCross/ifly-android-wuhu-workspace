package com.runcross.kugou.play;

import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

import com.runcross.kugou.bean.MusicAction;

import android.app.IntentService;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.IBinder;
import android.view.ActionMode;

public class MusicPlay extends Service {

	// public MusicPlay() {
	// super("musicplay");
	// }
	//
	// public MusicPlay(String name) {
	// super(name);
	// }

	private static MediaPlayer mp;
	private String musicPre;
	private String musicCurrent;
	private String musicNext;
	private int modelFlag;
	private Timer mTimer;
	private TimerTask mTimerTask;
	private Thread proing;
	private PlayMusic receiver;

	@Override
	public void onCreate() {
		super.onCreate();
		receiver = new PlayMusic();
		IntentFilter intentf = new IntentFilter();
		intentf.addAction("com.runcross.kugou.music");
		registerReceiver(receiver, intentf);
		proing = new Thread(new prog());
		mp = new MediaPlayer();

	}

	@Override
	public IBinder onBind(Intent intent) {
		return null;
	}

	public class PlayMusic extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
			System.out.println("service " + intent.getIntExtra("model", 0));
			switch (intent.getIntExtra("model", 0)) {
			case MusicAction.PLAY_MUSIC_PREPARE:
				mp.reset();
				String pat = intent.getStringExtra("music");
				try {
					mp.setDataSource(pat);
					mp.prepare();
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (SecurityException e) {
					e.printStackTrace();
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				Intent inten = new Intent("com.runcross.kugou.info");
				inten.putExtra("model", MusicAction.MUSIC_PREPARE);
				inten.putExtra("length", mp.getDuration());
				sendBroadcast(inten);
				mp.start();
//				mp.pause();
				break;
			case MusicAction.PLAY_MUSIC:
				mp.start();
//				proing.start();
//				if (mTimer != null) {
//					mTimer.cancel();
//					mTimer = null;
//				}
//				 mTimer = new Timer();
//				 mTimerTask = new TimerTask() {
//				 @Override
//				 public void run() {
//				 Intent intents = new Intent("com.runcross.kugou.info");
//				 intents.putExtra("model", MusicAction.MUSIC_PRO);
//				 intents.putExtra("progress", mp.getCurrentPosition());
//				 sendBroadcast(intents);
//				 }
//				 };
//				 mTimer.schedule(mTimerTask, 0, 10);
				break;
			case MusicAction.PLAY_MUSIC_SEEK:
				int postiton = intent.getIntExtra("progress", 0);
				mp.seekTo(postiton);
				break;
			case MusicAction.PLAY_MUSIC_NEW:
				mp.reset();
				String path = intent.getStringExtra("music");
				try {
					mp.setDataSource(path);
					mp.prepare();
				} catch (IllegalArgumentException e) {
					e.printStackTrace();
				} catch (SecurityException e) {
					e.printStackTrace();
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}

				Intent intentl = new Intent("com.runcross.kugou.info");
				intentl.putExtra("model", MusicAction.MUSIC_NEW);
				intentl.putExtra("next", intent.getBooleanExtra("next", true));
				intentl.putExtra("length", mp.getDuration());
				sendBroadcast(intentl);
				mp.start();
//				proing.start();
				break;
			case MusicAction.PLAY_MUSIC_PAUSE:
				mp.pause();
				break;
			}

		}

	}

	class prog implements Runnable {

		@Override
		public void run() {
			while(mp.isPlaying()){
			Intent intents = new Intent("com.runcross.kugou.info");
			intents.putExtra("model", MusicAction.MUSIC_PRO);
			intents.putExtra("progress", mp.getCurrentPosition());
			sendBroadcast(intents);
			}
		}
	}

}
