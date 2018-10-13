package com;
import java.sql.*;
public class JdbcUtil {
	private static Connection conn =null;
	private static Statement st =null;
	private static ResultSet rs =null;
	public static Connection getConn(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			try {
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
			} 
			catch (SQLException e) {
				System.out.println("连接失败，请检查用户名或密码是否正确，或是MySQL数据库是否已经启动");
			}
		} 
		catch (ClassNotFoundException e) {
			System.out.println("驱动程序未找到，请检查是否将驱动程序copy到lib目录！");
		}
		return conn;
	}
	public static Statement getSt(){
		try {
			if(getConn()!=null){
				st = conn.createStatement();
			}
		} 
		catch (SQLException e) {
		}
		return st;
	}
	public static boolean myUpdate(String sql){
		//System.out.println(sql);
		boolean flag = false;
		try {
			if(getSt()!=null){
				st.executeUpdate(sql);
				flag = true;
				close();
			}
		} 
		catch (SQLException e) {
			System.out.println("sql语句更新异常，请检查你的sql语句："+sql);
		}
		return flag;
	}
	
	public static ResultSet myQuery(String sql){
		try {
			if(getSt()!=null){
				rs = st.executeQuery(sql);
			}
		} 
		catch (SQLException e) {
			System.out.println("sql语句更新异常，请检查你的sql语句："+sql);
		}
		return rs;
	}
	
	public static void close(){
		try {
			if(rs!=null){
				rs.close();
			}
			if(st!=null){
				st.close();
			}
			if(conn!=null){
				conn.close();
			} 
			
		}
		catch (SQLException e) {
			System.out.println("关闭失败！");
		}
	}
	public static void main(String[] args) throws SQLException {
		st = getSt();
		ResultSet rs = st.executeQuery("select * from book");
		while(rs.next()){
			System.out.print(rs.getString(1)+" ");
			System.out.print(rs.getString(2)+" ");
			System.out.print(rs.getString("publisher")+" ");
			System.out.print(rs.getDouble(4)+" ");
			System.out.println(rs.getString(5));
		}
	}
}
