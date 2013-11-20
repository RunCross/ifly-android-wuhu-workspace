package com.runcross.kugou;

import java.util.ArrayList;
import java.util.List;

import com.runcross.kugou.adapter.LocalMusicAdapter;
import com.runcross.kugou.bean.LocalMusicItem;
import com.runcross.kugou.bean.Music;
import com.runcross.kugou.bean.MusicAction;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.MediaStore;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnGroupExpandListener;
import android.widget.TextView;

public class LocalMusicPlay extends Activity implements
		LocalMusicAdapter.LocalMusicListListener {

	private ExpandableListView localMusic;

	private List<Music> list;

	private TextView title;

	private String path;

	private LocalMusicAdapter adapter;

	private String[] projection = { MediaStore.Audio.AudioColumns._ID,
			MediaStore.Audio.AudioColumns.ARTIST,
			MediaStore.Audio.AudioColumns.TITLE,
			MediaStore.Audio.AudioColumns.DURATION,
			MediaStore.Audio.AudioColumns.DATA,
			MediaStore.Audio.AudioColumns.ALBUM };

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.local_list_music);
		title = (TextView) findViewById(R.id.title);
		localMusic = (ExpandableListView) findViewById(R.id.localmusic);
		LocalMusicItem local = (LocalMusicItem) getIntent()
				.getSerializableExtra("music");
		title.setText(local.getName());
		path = local.getPath();

		ContentResolver cr = getContentResolver();
		Cursor cursor = cr
				.query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI,
						new String[] {
								"substr(_data,0,length(_data)-length(_display_name))  as folder",
								projection[0], projection[1], projection[2],
								projection[3], projection[4], projection[5] },
						" folder == '" + path + "'", null, null);
		list = new ArrayList<Music>();
		while (cursor.moveToNext()) {
			Music mu = new Music();
			mu.setId(cursor.getInt(cursor.getColumnIndex(projection[0])));
			mu.setArtist(cursor.getString(cursor.getColumnIndex(projection[1])));
			mu.setName(cursor.getString(cursor.getColumnIndex(projection[2])));
			mu.setDuration(cursor.getInt(cursor.getColumnIndex(projection[3])));
			mu.setData(cursor.getString(cursor.getColumnIndex(projection[4])));
			mu.setAlbum(cursor.getString(cursor.getColumnIndex(projection[5])));
			list.add(mu);
		}
		adapter = new LocalMusicAdapter(list, LocalMusicPlay.this);
		localMusic.setAdapter(adapter);
		// 只展开一个group
		localMusic.setOnGroupExpandListener(new OnGroupExpandListener() {

			@Override
			public void onGroupExpand(int groupPosition) {
				for (int i = 0; i < adapter.getGroupCount(); i++) {
					if (groupPosition != i) {
						localMusic.collapseGroup(i);
					}// if
				} // for

			} // method

		});

	}

	/**
	 * 播放
	 */
	@Override
	public void playLocalMusic(Music music) {
		Intent intentMusic = new Intent("com.runcross.kugou.music");
		intentMusic.putExtra("model", MusicAction.PLAY_MUSIC_INSERT_NEW);
		intentMusic.putExtra("music", music);
		sendBroadcast(intentMusic);
	}

	
	@Override
	/**
	 * 设置铃声
	 */
	public void setLing(Music music) {

		ContentValues cv = new ContentValues();
		Uri uri = MediaStore.Audio.Media.getContentUriForPath(music.getData());
		Cursor cursor = this.getContentResolver().query(uri, null,
				MediaStore.MediaColumns.DATA + "=?",
				new String[] { music.getData() }, null);
		if (cursor.getCount() > 0) {
			cv.put(MediaStore.Audio.Media.IS_RINGTONE, true);
			getContentResolver().update(uri, cv,
					MediaStore.MediaColumns.DATA + "=?",
					new String[] { music.getData() });
			Uri newUri = ContentUris.withAppendedId(uri,
					Long.valueOf(music.getId()));
			RingtoneManager.setActualDefaultRingtoneUri(this,
					RingtoneManager.TYPE_RINGTONE, newUri);
		}
	}
}
