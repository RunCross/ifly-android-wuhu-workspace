package com.firstgroup.iflytekdaily.adapter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.text.InputType;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.firstgroup.iflytekdaily.R;
import com.firstgroup.iflytekdaily.bean.Daily;
import com.firstgroup.iflytekdaily.work.CommitDailyUtil;
import com.firstgroup.iflytekdaily.work.SendedDaily;

/**
 * expandlistview �������� ��ɼ����ձ����ں�״̬�Ĺ���
 * 
 * @author yi1992
 * 
 */
public class ExpandListAdapter extends BaseExpandableListAdapter {
	private List<String> list = new ArrayList<String>();
	private LayoutInflater inflater;
	public Context context;
	private int pagerFlag;
	private View childView;
	private EditText todayWork, needCond;
//	private Map<String, String> map = new HashMap<String, String>();
       private Daily map = new Daily();
	public ExpandListAdapter(List<String> list, Context context, int pagerFlag,
			Daily map) {
		super();
		this.list = list;
//		System.out.println("���������죺"+map.getTodayJob());
		this.context = context;
		this.map = map;
		inflater = LayoutInflater.from(this.context);
		this.pagerFlag = pagerFlag;
	}

	@Override
	public int getGroupCount() {
		// TODO Auto-generated method stub
		return list.size();
	}

	@Override
	public int getChildrenCount(int groupPosition) {
		// TODO Auto-generated method stub
		return 1;
	}

	@Override
	public Object getGroup(int groupPosition) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getChild(int groupPosition, int childPosition) {
		// TODO Auto-generated method stub
		return map;
	}

	@Override
	public long getGroupId(int groupPosition) {
		// TODO Auto-generated method stub
		return 0;
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

	public View getGroupView(int groupPosition, boolean isExpanded,
			View convertView, ViewGroup parent) {
		String timeState = list.get(groupPosition);
		String[] strings = timeState.split("#");
		View view = inflater.inflate(R.layout.expand_parent_layout, null);
		TextView date = (TextView) view.findViewById(R.id.parent_show_date);
		TextView state = (TextView) view.findViewById(R.id.parent_show_state);
		date.setText(strings[0]);
		if (pagerFlag == 1) {

			if ("1".equals(strings[1])) {
				state.setText("δ��д");
				state.setTextColor(Color.RED);
			} else if ("2".equals(strings[1])) {
				state.setText("��ʱ��д");
			} else if ("3".equals(strings[1])) {
				state.setText("����");
			}
		} else if (pagerFlag == 2) {
			state.setText("�����ˣ� " + strings[1]);
		}
		return view;

	}

	/**
	 * �����ձ��Ĳ��� Ϊ�˸�ʡ���� �����ļ�������expandablelistview��չ����ʱ���ȥ��������
	 * 
	 * @author yi1992
	 */
	@Override
	public View getChildView(int groupPosition, int childPosition,
			boolean isLastChild, View convertView, ViewGroup parent) {

		childView = inflater.inflate(R.layout.expand_child_layout, null);
		View sureCannel = childView.findViewById(R.id.expand_commit_daily);
		Button sureCommit = (Button) childView.findViewById(R.id.sure_commit);
		Button cannelCommit = (Button) childView.findViewById(R.id.cannel_commit);
				
		sureCommit.setOnClickListener(commitClick);
		cannelCommit.setOnClickListener(cannelClick);
		sureCannel.setVisibility(View.GONE);
		todayWork = (EditText) childView.findViewById(R.id.child_todaywork);
		needCond = (EditText) childView.findViewById(R.id.child_needcond);
		EditText receiver = (EditText) childView
				.findViewById(R.id.child_receiver);
		if (pagerFlag == 1) {
			if ("1".equals(SendedDaily.expandDailyStaste)) {
				todayWork.setHint("�벹�������ձ���");
				receiver.setText(map.getReceiveNames());
				todayWork.setInputType(InputType.TYPE_CLASS_TEXT);
				todayWork.setSingleLine(false);
				needCond.setInputType(InputType.TYPE_CLASS_TEXT);
				needCond.setSingleLine(false);
				sureCannel.setVisibility(View.VISIBLE);
			} else {
				todayWork.setEnabled(false);
				needCond.setEnabled(false);
				receiver.setEnabled(false);
				todayWork.setText(map.getTodayJob());
//				System.out.println("��������"+map.getTodayJob());
				needCond.setText(map.getNeedCoordinate());
				receiver.setText(map.getReceiveNames());
			}
		} else if (pagerFlag == 2) {
			todayWork.setEnabled(false);
			needCond.setEnabled(false);
			receiver.setEnabled(false);
			todayWork.setText(map.getTodayJob());
			needCond.setText(map.getNeedCoordinate());
			receiver.setText(map.getWriterName());
			TextView writerLable = (TextView) childView
					.findViewById(R.id.child_receiver_lable);
			writerLable.setText("�����ˣ� ");
		}

		return childView;

	}

	@Override
	public boolean isChildSelectable(int groupPosition, int childPosition) {
		// TODO Auto-generated method stub
		return false;
	}

	/**
	 * �ύ������ձ�����Ӧ �ύ�ɹ�֮��Ҫ��һЩ���� ���޸�
	 * 
	 * @author ��1992
	 */
	private OnClickListener commitClick = new OnClickListener() {
		@Override
		public void onClick(View v) {
			String todayJobText = todayWork.getText().toString();
			String needCoordinateText = needCond.getText().toString();
			String changedDate = SendedDaily.expandDailyDate;
			String resultFalg = CommitDailyUtil.writeOtherDayDaily(
					todayJobText, needCoordinateText, changedDate);
			if ("0".equals(resultFalg)) {
				SendedDaily.handler.sendEmptyMessage(0);
				Toast.makeText(context, "��д�ɹ���", 200).show();
			} else {
				Toast.makeText(context, "�ύʧ�ܣ�", 200).show();
			}

		}
	};
	/**
	 * ��д�ձ���ť����Ӧ
	 * 
	 * @author yi1992
	 */
	private OnClickListener cannelClick = new OnClickListener() {

		@Override
		public void onClick(View v) {
			todayWork.setText("");
			needCond.setText("");

		}
	};

}