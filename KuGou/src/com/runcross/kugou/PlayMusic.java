package com.runcross.kugou;

import com.runcross.kugou.bean.Music;

import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

public class PlayMusic extends Activity {

	private ImageButton back;
	// private ImageButton songList;
	 private ImageButton songModel;
	// private ImageButton songPrev;
	// private ImageButton songMusic;
	// private ImageButton songNext;
	// private ImageButton songMore;

	private TextView songTitle;
	private TextView songSonger;
	private TextView timeBegin;
	private TextView timeEnd;

	private SeekBar songProgress;
	private Music music;

	private SeekBar songVolume;

	private int modes[];
	public static int modeFlag ;
	private boolean isMore = false;

	private LinearLayout progress;
	private LinearLayout operation;
	
	public static int volume;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.play_music);

		music = (Music) getIntent().getExtras().get("music");

		initSub();

		initTitle();

		initProgress();

		initVolume();

		SharedPreferences sp = getSharedPreferences("kugou", MODE_PRIVATE);
		modeFlag = sp.getInt("mode", 0);

	}

	private void initVolume() {
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
				Intent intent = new Intent("com.runcross.kugou.volumechange");
				intent.putExtra("progress", progress);
				sendBroadcast(intent);
			}
		});
	}

	public void onMusicClick(View view) {
		switch (view.getId()) {
		case R.id.play_model:
			modeFlag++;
			if(modeFlag == modes.length){
				modeFlag = 0;
			}
			Intent intentModel = new Intent("com.runcross.kugou.model");
			intentModel.putExtra("progress", modeFlag);
			sendBroadcast(intentModel);
			songModel.setImageResource(modes[modeFlag]);
			break;
		case R.id.play_prev:
			break;
		case R.id.play_music:
			break;
		case R.id.play_next:
			break;
		case R.id.play_more:
			break;
		case R.id.play_title_back:
			break;
		case R.id.play_list:
			break;
		}
	}

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
				Intent intent = new Intent("com.runcross.kugou.seek");
				intent.putExtra("progress", progress);
				sendBroadcast(intent);
			}
		});
	}

	private void initTitle() {
		back.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
			}
		});

		songTitle.setText(music.getName());
		songSonger.setText(music.getArtist());
	}

	private void initSub() {
		back = (ImageButton) findViewById(R.id.play_title_back);
//		songList = (ImageButton) findViewById(R.id.play_list);
		songModel = (ImageButton) findViewById(R.id.play_model);
//		songPrev = (ImageButton) findViewById(R.id.play_prev);
//		songMusic = (ImageButton) findViewById(R.id.play_music);
//		songNext = (ImageButton) findViewById(R.id.play_next);
//		songMore = (ImageButton) findViewById(R.id.play_more);

		songTitle = (TextView) findViewById(R.id.song_title);
		songSonger = (TextView) findViewById(R.id.song_songer);
		timeBegin = (TextView) findViewById(R.id.play_time_begin);
		timeEnd = (TextView) findViewById(R.id.play_time_end);
		
		songProgress = (SeekBar) findViewById(R.id.play_progress);

		songVolume = (SeekBar) findViewById(R.id.play_volume);
		
		progress = (LinearLayout) findViewById(R.id.play_progress_linear);
		operation  = (LinearLayout) findViewById(R.id.play_opera_more);
		
		modes = new int[]{R.drawable.ic_player_mode_all_default,
				R.drawable.ic_player_mode_random_default,
				R.drawable.ic_player_mode_sequence_default,
				R.drawable.ic_player_mode_single_default};
	}
}
