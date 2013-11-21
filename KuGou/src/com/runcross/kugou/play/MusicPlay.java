package com.runcross.kugou.play;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Stack;
import java.util.Timer;
import java.util.TimerTask;

import com.runcross.kugou.R;
import com.runcross.kugou.bean.Music;
import com.runcross.kugou.bean.MusicAction;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.Binder;
import android.os.IBinder;
import android.os.Messenger;
import android.provider.MediaStore;

public class MusicPlay extends Service{

	// public MusicPlay() {
	// super("musicplay");
	// }
	//
	// public MusicPlay(String name) {
	// super(name);
	// }
	Messenger mess;
	private static MediaPlayer mp;
//	private int modelFlag;
	private Timer mTimer;
	private TimerTask mTimerTask;
//	private Thread proing;
	private PlayMusic receiver;

	public static final int modes[];
	private  int modeFlag = 0;
	private static List<Music> musicList;
	static {
		modes = new int[] { R.drawable.ic_player_mode_all_default,
				R.drawable.ic_player_mode_random_default,
				R.drawable.ic_player_mode_sequence_default,
				R.drawable.ic_player_mode_single_default };
		musicList = new ArrayList<Music>();
	}
	private static int currentMusic = 0;
	private static Music music;
//	private static int preMusic = 0;
	private static Stack<Music> pre;
//	private static int nextMusic = 0;
//	private String currentMusicPath;
//	private boolean isMore = false;

//	private boolean isPlaying;
	private String[] projection = { MediaStore.Audio.AudioColumns._ID,
			MediaStore.Audio.AudioColumns.ARTIST,
			MediaStore.Audio.AudioColumns.TITLE,
			MediaStore.Audio.AudioColumns.DURATION,
			MediaStore.Audio.AudioColumns.DATA,
			MediaStore.Audio.AudioColumns.ALBUM };
	
	private MyBind mb;

	@Override
	public void onCreate() {
		super.onCreate();
		receiver = new PlayMusic();
		IntentFilter intentf = new IntentFilter();
		intentf.addAction("com.runcross.kugou.music");
		intentf.addAction(Intent.ACTION_MEDIA_SCANNER_FINISHED);
		registerReceiver(receiver, intentf);
//		proing = new Thread(new prog());
		mp = new MediaPlayer();
		mb = new MyBind();
		mp.setOnCompletionListener(new OnCompletionListener()    
        {   
            public void onCompletion(MediaPlayer arg0)   
            {   
                Intent intentNext = new Intent("com.runcross.kugou.music");
                intentNext.putExtra("model", MusicAction.PLAY_MUSIC_NEXT);
                sendBroadcast(intentNext);
            }   
        });   
		
		pre = new Stack<Music>();
		flashList();
		music = musicList.get(currentMusic);
		
	}

	@Override
	public void onDestroy() {
		super.onDestroy();
		
	}
	
	/**
	 * 从系统刷新列表
	 */
	private void flashList() {
		ContentResolver cr = getContentResolver();

		Cursor cursor = cr.query(
				MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
				projection, null, null, null);
		while (cursor.moveToNext()) {
			Music mu = new Music();
			mu.setId(cursor.getInt(cursor.getColumnIndex(projection[0])));
			mu.setArtist(cursor.getString(cursor
					.getColumnIndex(projection[1])));
			mu.setName(cursor.getString(cursor
					.getColumnIndex(projection[2])));
			mu.setDuration(cursor.getInt(cursor
					.getColumnIndex(projection[3])));
			mu.setData(cursor.getString(cursor
					.getColumnIndex(projection[4])));
			mu.setAlbum(cursor.getString(cursor
					.getColumnIndex(projection[5])));
			MusicPlay.musicList.add(mu);
			// System.out.println(mu.getId());
		}// while
//		System.out.println("list刷新");
	}

	@Override
	public IBinder onBind(Intent intent) {
		mess = intent.getParcelableExtra("mess");
		return mb;
	}

	public class PlayMusic extends BroadcastReceiver {

