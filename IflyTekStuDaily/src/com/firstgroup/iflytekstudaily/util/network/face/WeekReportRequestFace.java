package com.firstgroup.iflytekstudaily.util.network.face;

import com.firstgroup.iflytekstudaily.bean.DailyReport;

public interface WeekReportRequestFace {
	public String GetToWeekReportsByUSId();
	public DailyReport GetWeekReportByReportId();
	public DailyReport GetWeekReportsByUSId();	
	public boolean WriteWeekReport();
}
