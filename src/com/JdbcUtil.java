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
				System.out.println("����ʧ�ܣ������û����������Ƿ���ȷ������MySQL���ݿ��Ƿ��Ѿ�����");
			}
		} 
		catch (ClassNotFoundException e) {
			System.out.println("��������δ�ҵ��������Ƿ���������copy��libĿ¼��");
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
			System.out.println("sql�������쳣���������sql��䣺"+sql);
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
			System.out.println("sql�������쳣���������sql��䣺"+sql);
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
			System.out.println("�ر�ʧ�ܣ�");
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
