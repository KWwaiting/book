package entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.JdbcUtil;

public class User {
	private String uname;
	private String password;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	//��ɾ�Ĳ��user
	
	//��¼��
	public boolean checkLogin() throws SQLException{
		boolean flag = false;
		String sql = "select * from user where uname='"+uname+"' and password='"+password+"'";
		System.out.println(sql);
		ResultSet rs = JdbcUtil.myQuery(sql);
		if(rs.next()){
			flag = true;
		}
		return flag;
	}
}
