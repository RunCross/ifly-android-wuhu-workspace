package com.example.adapter;

import java.util.ArrayList;
import java.util.List;

import com.example.chattest.R;
import com.example.pojo.WeixinItem;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class weixinAdapter extends BaseAdapter {

	private Context mContext;
	private ArrayList<WeixinItem> list;
	private LayoutInflater mLayoutInflater;

	private float down_x, up_x, move_x;
	private boolean closeOnclick = false; // �Ƿ�ر�onclick���� false���� ��true����
	private boolean isOpen = true; // �Ƿ�ִ�л�������ɾ����ť false����ִ��ʹ֮������� true ִ��
									// ����ɾ����ť�����

	public weixinAdapter(Context mContext, ArrayList<WeixinItem> list) {
		this.mContext = mContext;
		this.list = list;
		mLayoutInflater = LayoutInflater.from(mContext);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return list.size();
	}

	@Override
	public Object getItem(int arg0) {
		// TODO Auto-generated method stub
		return list.get(arg0);
	}

	@Override
	public long getItemId(int arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

	// public void addList(List<WeixinItem> addList) {
	// for (WeixinItem s : addList) {
	// list.add(s);
	// }
	// }

	@Override
	public View getView(final int position, View convertView, ViewGroup arg2) {

		final ViewHolder viewHolder;

		if (convertView == null) {
			convertView = mLayoutInflater.inflate(R.layout.weixinitem, null);
			viewHolder = new ViewHolder();
			viewHolder.rel = (RelativeLayout) convertView
					.findViewById(R.id.rel);
			viewHolder.deletBtn = (Button) convertView
					.findViewById(R.id.delete_btn);
			viewHolder.deleteLy = (LinearLayout) convertView
					.findViewById(R.id.delete_ly);
			viewHolder.animLy = (LinearLayout) convertView
					.findViewById(R.id.anim_ly);
			convertView.setTag(viewHolder);

		} else {
			viewHolder = (ViewHolder) convertView.getTag();

		}
		// // ɾ����ť����
		viewHolder.deletBtn.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				list.remove(position);
				notifyDataSetChanged();

			}
		});
		viewHolder.rel.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View arg0) {
				if (viewHolder.deleteLy.getVisibility() == View.VISIBLE) {
					Animation anim = AnimationUtils.loadAnimation(mContext,
							R.anim.closeanim);
					viewHolder.animLy.setAnimation(anim);
					anim.setAnimationListener(new AnimationListener() {

						@Override
						public void onAnimationStart(Animation arg0) {
							// TODO Auto-generated method stub

						}

						@Override
						public void onAnimationRepeat(Animation arg0) {
							// TODO Auto-generated method stub

						}

						@Override
						public void onAnimationEnd(Animation arg0) {
							viewHolder.deleteLy.setVisibility(View.INVISIBLE);
							viewHolder.animLy.setVisibility(View.INVISIBLE);

						}
					});
					viewHolder.animLy.setVisibility(View.VISIBLE);
					closeOnclick = true;
					isOpen = false;
					return;
				}
				Intent intent = new Intent(mContext,
						com.example.chattest.BranchActivity.class);
				mContext.startActivity(intent);
			}
		});
		viewHolder.rel.setOnTouchListener(new OnTouchListener() {

			@Override
			public boolean onTouch(View v, MotionEvent event) {
				int action = event.getAction();

				switch (action) {
				case MotionEvent.ACTION_DOWN:
					down_x = event.getX();
					closeOnclick = false;
					isOpen = true;
					return closeOnclick;
				case MotionEvent.ACTION_UP:
					up_x = event.getX();

					return closeOnclick;
				case MotionEvent.ACTION_MOVE:
					move_x = event.getX();
					float distance = Math.abs(move_x - down_x);
					if (distance > 20 && isOpen) {
						if (viewHolder.deleteLy.getVisibility() == View.INVISIBLE) {
							// �������
							Animation anim = AnimationUtils.loadAnimation(
									mContext, R.anim.openanim);
							viewHolder.animLy.setAnimation(anim);
							anim.setAnimationListener(new AnimationListener() {

								@Override
								public void onAnimationStart(Animation animation) {
									// TODO Auto-generated method stub

								}

								@Override
								public void onAnimationRepeat(
										Animation animation) {
									// TODO Auto-generated method stub

								}

								@Override
								public void onAnimationEnd(Animation animation) {
									viewHolder.animLy
											.setVisibility(View.INVISIBLE);

								}
							});
							viewHolder.animLy.setVisibility(View.VISIBLE);
							viewHolder.deleteLy.setVisibility(View.VISIBLE);
							closeOnclick = true;
							isOpen = false;
						} else {
							Animation anim = AnimationUtils.loadAnimation(
									mContext, R.anim.closeanim);
							viewHolder.animLy.setAnimation(anim);
							anim.setAnimationListener(new AnimationListener() {

								@Override
								public void onAnimationStart(Animation animation) {
									// TODO Auto-generated method stub

								}

								@Override
								public void onAnimationRepeat(
										Animation animation) {
									// TODO Auto-generated method stub

								}

								@Override
								public void onAnimationEnd(Animation animation) {
									viewHolder.deleteLy
											.setVisibility(View.INVISIBLE);
									viewHolder.animLy
											.setVisibility(View.INVISIBLE);

								}
							});
							viewHolder.animLy.setVisibility(View.VISIBLE);
							closeOnclick = true;
							isOpen = false;
						}
					}
					break;
				}

				return false;
			}
		});
		TextView txtName = (TextView) convertView.findViewById(R.id.name);
		TextView txtTime = (TextView) convertView.findViewById(R.id.time);
		TextView txtContent = (TextView) convertView.findViewById(R.id.content);
		final WeixinItem weixin = list.get(position);

		txtName.setText(weixin.getName());
		txtTime.setText(String.valueOf(weixin.getTime()));
		txtContent.setText(weixin.getContent());
		return convertView;
	}

	public class ViewHolder {
		RelativeLayout rel;// item ���ݿ��Ը��ݾ���������ӣ�
		Button deletBtn; // ���������ұߵ�ɾ����ť
		LinearLayout deleteLy; // ɾ����
		LinearLayout animLy;// ����ģ�飨�ڵ�ɾ��ģ���õģ���

	}
}
