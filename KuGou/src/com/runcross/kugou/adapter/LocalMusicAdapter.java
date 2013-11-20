package com.runcross.kugou.adapter;

import java.util.List;
import java.util.zip.Inflater;

import com.runcross.kugou.R;
import com.runcross.kugou.adapter.LocalMusicListAdapter.ViewHolder;
import com.runcross.kugou.bean.LocalMusicItem;
import com.runcross.kugou.bean.Music;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ExpandableListAdapter;
import android.widget.ImageButton;
import android.widget.TextView;

public class LocalMusicAdapter implements ExpandableListAdapter {

	private List<Music> musicList;
	private LayoutInflater inflater;
	private ViewHolderG holderP;
	private Context context;
	private LocalMusicListListener listener;
	
	public interface LocalMusicListListener{
		public void playLocalMusic(Music music);
		public void setLing(Music music);
	}
	
	public LocalMusicAdapter(List<Music> musicList,Context context) {
		super();
		this.musicList = musicList;
		this.context = context;
		inflater = LayoutInflater.from(context);
	}

	@Override
	public void registerDataSetObserver(DataSetObserver observer) {
	}

	@Override
	public void unregisterDataSetObserver(DataSetObserver observer) {
	}

	@Override
	public int getGroupCount() {
		return musicList.size();
	}

	@Override
	public int getChildrenCount(int groupPosition) {
		return 1;
	}

	@Override
	public Object getGroup(int groupPosition) {
		return musicList.get(groupPosition);
	}

	@Override
	public Object getChild(int groupPosition, int childPosition) {
		return null;
	}

	@Override
	public long getGroupId(int groupPosition) {
		// TODO Auto-generated method stub
		return groupPosition;
	}

	@Override
	public long getChildId(int groupPosition, int childPosition) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean hasStableIds() {
		// TODO Auto-generated method stub
		return false;
	}
	static class ViewHolderG{		
		TextView music_name;	
		ImageButton play;
	}	
	@Override
	public View getGroupView(final int groupPosition, boolean isExpanded,
			View convertView, ViewGroup parent) {
		if(convertView == null){
			convertView = inflater.inflate(R.layout.locao_list_music_group, null);
		}
		holderP = new ViewHolderG();
		holderP.music_name = (TextView) convertView.findViewById(R.id.local_music);
		holderP.play = (ImageButton) convertView.findViewById(R.id.local_music_play);
		
		holderP.music_name.setText(musicList.get(groupPosition).getName());
		listener = (LocalMusicListListener) context;
		holderP.play.setOnClickListener(new OnClickListener() {
			@Override
			public void onClick(View v) {
			listener.playLocalMusic(musicList.get(groupPosition));
			}
		});
		
		return convertView;
	}

	@Override
	public View getChildView(int groupPosition, int childPosition,
			boolean isLastChild, View convertView, ViewGroup parent) {
		if(convertView == null){
			convertView = inflater.inflate(R.layout.local_list_music_child, null);
		}
		return convertView;
	}

	@Override
	public boolean isChildSelectable(int groupPosition, int childPosition) {
		return true;
	}

	@Override
	public boolean areAllItemsEnabled() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean isEmpty() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void onGroupExpanded(int groupPosition) {
		// TODO Auto-generated method stub

	}

	@Override
	public void onGroupCollapsed(int groupPosition) {
		// TODO Auto-generated method stub

	}

	@Override
	public long getCombinedChildId(long groupId, long childId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public long getCombinedGroupId(long groupId) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
