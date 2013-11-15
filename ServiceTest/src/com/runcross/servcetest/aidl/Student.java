package com.runcross.servcetest.aidl;

import java.util.ArrayList;

import android.os.Parcel;
import android.os.Parcelable;

public class Student implements Parcelable {

	private int id;
	private String name;
	private School sch;
	private ArrayList<School> schools;

	
	public School getSch() {
		return sch;
	}

	public void setSch(School sch) {
		this.sch = sch;
	}

	public ArrayList<School> getSchools() {
		return schools;
	}

	public void setSchools(ArrayList<School> schools) {
		this.schools = schools;
	}

	public static Parcelable.Creator<Student> getCreator() {
		return CREATOR;
	}

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
		return 0;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		dest.writeInt(id);
		dest.writeString(name);
		dest.writeParcelable(sch, flags);
		dest.writeList(schools);
	}

	// ÷ÿ–¥Creator
	public static final Parcelable.Creator<Student> CREATOR = new Parcelable.Creator<Student>() {

		@Override
		public Student createFromParcel(Parcel source) {
			Student stu = new Student();
			stu.id = source.readInt();
			stu.name = source.readString();
			stu.sch = (School)source.readParcelable(School.class.getClassLoader());
//			stu.sch = source.readValue();
			stu.schools = source.readArrayList(School.class.getClassLoader());
			return stu;
		}

		@Override
		public Student[] newArray(int size) {
			return new Student[size];
		}
	};
}
