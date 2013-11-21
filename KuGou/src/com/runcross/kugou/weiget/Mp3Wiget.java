package com.runcross.kugou.weiget;

import com.runcross.kugou.R;
import com.runcross.kugou.bean.Music;
import com.runcross.kugou.bean.MusicAction;
import com.runcross.kugou.play.MusicPlay;

import android.app.PendingIntent;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProvider;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.widget.RemoteViews;

public class Mp3Wiget extends AppWidgetProvider {
RemoteViews remoteviews;
	// ��������������µ�ʱ������������
	@Override
	public void onUpdate(Context context, AppWidgetManager appWidgetManager,
			int[] appWidgetIds) {
		System.out.println("onupdate");
		super.onUpdate(context, appWidgetManager, appWidgetIds);
		// ��ʼ������Ĳ���
		remoteviews= new RemoteViews(context.getPackageName(),
				R.layout.player_weiget);
		// ��װComponentName
		ComponentName componentApp = new ComponentName(context, Mp3Wiget.class);
		// �������ӵ�����
		appWidgetManager.updateAppWidget(componentApp, remoteviews);

		// ����service Ϊ�����service�ĳ�ʼ������
		context.startService(new Intent(context, MusicPlay.class));

		//����
		Intent intentPlay = new Intent("com.runcross.kugou.music");
		intentPlay.putExtra("model", MusicAction.PLAY_MUSIC);		
		PendingIntent playPintent = PendingIntent.getBroadcast(context, 0,
				intentPlay, 0);
		//���ò��Ű�ť����Ĺ㲥
		remoteviews.setOnClickPendingIntent(R.id.imagePlay, playPintent);
		
		//��һ��
		Intent intentNext= new Intent("com.runcross.kugou.music");
		intentNext.putExtra("model", MusicAction.PLAY_MUSIC_NEXT);
		PendingIntent stopPintent = PendingIntent.getBroadcast(context, 0,
				intentNext, 0);
		//��������ʶ����Ĺ㲥
		remoteviews.setOnClickPendingIntent(R.id.imageStop, stopPintent);
		
		//�����service�Ѹ������Ʒ��͹����� ��ô����дһ��textView Ȼ����ô˷���
		//remoteviews.setTextViewText(viewId, text)
		//�������
		appWidgetManager.updateAppWidget(appWidgetIds, remoteviews);

	}

	@Override
	public void onDeleted(Context context, int[] appWidgetIds) {
		System.out.println("onDeleted");
		super.onDeleted(context, appWidgetIds);
	}

	@Override
	public void onEnabled(Context context) {
		super.onEnabled(context);
		System.out.println("onEnabled");
	}

	@Override
	public void onDisabled(Context context) {
		super.onDisabled(context);
		System.out.println("onDisabled");

	}
	
	@Override
	public void onReceive(Context context, Intent intent) {
		super.onReceive(context, intent);
		switch (intent.getIntExtra("model", 0)) {
		case MusicAction.MUSIC_NEW:
			Music music = (Music) intent.getSerializableExtra("music");
			// if (intent.getBooleanExtra("next", true)) {
			// temp = musicList.get(currentMusic);
			// } else {
			// if (pre.isEmpty()) {
			// break;
			// } else {
			// temp = pre.pop();
			// }
			// }
			remoteviews.setTextViewText(R.id.weiget_title, music.getName());			
			break;
		}
		}
	}

