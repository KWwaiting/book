package entity;

import java.sql.ResultSet;

import com.JdbcUtil;

public class Userbook {
	private String bname;
	private String author;
	private String publisher;
	private String isbn;
	private double price;
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public boolean addBook(){
		String sql = "insert into Userbook values('"+bname+"','"+author+"','"+publisher+"','"+isbn+"',"+price+")" ;
		return JdbcUtil.myUpdate(sql);
	}
	
	public ResultSet selectAllBook(){
		String sql = "select * from Userbook" ;
		return JdbcUtil.myQuery(sql);
	}
	public boolean deleteBook(){
		String sql = "delete from Userbook where isbn='"+isbn+"'" ;
		return JdbcUtil.myUpdate(sql);
	}
}
