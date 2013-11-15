package com.example.aidltest;
import com.example.aidltest.Student;
import com.example.aidltest.SchoolClass;
interface IStudent{
	int getCount();
	Student getStudent();
	Student getStudent1( in SchoolClass test);
}