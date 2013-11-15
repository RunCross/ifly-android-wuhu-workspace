package com.example.aidltest;

import android.os.Parcel;
import android.os.Parcelable;

public class SchoolClass implements Parcelable {

	private Student student1;
	
	public Student getStudent1() {
		return student1;
	}

	public void setStudent1(Student student1) {
		this.student1 = student1;
	}

	
	public SchoolClass(Student student1) {
		super();
		this.student1 = student1;
	}

	@Override
	public int describeContents() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void writeToParcel(Parcel dest, int flags) {
		// TODO Auto-generated method stub

		dest.writeParcelable(student1, PARCELABLE_WRITE_RETURN_VALUE);
	}

	public final static Parcelable.Creator<SchoolClass> CREATOR=new Creator<SchoolClass>() {
		
		@Override
		public SchoolClass[] newArray(int size) {
			// TODO Auto-generated method stub
			return new SchoolClass[size];
		}
		
		@Override
		public SchoolClass createFromParcel(Parcel source) {
			// TODO Auto-generated method stub
			return new SchoolClass(new Student(source.readInt(),source.readString()));
		}
	};
}
