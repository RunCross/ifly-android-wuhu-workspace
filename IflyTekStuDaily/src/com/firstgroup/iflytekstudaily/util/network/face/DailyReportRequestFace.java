package com.firstgroup.iflytekstudaily.util.network.face;

import com.firstgroup.iflytekstudaily.bean.DailyReport;
import com.firstgroup.iflytekstudaily.bean.DailyReportReplises;

/**
 * 周报相关接口
 * @author RunCross
 *
 */
public interface DailyReportRequestFace {
	//通过日报id获取日报
	public DailyReport GetDailyReportByReportId(int dailyReportId,String token);
	//通过日报id获取日报回复
	public DailyReportReplises GetDailyReportRepliesByDailyReportId(int dailyReportId,String token);
	//通过用户id获取日报集合
	public DailyReport GetDailyReportsByUSId(String userId,int count,String token);
	//通过用户id获取当天日报
	public DailyReport GetToDayDailyReportsByUSId(String userId,String token);
	//更新日报
	public boolean UpdateDailyReports(int id,String studtNotes,String suggestContent,boolean isWeekReport,boolean isNeedReply,String token);
	//更新学生照片
	public boolean UpdateStudentPhoto(String studentPhoto);
	//写周报
	public String WriteDailyReport();
	//写周报
	public String WriteDailyReports();
		
}
