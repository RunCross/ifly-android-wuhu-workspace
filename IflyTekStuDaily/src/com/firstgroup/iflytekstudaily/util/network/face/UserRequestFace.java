package com.firstgroup.iflytekstudaily.util.network.face;

import java.util.Date;

import com.firstgroup.iflytekstudaily.bean.Student;
import com.firstgroup.iflytekstudaily.bean.User;
import com.firstgroup.iflytekstudaily.bean.UserClass;
/**
 * 用户相关接口
 * @author RunCross
 *
 */
public interface UserRequestFace {

	/**
	 * 获取用户信息
	 * @param username
	 * @param pwd
	 * @return
	 */
	public User GetUser(String username,String pwd);
	/**
	 *  获取用户班级
	 * @param usId
	 * @param token
	 * @return
	 */
	public UserClass GetClassByUserId(String usId,String token);
	/**
	 * 获取日报日期
	 * @return
	 */
	public Date GetDate();
	/**
	 * 通过用户id获取学生信息
	 * @param usId
	 * @param token
	 * @return
	 */
	public Student GetStudentInfoByUSId(String usId,String token);
	/**
	 * 用户登录
	 * @param username
	 * @param pwd
	 * @return
	 */
	public User UsLogin(String username,String pwd);	
	
}
