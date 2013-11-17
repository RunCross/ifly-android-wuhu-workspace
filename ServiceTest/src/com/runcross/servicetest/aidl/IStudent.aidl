package com.runcross.servicetest.aidl;
import com.runcross.servicetest.aidl.Student;
import com.runcross.servicetest.aidl.School;
interface IStudent{
 int getCount();
 Student getStudent();
	Student getStudent1( in School test);
}