package com.runcross.servcetest.aidl;

import android.os.Parcel;
import android.os.Parcelable;

public class School implements Parcelable{

	private int id;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeInt(id);
		dest.writeString(name);
	}
	public static final Parcelable.Creator<School> CREATOR = new Creator<School>() {
		
		@Override
		public School[] newArray(int size) {
			// TODO Auto-generated method stub
			return null;
		}
		
		@Override
		public School createFromParcel(Parcel source) {
			School sch = new School();
			sch.id = source.readInt();
			sch.name = source.readString();
			return sch;
		}
	};
}
