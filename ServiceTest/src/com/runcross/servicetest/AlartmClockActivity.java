package com.runcross.servicetest;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Service;
import android.content.DialogInterface;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;

public class AlartmClockActivity extends Activity {

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		System.out.println(System.currentTimeMillis());
		System.out.println(getIntent().getStringExtra("test"));

		final AudioManager audio = (AudioManager) getSystemService(Service.AUDIO_SERVICE);

		LayoutInflater inflater = LayoutInflater.from(AlartmClockActivity.this);

		View view = inflater.inflate(R.layout.volum, null);
		Button plus = (Button) view.findViewById(R.id.plus);
		Button min = (Button) view.findViewById(R.id.min);

		plus.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				audio.adjustStreamVolume(AudioManager.STREAM_MUSIC,
						AudioManager.ADJUST_RAISE, AudioManager.FLAG_SHOW_UI);
			}
		});
		min.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				audio.adjustStreamVolume(AudioManager.STREAM_MUSIC,
						AudioManager.ADJUST_LOWER, AudioManager.FLAG_SHOW_UI);
			}
		});

		int max = audio.getStreamMaxVolume(AudioManager.STREAM_MUSIC);
		int current = audio.getStreamVolume(AudioManager.STREAM_MUSIC);
		final MediaPlayer mp = MediaPlayer.create(AlartmClockActivity.this,
				R.raw.alarm);

		mp.start();

		AlertDialog.Builder builder = new Builder(AlartmClockActivity.this);
		builder.setTitle("ƒ÷÷”ing").setMessage("YOOOOO")
				.setPositiveButton("»∑∂®", new DialogInterface.OnClickListener() {

					@Override
					public void onClick(DialogInterface dialog, int which) {
						mp.stop();
					}
				}).setView(view).show();

	}
}