		@Override
		public void onReceive(Context context, Intent intent) {
//			System.out.println("service " + intent.getIntExtra("model", 0));
			if (Intent.ACTION_MEDIA_SCANNER_FINISHED.equals(intent.getAction())) {
				 ContentResolver cr = getContentResolver();
				
				 Cursor cursor = cr.query(
				 MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
				 projection, null, null, null);
				 while (cursor.moveToNext()) {
				 Music mu = new Music();
				 mu.setId(cursor.getInt(cursor.getColumnIndex(projection[0])));
				 mu.setArtist(cursor.getString(cursor
				 .getColumnIndex(projection[1])));
				 mu.setName(cursor.getString(cursor
				 .getColumnIndex(projection[2])));
				 mu.setDuration(cursor.getInt(cursor
				 .getColumnIndex(projection[3])));
				 mu.setData(cursor.getString(cursor
				 .getColumnIndex(projection[4])));
				 mu.setAlbum(cursor.getString(cursor
				 .getColumnIndex(projection[5])));
				 musicList.add(mu);
				 // System.out.println(mu.getId());
				 }// while
				 return;
			}// if
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
				// mp.pause();
				break;
			case MusicAction.PLAY_MUSIC:
				mp.start();
				// proing.start();
				// if (mTimer != null) {
				// mTimer.cancel();
				// mTimer = null;
				// }
				// mTimer = new Timer();
				// mTimerTask = new TimerTask() {
				// @Override
				// public void run() {
				// Intent intents = new Intent("com.runcross.kugou.info");
				// intents.putExtra("model", MusicAction.MUSIC_PRO);
				// intents.putExtra("progress", mp.getCurrentPosition());
				// sendBroadcast(intents);
				// }
				// };
				// mTimer.schedule(mTimerTask, 0, 10);
				break;
			case MusicAction.PLAY_MUSIC_SEEK:
				int postiton = intent.getIntExtra("progress", 0);
				mp.seekTo(postiton);
				break;
			case MusicAction.PLAY_MUSIC_PAUSE:
				mp.pause();
				break;
			case MusicAction.PLAY_MUSIC_PRE:
				if (pre.isEmpty()) {
					break;
				}
				currentMusic--;
				if (currentMusic < 0) {
					currentMusic = -1;
				}
				Music temp = pre.pop();
				mp.reset();
				try {
					mp.setDataSource(temp.getData());
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
				mp.start();
				Intent intentPre = new Intent("com.runcross.kugou.info");
				intentPre.putExtra("model", MusicAction.MUSIC_NEW);
				intentPre.putExtra("music", temp);
				// intentPre.putExtra("next", intent.getBundleExtra("next"));
				sendBroadcast(intentPre);
				break;
			case MusicAction.PLAY_MUSIC_NEXT:
				switch (modeFlag) {
				case 0:
					if (musicList.size() > 0) {

						currentMusic++;
						if (currentMusic < musicList.size()) {
							music = musicList.get(currentMusic);
							pre.push(music);
						}else {
							currentMusic = -1;
						}

					} 
					break;
				case 1:
					if (musicList.size() > 0) {
						Random random = new Random();
						currentMusic = random.nextInt() % musicList.size();
						music = musicList.get(currentMusic);
						pre.push(music);
					} else {
						currentMusic = -1;
					}
					break;
				case 2:
					if (musicList.size() > 0) {
						currentMusic++;
						if (currentMusic < musicList.size()) {
							music = musicList.get(currentMusic);
							pre.push(music);
						}else {
							currentMusic = -1;
						}
					} 
					break;
				case 3:
					// Intent intentMusic = new
					// Intent("com.runcross.kugou.music");
					// intentMusic.putExtra("model",
					// MusicAction.PLAY_MUSIC_NEW);
					// intentMusic.putExtra("music", musicList.get(currentMusic)
					// .getData());
					// sendBroadcast(intentMusic);
					break;
				}
				if (music != null) {
					mp.reset();
					try {
						mp.setDataSource(music.getData());
						mp.prepare();
						mp.start();
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
					Intent intentNext = new Intent("com.runcross.kugou.info");
					intentNext.putExtra("model", MusicAction.MUSIC_NEW);
					intentNext.putExtra("music", music);
					sendBroadcast(intentNext);
					System.out.println("刷新Activity歌曲");
				}
				// System.out.println("currentmusic " + music.getName());
				break;
			case MusicAction.PLAY_MUSIC_MODE:
				modeFlag = intent.getIntExtra("mode", 0);
				break;
			case MusicAction.PLAY_MUSIC_DETAIL:
				Intent intentDetail = new Intent("com.runcross.kugou.info");
				intentDetail.putExtra("model", MusicAction.MUSIC_NEW);
				intentDetail.putExtra("music", music);
				sendBroadcast(intentDetail);
				break;
			case MusicAction.PLAY_MUSIC_INSERT:
				music = musicList.get(intent.getIntExtra("music", 0));
				mp.reset();
				try {
					mp.setDataSource(music.getData());
					mp.prepare();
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				mp.start();
				Intent intentInsert = new Intent("com.runcross.kugou.info");
				intentInsert.putExtra("model", MusicAction.MUSIC_NEW);
				intentInsert.putExtra("music", music);
				sendBroadcast(intentInsert);
				pre.push(music);
				break;
			case MusicAction.PLAY_MUSIC_INSERT_NEW:
				music = (Music) intent.getSerializableExtra("music");
				mp.reset();
				try {
					mp.setDataSource(music.getData());
					mp.prepare();
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				mp.start();
				pre.push(music);
				Intent intentInsertNew = new Intent("com.runcross.kugou.info");
				intentInsertNew.putExtra("model", MusicAction.MUSIC_NEW);
				intentInsertNew.putExtra("music", music);
				sendBroadcast(intentInsertNew);
				break;
			}
			
		}

	}
	
	public class MyBind extends Binder{
		public List<Music> getMusicList(){
			return musicList;
		}
		public int send(){
			if(!mp.isPlaying()){
				return 0;
			}
			return mp.getCurrentPosition();
			
		}
	}

//	class prog implements Runnable {
//
//		@Override
//		public void run() {
//			while (mp.isPlaying()) {
//				Intent intents = new Intent("com.runcross.kugou.info");
//				intents.putExtra("model", MusicAction.MUSIC_PRO);
//				intents.putExtra("progress", mp.getCurrentPosition());
//				sendBroadcast(intents);
//			}
//		}
//	}

}
