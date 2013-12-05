package com.firstgroup.iflytekstudaily.bean;

/**
 * 每日日报实体类
 * @author RunCross
 *
 */
public class Daily {

	private String objectID;
	private String sendTime;
	private String writerName;
	private String writerAccount;
	private String todayJob;
	private String tomorrowPlan;
	private String needCoordinate;
	private int isHadWrite;
	private String receiveAccount;
	private String dailyReportTime;
	private String receiveNames;
	private String receivePersonIDs;
	public String getObjectID() {
		return objectID;
	}
	public void setObjectID(String objectID) {
		this.objectID = objectID;
	}
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public String getWriterAccount() {
		return writerAccount;
	}
	public void setWriterAccount(String writerAccount) {
		this.writerAccount = writerAccount;
	}
	public String getTodayJob() {
		return todayJob;
	}
	public void setTodayJob(String todayJob) {
		this.todayJob = todayJob;
	}
	public String getTomorrowPlan() {
		return tomorrowPlan;
	}
	public void setTomorrowPlan(String tomorrowPlan) {
		this.tomorrowPlan = tomorrowPlan;
	}
	public String getNeedCoordinate() {
		return needCoordinate;
	}
	public void setNeedCoordinate(String needCoordinate) {
		this.needCoordinate = needCoordinate;
	}
	public int getIsHadWrite() {
		return isHadWrite;
	}
	public void setIsHadWrite(int isHadWrite) {
		this.isHadWrite = isHadWrite;
	}
	public String getReceiveAccount() {
		return receiveAccount;
	}
	public void setReceiveAccount(String receiveAccount) {
		this.receiveAccount = receiveAccount;
	}
	public String getDailyReportTime() {
		return dailyReportTime;
	}
	public void setDailyReportTime(String dailyReportTime) {
		this.dailyReportTime = dailyReportTime;
	}
	public String getReceiveNames() {
		return receiveNames;
	}
	public void setReceiveNames(String receiveNames) {
		this.receiveNames = receiveNames;
	}
	public String getReceivePersonIDs() {
		return receivePersonIDs;
	}
	public void setReceivePersonIDs(String receivePersonIDs) {
		this.receivePersonIDs = receivePersonIDs;
	}
	
}
