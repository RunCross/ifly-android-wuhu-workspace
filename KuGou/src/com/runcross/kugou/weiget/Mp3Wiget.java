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
	// 当桌面组件被更新的时候调用这个函数
	@Override
	public void onUpdate(Context context, AppWidgetManager appWidgetManager,
			int[] appWidgetIds) {
		System.out.println("onupdate");
		super.onUpdate(context, appWidgetManager, appWidgetIds);
		// 初始化组件的布局
		remoteviews= new RemoteViews(context.getPackageName(),
				R.layout.player_weiget);
		// 包装ComponentName
		ComponentName componentApp = new ComponentName(context, Mp3Wiget.class);
		// 把组件添加到桌面
		appWidgetManager.updateAppWidget(componentApp, remoteviews);

		// 运行service 为了完成service的初始化任务
		context.startService(new Intent(context, MusicPlay.class));

		//播放
		Intent intentPlay = new Intent("com.runcross.kugou.music");
		intentPlay.putExtra("model", MusicAction.PLAY_MUSIC);		
		PendingIntent playPintent = PendingIntent.getBroadcast(context, 0,
				intentPlay, 0);
		//设置播放按钮激活的广播
		remoteviews.setOnClickPendingIntent(R.id.imagePlay, playPintent);
		
		//下一首
		Intent intentNext= new Intent("com.runcross.kugou.music");
		intentNext.putExtra("model", MusicAction.PLAY_MUSIC_NEXT);
		PendingIntent stopPintent = PendingIntent.getBroadcast(context, 0,
				intentNext, 0);
		//设置下意识激活的广播
		remoteviews.setOnClickPendingIntent(R.id.imageStop, stopPintent);
		
		//如果是service把歌曲名称发送过来了 那么可以写一个textView 然后调用此方法
		//remoteviews.setTextViewText(viewId, text)
		//更新组件
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

