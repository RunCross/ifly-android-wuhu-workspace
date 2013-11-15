package com.example.aidltest;

import android.os.Parcel;
import android.os.Parcelable;

public class Student implements Parcelable {

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

	
	public Student(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 * 序列化
	 */
	@Override
	public void writeToParcel(Parcel dest, int flags) {
		// TODO Auto-generated method stub
		dest.writeInt(id);
		dest.writeString(name);
	}

	/**
	 * 反序列化
	 */
	public final static Parcelable.Creator<Student> CREATOR=new Creator<Student>() {
		
		@Override
		public Student[] newArray(int size) {
			// TODO Auto-generated method stub
			return new Student[size];
		}
		
		@Override
		public Student createFromParcel(Parcel source) {
			// TODO Auto-generated method stub
			return new Student(source.readInt(),source.readString());
		}
	};
}
