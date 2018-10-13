package entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.JdbcUtil;

public class Readers {
	private String userName;
	private String password1;
	private String answer;
	private String email;
	private int phone;
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPasswod1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}


	public boolean addreaders(){
		String sql = "insert into readers values('"+userName+"','"+password1+"','"+answer+"','"+email+"',"+phone+")" ;
		return JdbcUtil.myUpdate(sql);
	}
	public ResultSet selectAllUser(){
		String sql = "select * from Readers" ;
		return JdbcUtil.myQuery(sql);
	}
	public boolean deleteReader(){
		String sql = "delete from readers where email='"+email+"'" ;
		return JdbcUtil.myUpdate(sql);
	}

public boolean rheckLogin() throws SQLException{
	boolean flag = false;
	String sql = "select * from readers where userName='"+userName+"' and password1='"+password1+"'";
	System.out.println(sql);
	ResultSet rs = JdbcUtil.myQuery(sql);
	if(rs.next()){
		flag = true;
	}
	return flag;
   }
}