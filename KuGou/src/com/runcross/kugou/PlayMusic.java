package com.runcross.kugou;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Stack;

import com.runcross.kugou.adapter.MusicListAdapter;
import com.runcross.kugou.bean.Music;
import com.runcross.kugou.bean.MusicAction;
import com.runcross.kugou.play.MusicPlay;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore;
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

public class PlayMusic extends Activity {

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

	private SeekBar songVolume;

	public static final int modes[];
	public static int modeFlag;
	public static List<Music> musicList;
	static {
		modes = new int[] { R.drawable.ic_player_mode_all_default,
				R.drawable.ic_player_mode_random_default,
				R.drawable.ic_player_mode_sequence_default,
				R.drawable.ic_player_mode_single_default };
		musicList = new ArrayList<Music>();
	}
	public static int currentMusic = 0;
	public static int preMusic = 0;
	public static Stack<Music> pre;
	private static int nextMusic = 0;
	private String currentMusicPath;
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
	private AudioManager audio=null; //��Ƶ
	private String[] projection = { MediaStore.Audio.AudioColumns._ID,
			MediaStore.Audio.AudioColumns.ARTIST,
			MediaStore.Audio.AudioColumns.TITLE,
			MediaStore.Audio.AudioColumns.DURATION,
			MediaStore.Audio.AudioColumns.DATA,
			MediaStore.Audio.AudioColumns.ALBUM };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.play_music);
		// ����
//		Intent intents = new Intent(PlayMusic.this, MusicPlay.class);
//		startService(intents);
		// ����
//		currentMusic = getIntent().getIntExtra("music", 0);
		receiver = new PlayState();
		IntentFilter filter = new IntentFilter();
		filter.addAction("com.runcross.kugou.info");
		registerReceiver(receiver, filter);

		pre = new Stack<Music>();
		music = musicList.get(currentMusic);
		// music = (Music) getIntent().getExtras().get("music");
