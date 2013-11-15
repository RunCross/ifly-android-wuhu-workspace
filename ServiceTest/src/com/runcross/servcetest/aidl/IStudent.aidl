package com.runcross.servcetest.aidl;
import com.runcross.servcetest.aidl.Student;
import com.runcross.servcetest.aidl.School;
interface IStudent{
 int getCount();
 Student getStudent();
	Student getStudent1( in School test);
}