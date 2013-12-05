package com.firstgroup.iflytekstudaily.util.network.face;

import com.firstgroup.iflytekstudaily.bean.DailyReport;
import com.firstgroup.iflytekstudaily.bean.DailyReportReplises;

/**
 * �ܱ���ؽӿ�
 * @author RunCross
 *
 */
public interface DailyReportRequestFace {
	//ͨ���ձ�id��ȡ�ձ�
	public DailyReport GetDailyReportByReportId(int dailyReportId,String token);
	//ͨ���ձ�id��ȡ�ձ��ظ�
	public DailyReportReplises GetDailyReportRepliesByDailyReportId(int dailyReportId,String token);
	//ͨ���û�id��ȡ�ձ�����
	public DailyReport GetDailyReportsByUSId(String userId,int count,String token);
	//ͨ���û�id��ȡ�����ձ�
	public DailyReport GetToDayDailyReportsByUSId(String userId,String token);
	//�����ձ�
	public boolean UpdateDailyReports(int id,String studtNotes,String suggestContent,boolean isWeekReport,boolean isNeedReply,String token);
	//����ѧ����Ƭ
	public boolean UpdateStudentPhoto(String studentPhoto);
	//д�ܱ�
	public String WriteDailyReport();
	//д�ܱ�
	public String WriteDailyReports();
		
}
