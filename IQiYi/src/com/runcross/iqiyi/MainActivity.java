package com.runcross.iqiyi;

import java.util.ArrayList;
import java.util.List;

import com.runcross.iqiyi.adapter.ExpandAdapter;
import com.runcross.iqiyi.po.MovieInfo;
import com.runcross.iqiyi.po.MovieList;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Handler.Callback;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnGroupClickListener;
import android.widget.ExpandableListView.OnGroupCollapseListener;
import android.widget.ExpandableListView.OnGroupExpandListener;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

@SuppressWarnings("deprecation")
public class MainActivity extends Activity implements Callback {

	//
	private ExpandableListView explistView;
	// 所有电影列表
	private List<MovieList> movieList;

	private List<Integer> imageids;

	private Handler handler;

	private int currenIndex = 0;

	private Gallery gal;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.enter);
		explistView = (ExpandableListView) findViewById(R.id.movielist);

		// 初始化
		initMovieItem();
		initImages();
		inintGallery();

		
		
		final ExpandAdapter expandAdapetr = new ExpandAdapter(
				MainActivity.this, movieList);

		explistView.addHeaderView(gal);

		explistView.setAdapter(expandAdapetr);

		explistView.setOnGroupExpandListener(new OnGroupExpandListener() {

			@Override
			public void onGroupExpand(int groupPosition) {
				MovieList movies = (MovieList) expandAdapetr
						.getGroup(groupPosition);
				movies.setDown(true);
				
				
				
//				expandAdapetr.notifyDataSetChanged();
				expandAdapetr.notifyDataSetInvalidated();
			}
		});

		explistView.setOnGroupCollapseListener(new OnGroupCollapseListener() {

			@Override
			public void onGroupCollapse(int groupPosition) {
				MovieList movies = (MovieList) expandAdapetr
						.getGroup(groupPosition);
				movies.setDown(false);
				expandAdapetr.notifyDataSetChanged();
				
			}
		});

		explistView.setOnGroupClickListener(new OnGroupClickListener() {

			@Override
			public boolean onGroupClick(ExpandableListView parent, View v,
					int groupPosition, long id) {
				Animation ani = AnimationUtils.loadAnimation(MainActivity.this,
						R.anim.totate1);
				v.findViewById(R.id.btnimg).setAnimation(ani);
				MovieList movies = (MovieList) expandAdapetr
						.getGroup(groupPosition);
				
					return false;
				
			}
		});

	}

	private void initImages() {
		imageids = new ArrayList<Integer>();
		imageids.add(R.drawable.t1);
		imageids.add(R.drawable.t2);
		imageids.add(R.drawable.t3);
	}

	private void inintGallery() {
		handler = new Handler(this);
		LayoutInflater inflater = getLayoutInflater();

		gal = (Gallery) inflater.inflate(R.layout.gallery, null);
		// gal = (Gallery) findViewById(R.id.gallery);

		gal.setAdapter(adapter);
		handler.sendEmptyMessage(1);
	}

	private void initMovieItem() {

		movieList = new ArrayList<MovieList>();
		List<MovieInfo> movies = new ArrayList<MovieInfo>();

		movies.add(new MovieInfo("Angel Beats!", 16, 10, 0L));
		movies.add(new MovieInfo("Clannad", 32, 10, 1L));
		movies.add(new MovieInfo("Kanno", 24, 9, 2L));
		movies.add(new MovieInfo("Air", 24, 10, 3L));
		movieList.add(new MovieList("Comic", movies));

		movies = new ArrayList<MovieInfo>();

		movies.add(new MovieInfo("Angel Beats!", 16, 10, 0L));
		movies.add(new MovieInfo("Clannad", 32, 10, 1L));
		movies.add(new MovieInfo("Kanno", 24, 9, 2L));
		movies.add(new MovieInfo("Air", 24, 10, 3L));
		movieList.add(new MovieList("Action", movies));

		movies = new ArrayList<MovieInfo>();

		movies.add(new MovieInfo("Angel Beats!", 16, 10, 0L));
		movies.add(new MovieInfo("Clannad", 32, 10, 1L));
		movies.add(new MovieInfo("Kanno", 24, 9, 2L));
		movies.add(new MovieInfo("Air", 24, 10, 3L));
		movieList.add(new MovieList("Action", movies));
		movies = new ArrayList<MovieInfo>();

		movies.add(new MovieInfo("Angel Beats!", 16, 10, 0L));
		movies.add(new MovieInfo("Clannad", 32, 10, 1L));
		movies.add(new MovieInfo("Kanno", 24, 9, 2L));
		movies.add(new MovieInfo("Air", 24, 10, 3L));
		movieList.add(new MovieList("Action", movies));
		movies = new ArrayList<MovieInfo>();

		movies.add(new MovieInfo("Angel Beats!", 16, 10, 0L));
		movies.add(new MovieInfo("Clannad", 32, 10, 1L));
		movies.add(new MovieInfo("Kanno", 24, 9, 2L));
		movies.add(new MovieInfo("Air", 24, 10, 3L));
		movieList.add(new MovieList("Action", movies));
		movies = new ArrayList<MovieInfo>();

		movies.add(new MovieInfo("Angel Beats!", 16, 10, 0L));
		movies.add(new MovieInfo("Clannad", 32, 10, 1L));
		movies.add(new MovieInfo("Kanno", 24, 9, 2L));
		movies.add(new MovieInfo("Air", 24, 10, 3L));
		movieList.add(new MovieList("Action", movies));
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}

	private BaseAdapter adapter = new BaseAdapter() {

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {

			ImageView iv = new ImageView(MainActivity.this);
			iv.setImageResource(imageids.get(position));
			// iv.setLayoutParams(new Gallery.LayoutParams(380, 515));
			iv.setScaleType(ScaleType.FIT_XY);

			return iv;
		}

		@Override
		public long getItemId(int position) {
			return imageids.get(position);
		}

		@Override
		public Object getItem(int position) {
			return null;
		}

		@Override
		public int getCount() {
			return imageids.size();
		}
	};

	@Override
	public boolean handleMessage(Message msg) {
		if (currenIndex >= imageids.size()) {
			currenIndex = 0;
		}
		gal.setSelection(currenIndex);
		++currenIndex;
		handler.sendEmptyMessageDelayed(1, 1500);
		return false;
	}

}
