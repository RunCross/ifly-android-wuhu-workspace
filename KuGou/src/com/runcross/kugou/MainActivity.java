package com.runcross.kugou;

import com.runcross.kugou.bean.Music;
import com.runcross.kugou.bean.MusicAction;
import com.runcross.kugou.play.MusicPlay;

import android.os.Bundle;
import android.provider.MediaStore;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class MainActivity extends Activity {

	private TextView localMusic;
	private TextView myList;
	private TextView musicName;
	private TextView musicAri;
	private ProgressBar songProgress;
	private ImageView playDetail;

	private ImageButton play;
	private ImageButton next;
	private PlayState receiver;
//	private static int MusicPlay.currentMusic = -1;
	private boolean isPlaying;
	private String[] projection = { MediaStore.Audio.AudioColumns._ID,
			MediaStore.Audio.AudioColumns.ARTIST,
			MediaStore.Audio.AudioColumns.TITLE,
			MediaStore.Audio.AudioColumns.DURATION,
			MediaStore.Audio.AudioColumns.DATA,
			MediaStore.Audio.AudioColumns.ALBUM };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		
		Intent intents = new Intent(MainActivity.this, MusicPlay.class);
		startService(intents);
		
		receiver = new PlayState();
		IntentFilter filter = new IntentFilter();
		filter.addAction("com.runcross.kugou.info");
		filter.addAction(Intent.ACTION_MEDIA_SCANNER_FINISHED);
		registerReceiver(receiver, filter);
		
		
		intiSub();
		intiListener();
		initList();
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
		myList = (TextView) findViewById(R.id.myList);
		musicName = (TextView) findViewById(R.id.main_music_name);
		musicAri = (TextView) findViewById(R.id.main_music_artist);
		play = (ImageButton) findViewById(R.id.main_play);
		next = (ImageButton) findViewById(R.id.main_next);
		songProgress = (ProgressBar) findViewById(R.id.music_progress);
		playDetail = (ImageView) findViewById(R.id.toPlay);
	}

	private void initList() {
		// MusicPlay.MusicPlay.musicList.add(music);

		// 接受系统广播，扫描结束
//		IntentFilter intentfilter = new IntentFilter(
//				Intent.ACTION_MEDIA_SCANNER_STARTED);
//		intentfilter.addAction(Intent.ACTION_MEDIA_SCANNER_FINISHED);
//		intentfilter.addDataScheme("file");
//		registerReceiver(receiver, intentfilter);
//
//		// 发送广播给系统扫描指定的文件夹，并写入数据库
//		sendBroadcast(new Intent(Intent.ACTION_MEDIA_MOUNTED,
//				Uri.parse("file://"
//						+ Environment.getExternalStorageDirectory()
//								.getAbsolutePath())));
//		System.out.println("发送广播");
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
		System.out.println("list刷新");
	}

	
	@Override
	public void onBackPressed() {
//		super.onBackPressed();
		moveTaskToBack(false);		
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
//				if (intent.getBooleanExtra("next", true)) {
//					temp = MusicPlay.musicList.get(MusicPlay.currentMusic);
//				} else {
//					if (MusicPlay.pre.isEmpty()) {
//						break;
//					} else {
//						temp = MusicPlay.pre.pop();
//					}
//				}
				musicName.setText(temp.getName());
				musicAri.setText(temp.getArtist());
				songProgress.setProgress(0);
				int length = temp.getDuration();
				songProgress.setMax(length);
				break;
			// case Intent.ACTION_MEDIA_SCANNER_FINISHED:

			// MediaStore.Audio.AudioColumns._ID,
			// MediaStore.Audio.AudioColumns.ARTIST,
			// MediaStore.Audio.AudioColumns.TITLE,
			// MediaStore.Audio.AudioColumns.DURATION,
			// MediaStore.Audio.AudioColumns.DATA,
			// MediaStore.Audio.AudioColumns.ALBUM
			// break;
			}
//			if (Intent.ACTION_MEDIA_SCANNER_FINISHED.equals(intent.getAction())) {
//				ContentResolver cr = getContentResolver();
//
//				Cursor cursor = cr.query(
//						MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
//						projection, null, null, null);
//				while (cursor.moveToNext()) {
//					Music mu = new Music();
//					mu.setId(cursor.getInt(cursor.getColumnIndex(projection[0])));
//					mu.setArtist(cursor.getString(cursor
//							.getColumnIndex(projection[1])));
//					mu.setName(cursor.getString(cursor
//							.getColumnIndex(projection[2])));
//					mu.setDuration(cursor.getInt(cursor
//							.getColumnIndex(projection[3])));
//					mu.setData(cursor.getString(cursor
//							.getColumnIndex(projection[4])));
//					mu.setAlbum(cursor.getString(cursor
//							.getColumnIndex(projection[5])));
//					MusicPlay.musicList.add(mu);
//					// System.out.println(mu.getId());
//				}// while
//				System.out.println("刷新完成");
//			}// if

		}// method

	}// receiver
}