//		music = new Music(0, "a", 123, "run", "/storage/sdcard0/5.mp3", "cross");

		isPlaying = getIntent().getBooleanExtra("isplay", false);

		adapter = new MusicListAdapter(musicList, PlayMusic.this);

		audio = (AudioManager) getSystemService(Context.AUDIO_SERVICE);  
		initList();
		initSub();
		initTitle();

		initProgress();

		initVolume();

		SharedPreferences sp = getSharedPreferences("kugou", MODE_PRIVATE);
		modeFlag = sp.getInt("mode", 0);

	}

	/**
	 * ��������
	 */
	private void initVolume() {
		songVolume.setMax(audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC));
		System.out.println("max volume "+audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC)+" "+audio.getStreamVolume(AudioManager.STREAM_MUSIC));
		songVolume.setProgress(audio.getStreamVolume(AudioManager.STREAM_MUSIC));
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
				System.out.println("volume "+progress+" "+seekBar.getMax());
			}
		});
	}

	/**
	 * ��ť����
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
			// Intent intentModel = new
			// Intent("com.runcross.kugou.music.model");
			// intentModel.putExtra("progress", modeFlag);
			// sendBroadcast(intentModel);
			songModel.setImageResource(modes[modeFlag]);
			break;
		case R.id.play_prev:
			// Intent intentPre = new Intent("com.runcross.kugou.music.pre");
			// sendBroadcast(intentPre);
			System.out.println("play_next "
					+ musicList.get(currentMusic).getName() + " model "
					+ modeFlag);
			if (pre.isEmpty()) {
				break;
			}
			currentMusic--;
			if (currentMusic < 0) {
				currentMusic = -1;
			}
			Music temp = pre.peek();
			Intent intentPre = new Intent("com.runcross.kugou.music");
			intentPre.putExtra("model", MusicAction.PLAY_MUSIC_NEW);
			intentPre.putExtra("music", temp.getData());
			intentPre.putExtra("next", false);
			sendBroadcast(intentPre);
			break;
		case R.id.play_music:
			isPlaying = !isPlaying;
			if (isPlaying) {
				songMusic.setImageResource(R.drawable.ic_player_pause_default);
				Intent intentMusic = new Intent("com.runcross.kugou.music");
				intentMusic.putExtra("model", MusicAction.PLAY_MUSIC);
				sendBroadcast(intentMusic);
			} else {
				songMusic.setImageResource(R.drawable.ic_player_play_default);
				Intent intentMusic = new Intent("com.runcross.kugou.music");
				intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_PAUSE);
				sendBroadcast(intentMusic);
			}

			break;
		case R.id.play_next:
			// Intent intentNext = new Intent("com.runcross.kugou.music.next");
			// sendBroadcast(intentNext);
			preMusic = currentMusic;
			// System.out.println("play_next "+musicList.get(currentMusic).getName()+" model "+modeFlag+" Listsize"+musicList.size());
			switch (modeFlag) {
			case 0:
				if (musicList.size() > 0) {
					Intent intentMusic = new Intent("com.runcross.kugou.music");
					currentMusic++;
					if (currentMusic > musicList.size()) {
						currentMusic = 0;
					}
					intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_NEW);
					intentMusic.putExtra("music", musicList.get(currentMusic)
							.getData());
					intentMusic.putExtra("next", true);
					sendBroadcast(intentMusic);
					pre.push(musicList.get(preMusic));
					songMusic
							.setImageResource(R.drawable.ic_player_pause_default);
					isPlaying = true;
				} else {
					currentMusic = -1;
				}
				break;
			case 1:
				if (musicList.size() > 0) {
					Intent intentMusic = new Intent("com.runcross.kugou.music");
					Random random = new Random();
					currentMusic = random.nextInt() % musicList.size();
					intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_NEW);
					intentMusic.putExtra("music", musicList.get(currentMusic)
							.getData());
					intentMusic.putExtra("next", true);
					sendBroadcast(intentMusic);
					pre.push(musicList.get(preMusic));
					songMusic
							.setImageResource(R.drawable.ic_player_pause_default);
					isPlaying = true;
				} else {
					currentMusic = -1;
				}
				break;
			case 2:
				if (musicList.size() > 0) {
					currentMusic++;
					if (currentMusic < musicList.size()) {
						Intent intentMusic = new Intent(
								"com.runcross.kugou.music");
						intentMusic.putExtra("model",
								MusicAction.PLAY_MUSIC_NEW);
						intentMusic.putExtra("music",
								musicList.get(currentMusic).getData());
						intentMusic.putExtra("next", true);
						sendBroadcast(intentMusic);
						pre.push(musicList.get(preMusic));
						songMusic
								.setImageResource(R.drawable.ic_player_pause_default);
						isPlaying = true;
					}
				} else {
					currentMusic = -1;
				}
				break;
			case 3:
				Intent intentMusic = new Intent("com.runcross.kugou.music");
				intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_NEW);
				intentMusic.putExtra("music", musicList.get(currentMusic)
						.getData());
				sendBroadcast(intentMusic);				
				songMusic.setImageResource(R.drawable.ic_player_pause_default);
				isPlaying = true;
				break;
			}
			System.out.println("currentmusic " + currentMusic);
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
			
			artist.setText(musicList.get(currentMusic).getArtist());
			album.setText(musicList.get(currentMusic).getAlbum());
			duration.setText(musicList.get(currentMusic).getDuration());
			title.setText(musicList.get(currentMusic).getName());
			
			AlertDialog.Builder dialogBulder = new Builder(
					PlayMusic.this);
			AlertDialog dialog = dialogBulder
					.setTitle("������Ϣ")
					.setView(dia)
					.create();
			dialog.show();
			break;
		}
	}

	/**
	 * ��ʼ�������б�
	 */
	private void initList() {
		// musicList.add(music);

		// ����ϵͳ�㲥��ɨ�����
		// IntentFilter intentfilter = new IntentFilter(
		// Intent.ACTION_MEDIA_SCANNER_STARTED);
		// intentfilter.addAction(Intent.ACTION_MEDIA_SCANNER_FINISHED);
		// intentfilter.addDataScheme("file");
		// registerReceiver(receiver, intentfilter);
		//
		// // ���͹㲥��ϵͳɨ��ָ�����ļ��У���д�����ݿ�
		// sendBroadcast(new Intent(Intent.ACTION_MEDIA_MOUNTED,
		// Uri.parse("file://"
		// + Environment.getExternalStorageDirectory()
		// .getAbsolutePath())));
		// System.out.println("���͹㲥");

		ContentResolver cr = getContentResolver();

		Cursor cursor = cr.query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
				projection, null, null, null);
		while (cursor.moveToNext()) {
			Music mu = new Music();
			mu.setId(cursor.getInt(cursor.getColumnIndex(projection[0])));
			mu.setArtist(cursor.getString(cursor.getColumnIndex(projection[1])));
			mu.setName(cursor.getString(cursor.getColumnIndex(projection[2])));
			mu.setDuration(cursor.getInt(cursor.getColumnIndex(projection[3])));
			mu.setData(cursor.getString(cursor.getColumnIndex(projection[4])));
			mu.setAlbum(cursor.getString(cursor.getColumnIndex(projection[5])));
			musicList.add(mu);
			// System.out.println(mu.getId());
		}// while
		System.out.println("ˢ�����");
	}

	/**
	 * ��ʼ�����Ž���
	 */
	private void initProgress() {
		timeBegin.setText("0:00");
		timeEnd.setText(String.valueOf(music.getDuration()
				/ 60
				+ ":"
				+ (music.getDuration() % 60 > 9 ? music.getDuration() % 60
						: "0" + music.getDuration() % 60)));
		songProgress.setOnSeekBarChangeListener(new OnSeekBarChangeListener() {

			@Override
			public void onStopTrackingTouch(SeekBar seekBar) {
			}

			@Override
			public void onStartTrackingTouch(SeekBar seekBar) {
			}

			@Override
			public void onProgressChanged(SeekBar seekBar, int progress,
					boolean fromUser) {
				Intent intent = new Intent("com.runcross.kugou.music");
				intent.putExtra("model", MusicAction.PLAY_MUSIC_SEEK);
				intent.putExtra("progress", progress);
				sendBroadcast(intent);
			}
		});
	}

	/**
	 * ��ʼ������ͷ
	 */
	private void initTitle() {
		back.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
			}
		});

		songTitle.setText(music.getName());
		songSonger.setText(music.getArtist());
	}

	/**
	 * ��ʼ����ť�����
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
				TextView artist = (TextView) dia.findViewById(R.id.music_artist);
				TextView album = (TextView) dia.findViewById(R.id.music_album);
				TextView duration = (TextView) dia.findViewById(R.id.music_duration);
				TextView title = (TextView) dia.findViewById(R.id.music_title);
				
				artist.setText(musicList.get(currentMusic).getArtist());
				album.setText(musicList.get(currentMusic).getAlbum());
				duration.setText(String.valueOf(musicList.get(currentMusic).getDuration()));
				title.setText(musicList.get(currentMusic).getName());
				
				AlertDialog.Builder dialogBulder = new Builder(
						PlayMusic.this);
				AlertDialog dialog = dialogBulder
						.setTitle("������Ϣ")
						.setView(dia)
						.create();
				dialog.show();
			}
		});
	}

	/**
	 * ��ʼ�� popWin
	 */
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

		// ����һ��PopupWindow
		// ����1��contentView ָ��PopupWindow������
		// ����2��width ָ��PopupWindow��width
		// ����3��height ָ��PopupWindow��height
		popWin = new PopupWindow(popupWindow, 360, 430,true);
		popWin.setBackgroundDrawable(new BitmapDrawable());  
		popWin.setFocusable(true); 
		popWin.setOutsideTouchable(true);
		  popWin.update();
		initPopLinearListener();

	}

	/**
	 * ��ʼ��pop��ļ���
	 */
	private void initPopLinearListener() {
		musicListNum.setText("���Ŷ���(" + musicList.size() + ")");
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
				System.out.println("�����б�");
				preMusic = currentMusic;
				currentMusic = position;
				currentMusicPath = musicList.get(position).getData();
				
				Intent intentMusic = new Intent("com.runcross.kugou.music");
				intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_NEW);
				intentMusic.putExtra("music", currentMusicPath);
				sendBroadcast(intentMusic);
				pre.push(musicList.get(preMusic));
				popWin.setFocusable(false);
				popWin.dismiss();
				popWin = null;
			}
		});
	}

	/**
	 * ��ȡPopupWindowʵ��
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
	 * �ڲ�������Ϣ
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
				System.out.println("prog "+intent.getIntExtra("progress", 0));
				songProgress.setProgress(intent.getIntExtra("progress", 0));
				break;
			case MusicAction.MUSIC_DONE:
				isPlaying = false;
				songMusic.setImageResource(R.drawable.ic_player_play_default);
				preMusic = currentMusic;
				switch (modeFlag) {
				case 1:
					if (musicList.size() > 0) {
						Intent intentMusic = new Intent(
								"com.runcross.kugou.music");
						currentMusic++;
						if (currentMusic > musicList.size())
							currentMusic = 0;
						intentMusic.putExtra("model",
								MusicAction.PLAY_MUSIC_NEW);
						intentMusic.putExtra("music",
								musicList.get(currentMusic).getData());
						sendBroadcast(intentMusic);
					} else {
						currentMusic = -1;
					}
					break;
				case 2:
					if (musicList.size() > 0) {
						Intent intentMusic = new Intent(
								"com.runcross.kugou.music");
						Random random = new Random();
						currentMusic = random.nextInt() % musicList.size();
						intentMusic.putExtra("model",
								MusicAction.PLAY_MUSIC_NEW);
						intentMusic.putExtra("music",
								musicList.get(currentMusic).getData());
						sendBroadcast(intentMusic);
					} else {
						currentMusic = -1;
					}
					break;
				case 3:
					if (musicList.size() > 0) {
						currentMusic++;
						if (currentMusic < musicList.size()) {
							Intent intentMusic = new Intent(
									"com.runcross.kugou.music");
							intentMusic.putExtra("model",
									MusicAction.PLAY_MUSIC_NEW);
							intentMusic.putExtra("music",
									musicList.get(currentMusic).getData());
							sendBroadcast(intentMusic);
						}
					} else {
						currentMusic = -1;
					}
					break;
				case 4:
					Intent intentMusic = new Intent("com.runcross.kugou.music");
					intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_NEW);
					intentMusic.putExtra("music", musicList.get(currentMusic)
							.getData());
					sendBroadcast(intentMusic);
					break;
				}

				break;
			case MusicAction.MUSIC_NEW:
				Music temp;
				if (intent.getBooleanExtra("next", true)) {
					temp = musicList.get(currentMusic);
				} else {
					if (pre.isEmpty()) {
						break;
					} else {
						temp = pre.pop();
					}
				}
				songProgress.setProgress(0);
				int length = temp.getDuration();
				songProgress.setMax(length);
				int len = length / 1000;
				timeEnd.setText(String.valueOf(len / 60 + ":"
						+ (len % 60 > 9 ? len % 60 : "0" + len % 60)));
				songTitle.setText(temp.getName());
				songSonger.setText(temp.getArtist());
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
			if (Intent.ACTION_MEDIA_SCANNER_FINISHED.equals(intent.getAction())) {
				// ContentResolver cr = getContentResolver();
				//
				// Cursor cursor = cr.query(
				// MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
				// projection, null, null, null);
				// while (cursor.moveToNext()) {
				// Music mu = new Music();
				// mu.setId(cursor.getInt(cursor.getColumnIndex(projection[0])));
				// mu.setArtist(cursor.getString(cursor
				// .getColumnIndex(projection[1])));
				// mu.setName(cursor.getString(cursor
				// .getColumnIndex(projection[2])));
				// mu.setDuration(cursor.getInt(cursor
				// .getColumnIndex(projection[3])));
				// mu.setData(cursor.getString(cursor
				// .getColumnIndex(projection[4])));
				// mu.setAlbum(cursor.getString(cursor
				// .getColumnIndex(projection[5])));
				// musicList.add(mu);
				// // System.out.println(mu.getId());
				// }// while
				// System.out.println("ˢ�����");
			}// if

		}// method

	}// receiver
}
