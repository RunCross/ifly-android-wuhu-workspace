package com.runcross.stumangersimple.adapter;

import java.util.List;

import com.runcross.stumangersimple.R;
import com.runcross.stumangersimple.bean.UserInfo;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

public class StuListPreAdapter extends BaseAdapter {

	public interface GoTel {
		public void gotel(String telNum);
	};

	private float down_x, up_x, move_x;
	private boolean closeOnclick = false; // ÊÇ·ñ¹Ø±Õonclick¼àÌý false£º·ñ £¬true£ºÊÇ
	private boolean isOpen = true;
	private List<UserInfo> stus;
	private Context context;
	private LayoutInflater inflater;
	private float appeatDis = 15;

	public StuListPreAdapter(List<UserInfo> stus, Context context) {
		super();
		this.stus = stus;
		this.context = context;
		inflater = LayoutInflater.from(context);
	}

	@Override
	public int getCount() {
		return stus.size();
	}

	@Override
	public Object getItem(int position) {
		return stus.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View convertView, ViewGroup parent) {

		View view = inflater.inflate(R.layout.stulistitem, null);

		LinearLayout line = (LinearLayout) view.findViewById(R.id.list);
		CheckBox chk = (CheckBox) view.findViewById(R.id.list_chk);
		TextView name = (TextView) view.findViewById(R.id.list_stu_name);
		final TextView sex = (TextView) view.findViewById(R.id.list_stu_sex);
		final TextView tel = (TextView) view.findViewById(R.id.list_stu_tel);
		final ImageButton goTel = (ImageButton) view
				.findViewById(R.id.list_stu_gotel);
		final ImageButton goMess = (ImageButton) view
				.findViewById(R.id.list_stu_gomess);
		name.setText(stus.get(position).getUname());
		sex.setText(stus.get(position).getSex());
		tel.setText(stus.get(position).getTel());
		chk.setChecked(stus.get(position).isChk());
		
		goTel.setVisibility(View.VISIBLE);
		goMess.setVisibility(View.VISIBLE);
		
		final GoTel gt = (GoTel) context;
		goTel.setOnClickListener(new OnClickListener() {

			@Override
			public void onClick(View v) {
				gt.gotel(tel.getText().toString());
			}
		});
		
		final int pos = position;

		chk.setOnCheckedChangeListener(new OnCheckedChangeListener() {

			@Override
			public void onCheckedChanged(CompoundButton buttonView,
					boolean isChecked) {
				stus.get(pos).setChk(isChecked);
			}
		});
		line.setOnTouchListener(new OnTouchListener() {

			@Override
			public boolean onTouch(View v, MotionEvent event) {
				int action = event.getAction();
				System.out.println("action"+action);
				
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
					if (distance > appeatDis && isOpen) {
						sex.setVisibility(View.VISIBLE);
						tel.setVisibility(View.VISIBLE);
						goTel.setVisibility(View.GONE);
						goMess.setVisibility(View.GONE);
						closeOnclick = true;
						isOpen = false;
					} else {
						sex.setVisibility(View.GONE);
						tel.setVisibility(View.GONE);
						goTel.setVisibility(View.VISIBLE);
						goMess.setVisibility(View.VISIBLE);
						closeOnclick = true;
						isOpen = false;
					}
					break;
				}// switch
				return false;
			}
		});
		return view;
	}

}
