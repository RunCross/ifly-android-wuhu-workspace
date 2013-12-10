package com.firstgroup.iflytekdaily.work;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.firstgroup.iflytekdaily.R;
import com.firstgroup.iflytekdaily.bean.Daily;
import com.firstgroup.iflytekdaily.main.DailyWriteActivity;
import com.firstgroup.iflytekdaily.util.HttpClientUtil;
import com.firstgroup.iflytekdaily.util.Session;
import com.firstgroup.iflytekdaily.work.CalendarView.OnItemClickListener;
import com.iflytek.speech.RecognizerResult;
import com.iflytek.speech.SpeechError;
import com.iflytek.speech.SpeechConfig.RATE;
import com.iflytek.ui.RecognizerDialog;
import com.iflytek.ui.RecognizerDialogListener;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
/**
 * �������Fragment������һ�������ؼ�
 * @author Administrator
 *
 */
public class DailyMainFragment extends Fragment {
	private TextView linkText;
	private TextView dateText;// ������ʾ�ı�
	private ImageButton nextMouthBtn;// �¸���
	private ImageButton lastMouthBtn;// �ϸ���
	private CalendarView calendarView;

	private TextView welcomeView;
	private TextView showTodayDate;

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		View view = inflater.inflate(R.layout.dailymainfragment, null);
		linkText = (TextView) view.findViewById(R.id.linkText);
		dateText = (TextView) view.findViewById(R.id.dateText);
		Calendar calendar = Calendar.getInstance();
		welcomeView = (TextView) view.findViewById(R.id.userNameText);
		showTodayDate = (TextView) view.findViewById(R.id.show_today_date);
		int month = calendar.get(calendar.MONTH)+1;
		showTodayDate.setText(calendar.get(calendar.YEAR)+"/"+month+"/"+calendar.get(calendar.DAY_OF_MONTH));
		welcomeView.setText("��ӭ���� "+(String)Session.get("Name"));
		nextMouthBtn = (ImageButton) view.findViewById(R.id.nextMouthBtn);
		lastMouthBtn = (ImageButton) view.findViewById(R.id.lastMouthBtn);
	
