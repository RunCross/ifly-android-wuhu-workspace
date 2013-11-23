package com.runcross.kugou;


import java.util.List;

import com.runcross.kugou.adapter.MusicListAdapter;
import com.runcross.kugou.bean.Music;
import com.runcross.kugou.bean.MusicAction;
import com.runcross.kugou.play.MusicPlay;
import com.runcross.kugou.play.MusicPlay.MyBind;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Service;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.os.Handler.Callback;
import android.os.IBinder;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

public class PlayMusic extends Activity implements Callback{

	private ImageButton back;
	// private ImageButton songList;
	private ImageButton songModel;
	// private ImageButton songPrev;
	private ImageButton songMusic;
	// private ImageButton songNext;
	// private ImageButton songMore;

	private TextView songTitle;
	private TextView songSonger;
	private TextView timeBegin;
	private TextView timeEnd;
	private TextView songInfo;

	private SeekBar songProgress;
	private Music music;
	private List<Music> musicList;
	private MyBind mySer;
	private Handler hand;
	private Messenger mess;
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
			System.out.println("Connect 2");
			mySer = (MyBind) service;
			musicList = mySer.getMusicList();
			System.out.println("adapter "+musicList.size());
			adapter = new MusicListAdapter(musicList, PlayMusic.this);
		}
	};
	private SeekBar songVolume;

	public static final int modes[];
	public static int modeFlag;
	static {
		modes = new int[] { R.drawable.ic_player_mode_all_default,
				R.drawable.ic_player_mode_random_default,
				R.drawable.ic_player_mode_sequence_default,
				R.drawable.ic_player_mode_single_default };
	}
	private boolean isMore = false;

	private boolean isPlaying;

	private View popupWindow;
	private PopupWindow popWin;
	private ListView musics;
	private ImageButton musicListDeleteAll;
	private TextView musicListNum;
	private MusicListAdapter adapter;

	private LinearLayout progress;
	private LinearLayout operation;

	public static int volume;

	private PlayState receiver;
	private AudioManager audio = null; // 音频

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.play_music);
		//绑定
		hand = new Handler(this);
		Intent intents = new Intent(PlayMusic.this, MusicPlay.class);
		mess = new Messenger(hand);
		intents.putExtra("mess", mess);
		bindService(intents, myConn, Service.BIND_AUTO_CREATE);
		hand.sendEmptyMessageDelayed(1, 1000);
		
		//注册接收信息
		receiver = new PlayState();
		IntentFilter filter = new IntentFilter();
		filter.addAction("com.runcross.kugou.info");
		registerReceiver(receiver, filter);


		isPlaying = getIntent().getBooleanExtra("isplay", false);
		// 获取正在播放的music
		Intent intentUpdate = new Intent("com.runcross.kugou.music");
		intentUpdate.putExtra("model", MusicAction.PLAY_MUSIC_DETAIL);
		sendBroadcast(intentUpdate);




		audio = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
		initSub();
		initTitle();

		initProgress();

		initVolume();

		SharedPreferences sp = getSharedPreferences("kugou", MODE_PRIVATE);
		modeFlag = sp.getInt("mode", 0);

	}

	/**
	 * 监听音量
	 */
	private void initVolume() {
		songVolume.setMax(audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC));
		songVolume
				.setProgress(audio.getStreamVolume(AudioManager.STREAM_MUSIC));
		songVolume.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {

			@Override
			public void onStopTrackingTouch(SeekBar seekBar) {
			}

			@Override
			public void onStartTrackingTouch(SeekBar seekBar) {
			}

			@Override
			public void onProgressChanged(SeekBar seekBar, int progress,
					boolean fromUser) {
				audio.setStreamVolume(AudioManager.STREAM_MUSIC, progress, 0);
				System.out.println("volume " + progress + " "
						+ seekBar.getMax());
			}
		});
	}

	/**
	 * 按钮监听
	 * 
	 * @param view
	 */
	public void onMusicClick(View view) {
		switch (view.getId()) {
		case R.id.play_model:
			modeFlag++;
			if (modeFlag == modes.length) {
				modeFlag = 0;
			}
			System.out.println("mode " + modeFlag);
			Intent intentModel = new Intent("com.runcross.kugou.music");
			intentModel.putExtra("model", MusicAction.PLAY_MUSIC_MODE);
			intentModel.putExtra("mode", modeFlag);
			sendBroadcast(intentModel);
			songModel.setImageResource(modes[modeFlag]);
			break;
		case R.id.play_prev:
			Intent intentPre = new Intent("com.runcross.kugou.music");
			intentPre.putExtra("model", MusicAction.PLAY_MUSIC_PRE);
			intentPre.putExtra("next", false);
			sendBroadcast(intentPre);
			hand.sendEmptyMessage(1);
			break;
		case R.id.play_music:
			isPlaying = !isPlaying;
			if (isPlaying) {
				songMusic.setImageResource(R.drawable.ic_player_pause_default);
				Intent intentMusic = new Intent("com.runcross.kugou.music");
				intentMusic.putExtra("model", MusicAction.PLAY_MUSIC);
				sendBroadcast(intentMusic);
				hand.sendEmptyMessageDelayed(1, 500);
			} else {
				songMusic.setImageResource(R.drawable.ic_player_play_default);
				Intent intentMusic = new Intent("com.runcross.kugou.music");
				intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_PAUSE);
				sendBroadcast(intentMusic);
				hand.removeMessages(1);
			}
			break;
		case R.id.play_next:
			Intent intentMusic = new Intent("com.runcross.kugou.music");
			intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_NEXT);
			sendBroadcast(intentMusic);
			songMusic.setImageResource(R.drawable.ic_player_pause_default);
			hand.sendEmptyMessage(1);
			break;
		case R.id.play_more:
			isMore = !isMore;
			if (isMore) {
				progress.setVisibility(View.GONE);
				operation.setVisibility(View.VISIBLE);
			} else {
				operation.setVisibility(View.GONE);
				progress.setVisibility(View.VISIBLE);
			}
			break;
		case R.id.play_title_back:
			finish();
			break;
		case R.id.play_list:
			if (getPopupWindowInstance()) {
				popWin.showAsDropDown(view);
			}
			break;
		case R.id.play_details:
			LayoutInflater inflater = LayoutInflater.from(PlayMusic.this);
			View dia = inflater.inflate(R.layout.music_detail, null);
			TextView artist = (TextView) findViewById(R.id.music_artist);
			TextView album = (TextView) findViewById(R.id.music_album);
			TextView duration = (TextView) findViewById(R.id.music_duration);
			TextView title = (TextView) findViewById(R.id.music_title);

			artist.setText(music.getArtist());
			album.setText(music.getAlbum());
			duration.setText(music.getDuration());
			title.setText(music.getName());

			AlertDialog.Builder dialogBulder = new Builder(PlayMusic.this);
			AlertDialog dialog = dialogBulder.setTitle("歌曲信息").setView(dia)
					.create();
			dialog.show();
			break;
		}
	}

	/**
	 * 初始化播放进度
	 */
	private void initProgress() {
		timeBegin.setText("0:00");
		songProgress.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {

			@Override
			public void onStopTrackingTouch(SeekBar seekBar) {
				Intent intent = new Intent("com.runcross.kugou.music");
				intent.putExtra("model", MusicAction.PLAY_MUSIC_SEEK);
				intent.putExtra("progress", seekBar.getProgress());
				sendBroadcast(intent);
			}

			@Override
			public void onStartTrackingTouch(SeekBar seekBar) {
			}

			@Override
			public void onProgressChanged(SeekBar seekBar, int progress,
					boolean fromUser) {
			}
		});
	}

	/**
	 * 初始化播放头
	 */
	private void initTitle() {
		back.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				finish();
			}
		});

	}

	/**
	 * 初始化按钮等组件
	 */
	private void initSub() {
		back = (ImageButton) findViewById(R.id.play_title_back);
		// songList = (ImageButton) findViewById(R.id.play_list);
		songModel = (ImageButton) findViewById(R.id.play_model);
		// songPrev = (ImageButton) findViewById(R.id.play_prev);
		songMusic = (ImageButton) findViewById(R.id.play_music);
		// songNext = (ImageButton) findViewById(R.id.play_next);
		// songMore = (ImageButton) findViewById(R.id.play_more);
		songInfo = (TextView) findViewById(R.id.play_details);

		songTitle = (TextView) findViewById(R.id.song_title);
		songSonger = (TextView) findViewById(R.id.song_songer);
		timeBegin = (TextView) findViewById(R.id.play_time_begin);
		timeEnd = (TextView) findViewById(R.id.play_time_end);
		// songList = (ImageButton) findViewById(R.id.play_list);

		songProgress = (SeekBar) findViewById(R.id.play_progress);

		songVolume = (SeekBar) findViewById(R.id.play_volume);

		progress = (LinearLayout) findViewById(R.id.play_progress_linear);
		operation = (LinearLayout) findViewById(R.id.play_opera_more);

		songInfo.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				LayoutInflater inflater = LayoutInflater.from(PlayMusic.this);
				View dia = inflater.inflate(R.layout.music_detail, null);
				TextView artist = (TextView) dia
						.findViewById(R.id.music_artist);
				TextView album = (TextView) dia.findViewById(R.id.music_album);
				TextView duration = (TextView) dia
						.findViewById(R.id.music_duration);
				TextView title = (TextView) dia.findViewById(R.id.music_title);

				artist.setText(music.getArtist());
				album.setText(music.getAlbum());
				duration.setText(String.valueOf(music.getDuration()));
				title.setText(music.getName());

				AlertDialog.Builder dialogBulder = new Builder(PlayMusic.this);
				AlertDialog dialog = dialogBulder.setTitle("歌曲信息").setView(dia)
						.create();
				dialog.show();
			}
		});
	}

	/**
	 * 初始化 popWin
	 */
	@SuppressWarnings("deprecation")
	private void initPopuptWindow() {
	 	 
		
		LayoutInflater layoutInflater = LayoutInflater.from(this);
		if (popupWindow == null) {
			popupWindow = layoutInflater.inflate(R.layout.play_list, null);
			musics = (ListView) popupWindow.findViewById(R.id.list_music);
			musicListDeleteAll = (ImageButton) popupWindow
					.findViewById(R.id.list_del_all);
			musicListNum = (TextView) popupWindow
					.findViewById(R.id.list_title_count);

			musics.setAdapter(adapter);
		}

		// 创建一个PopupWindow
		// 参数1：contentView 指定PopupWindow的内容
		// 参数2：width 指定PopupWindow的width
		// 参数3：height 指定PopupWindow的height
		popWin = new PopupWindow(popupWindow, 360, 430, true);
		popWin.setBackgroundDrawable(new BitmapDrawable());
		popWin.setFocusable(true);
		popWin.setOutsideTouchable(true);
		popWin.update();
		initPopLinearListener();

	}

	/**
	 * 初始化pop里的监听
	 */
	private void initPopLinearListener() {
		musicListNum.setText("播放队列(" + musicList.size() + ")");
		musicListDeleteAll.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				musicList.clear();
				adapter.notifyDataSetChanged();
			}
		});
		musics.setOnItemClickListener(new OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				System.out.println("播放列表");

				Intent intentMusic = new Intent("com.runcross.kugou.music");
				intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_INSERT);
				intentMusic.putExtra("music", position);
				sendBroadcast(intentMusic);
				popWin.dismiss();
				popWin = null;
			}
		});
	}

	/**
	 * 获取PopupWindow实例
	 */
	private boolean getPopupWindowInstance() {
		if (null != popWin) {
			popWin.dismiss();
			popWin = null;
			return false;
		} else {
			initPopuptWindow();
			return true;
		}

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
			System.out.println("activity " + intent.getIntExtra("model", 0));
			switch (intent.getIntExtra("model", 0)) {
			case MusicAction.MUSIC_PRO:
				songProgress.setProgress(intent.getIntExtra("progress", 0));
				break;

			case MusicAction.MUSIC_NEW:
				music = (Music) intent.getSerializableExtra("music");
				songTitle.setText(music.getName());
				songSonger.setText(music.getArtist());
				songProgress.setProgress(0);
				int length = music.getDuration();
				songProgress.setMax(length);
				int len = length / 1000;
				timeEnd.setText(String.valueOf(len / 60 + ":"
						+ (len % 60 > 9 ? len % 60 : "0" + len % 60)));
				songTitle.setText(music.getName());
				songSonger.setText(music.getArtist());
				isPlaying = true;
				break;
			}

		}// method

	}// receiver

	@Override
	public boolean handleMessage(Message msg) {
		switch(msg.what){
		case 1:
			int length = mySer.send();
			songProgress.setProgress(length);	
			int len = length / 1000;
			timeBegin.setText(String.valueOf(len / 60 + ":"
					+ (len % 60 > 9 ? len % 60 : "0" + len % 60)));
			hand.sendEmptyMessageDelayed(1, 500);
			break;
		}
		return false;
	}
}