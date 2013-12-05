package com.firstgroup.iflytekstudaily.util.network.face;

import java.util.Date;

import com.firstgroup.iflytekstudaily.bean.Student;
import com.firstgroup.iflytekstudaily.bean.User;
import com.firstgroup.iflytekstudaily.bean.UserClass;
/**
 * �û���ؽӿ�
 * @author RunCross
 *
 */
public interface UserRequestFace {

	/**
	 * ��ȡ�û���Ϣ
	 * @param username
	 * @param pwd
	 * @return
	 */
	public User GetUser(String username,String pwd);
	/**
	 *  ��ȡ�û��༶
	 * @param usId
	 * @param token
	 * @return
	 */
	public UserClass GetClassByUserId(String usId,String token);
	/**
	 * ��ȡ�ձ�����
	 * @return
	 */
	public Date GetDate();
	/**
	 * ͨ���û�id��ȡѧ����Ϣ
	 * @param usId
	 * @param token
	 * @return
	 */
	public Student GetStudentInfoByUSId(String usId,String token);
	/**
	 * �û���¼
	 * @param username
	 * @param pwd
	 * @return
	 */
	public User UsLogin(String username,String pwd);	
	
}