		Calendar today=Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String da = dateFormat.format(today.getTime());
		dateText.setText(da);
		if(isHadWriteToday()){
			linkText.setText(getClickableSpan1());
		}else{
			linkText.setText(getClickableSpan());
		}
		linkText.setMovementMethod(LinkMovementMethod.getInstance());
		calendarView = (CalendarView) view.findViewById(R.id.myGridView);
		nextMouthBtn.setOnClickListener(clickListener);
		lastMouthBtn.setOnClickListener(clickListener);
		calendarView.setOnItemClickListener(new CalendarItemClickListener());		
		return view;
	}

	// ��ť�������
	private OnClickListener clickListener = new OnClickListener() {
		@Override
		public void onClick(View v) {
			switch (v.getId()) {
			case R.id.nextMouthBtn:
				calendarView.clickRightMonth();
				String dt = calendarView.getYearAndmonth();
				dateText.setText(dt + "-01");
				break;
			case R.id.lastMouthBtn:
				calendarView.clickLeftMonth();
				String dt2 = calendarView.getYearAndmonth();
				dateText.setText(dt2 + "-01");
				break;
			default:
				break;
			}

		}
	};;

	/**
	 *  ���ó������ı�,��ʾ��д�ձ�
	 * 
	 */
	private SpannableString getClickableSpan() {

		OnClickListener listener = new OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent intent=getWriteIntent(1,"");
		    	startActivityForResult(intent, 0);
			}
		};
		SpannableString spanableInfo = new SpannableString("����컹δ���ձ�Ŷ�����������д");
		int start = 12;
		int end = 14;
		spanableInfo.setSpan(new Clickable(listener), start, end,
				Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return spanableInfo;
	}
    
	/**
	 *  ���ó������ı�,���޸��ձ�
	 * 
	 */
	private SpannableString getClickableSpan1() {

		OnClickListener listener = new OnClickListener() {

			@Override
			public void onClick(View v) {
				Intent intent=getWriteIntent(1,"");		
				
	
		    	startActivityForResult(intent, 0);
			}
		};
		SpannableString spanableInfo = new SpannableString("���������д�ձ�������˴��޸�");
		int start = 13;
		int end = 15;
		spanableInfo.setSpan(new Clickable(listener), start, end,
				Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
		return spanableInfo;
	}
	
	
	
	/**
	 * �������ڵ����¼�
	 * 
	 * @author Administrator
	 * 
	 */
	class CalendarItemClickListener implements OnItemClickListener {
		@Override
		public void OnItemClick(Date date) {
			// ת��Date���ڸ�ʽΪ��-��-��
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String da = dateFormat.format(date);
			dateText.setText(da);
			Map<String, Integer> calList = (Map<String, Integer>) Session
	                  .get("calList");
				Calendar calendar = Calendar.getInstance();
				String todayStr = calendar.get(Calendar.YEAR) + "-"
						+ (calendar.get(Calendar.MONTH) + 1) + "-"
						+ calendar.get(Calendar.DAY_OF_MONTH);

				calendar.setTime(date);
				String dateStr;//�����������
				if((calendar.get(Calendar.DAY_OF_MONTH))<10){
					dateStr = calendar.get(Calendar.YEAR) + "-"
							+ (calendar.get(Calendar.MONTH) + 1) + "-"
							+"0"+ calendar.get(Calendar.DAY_OF_MONTH);
				}else{
				dateStr = calendar.get(Calendar.YEAR) + "-"
						+ (calendar.get(Calendar.MONTH) + 1) + "-"
						+ calendar.get(Calendar.DAY_OF_MONTH);
				}
 
				//�ж��Ƿ�д�����ձ�
			    if(dateStr.equals(todayStr)){
			    	
			    	Intent intent=getWriteIntent(1,"");
			    	startActivityForResult(intent, 0);
			    }
			    else if (calList.containsKey(dateStr) && calList.get(dateStr) == 1) {
			    	Intent intent=new Intent(getActivity(),
							DailyWriteActivity.class);
			    	intent.putExtra("IsHadWrite", "1");
			    	intent.putExtra("Date",dateStr);
			    	startActivityForResult(intent, 0);
					
				}else if(calList.containsKey(dateStr)){
					
					Intent intent=getWriteIntent(2,dateStr);
		            
			    	intent.putExtra("Date",dateStr);
			    	startActivityForResult(intent, 0);
				}
		}
	}

	

	/**
	 * �������ı����������
	 * 
	 */
	class Clickable extends ClickableSpan implements OnClickListener {
		private final View.OnClickListener mListener;

		public Clickable(View.OnClickListener l) {
			mListener = l;
		}

		@Override
		public void onClick(View v) {
			mListener.onClick(v);
		}
	}

	/**
	 * ��ý����ձ���Ϣ
	 */
	private Map<String, String> getTodayDailyInfo() {
		String username = (String) Session.get("username");
		String key = (String) Session.get("key");
		Map<String, String> dailyInfoMap = null;
		String message = "?funID=" + 4 + "&username=" + username + "&key="+ key;
		try {
			String result=HttpClientUtil.getLoginUser(message);

			dailyInfoMap = HttpClientUtil.dairyTurnToJSon(result);
			 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dailyInfoMap;

	}
	
	/**
	 * ���ĳһ�챨��Ϣ
	 */
	private Daily getOtherDailyInfo(String dateStr) {
		String username = (String) Session.get("username");
		String key = (String) Session.get("key");
		Daily daily=new Daily();
		String message = "?funID=" + 5 + "&username=" + username +"&startDate="+dateStr+"&endDate="+dateStr+"&count="+1+"&key="+ key;
		
		try {
			List<Daily> list;
			String result=HttpClientUtil.getLoginUser(message);
			list = HttpClientUtil.dairyReportSetTurnToJSon(result);
			if(list.size()>0){
				daily=list.get(0);
				
			}
			 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return daily;

	}
	
	/**
	 * ��д�÷������Ի�ȡָ����Activity�ķ��ؽ��
	 */
	@Override
	public void onActivityResult(int requestCode, int resultCode, Intent data) {
		if(requestCode==0&&requestCode==0){
			int code=data.getIntExtra("code",1);
			if(code==0){
			linkText.setText(getClickableSpan1());
			linkText.setMovementMethod(LinkMovementMethod.getInstance());
			calendarView.refreshCalenderView();
		
			}
		}
	}
     
	/**
	 * �жϽ����Ƿ�д���ձ�
	 * @return
	 */
	private boolean isHadWriteToday(){
		
		Map<String, String> dailyInfoMap=getTodayDailyInfo();
  
		return !dailyInfoMap.isEmpty();

	}
	
	/**
	 * ��ȡ��д�����ձ���Intent
	 * @return intent
	 */
	private Intent getWriteIntent(int code,String dateStr){
		
		Calendar calendar = Calendar.getInstance();
		String todayStr;
		if(calendar.get(Calendar.DAY_OF_MONTH)<10){
			todayStr = calendar.get(Calendar.YEAR) + "-"
					+ (calendar.get(Calendar.MONTH) + 1) + "-"
					+"0" +calendar.get(Calendar.DAY_OF_MONTH);
		}else{
		todayStr = calendar.get(Calendar.YEAR) + "-"
				+ (calendar.get(Calendar.MONTH) + 1) + "-"
				+ calendar.get(Calendar.DAY_OF_MONTH);
		}
		Map<String, String> dailyInfoMap = null;
		Daily daily = null;
		Intent intent=new Intent(getActivity(),
				DailyWriteActivity.class);
		if(code==1){
		dailyInfoMap=getTodayDailyInfo();
		if(!dailyInfoMap.isEmpty()){
			
	    	intent.putExtra("IsHadWrite", String.valueOf(dailyInfoMap.get("IsHadWrite")));
	    	intent.putExtra("TodayJob", dailyInfoMap.get("TodayJob"));
	    	intent.putExtra("NeedCoordinate", dailyInfoMap.get("NeedCoordinate"));
	    	intent.putExtra("Date", todayStr);
	    	}else{
	    		intent.putExtra("IsHadWrite", "1");
	    		intent.putExtra("Date", todayStr);
	    	}
		}else if(code==2){
			daily=getOtherDailyInfo(dateStr);
			if(daily!=null){
				
		    	intent.putExtra("IsHadWrite", String.valueOf(daily.getIsHadWrite()));
		    	intent.putExtra("TodayJob", daily.getTodayJob());
		    	intent.putExtra("NeedCoordinate", daily.getNeedCoordinate());
		    	intent.putExtra("Date", dateStr);
		    	}else{
		    		intent.putExtra("IsHadWrite", "1");
		    		intent.putExtra("Date", dateStr);
		    	}
		}
    	

		return intent;
		
	}
}