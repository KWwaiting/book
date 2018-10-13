package entity;

import java.sql.ResultSet;

import com.JdbcUtil;

public class Book {
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
	//add
	public boolean addBook(){
		String sql = "insert into book values('"+bname+"','"+author+"','"+publisher+"','"+isbn+"',"+price+")" ;
		return JdbcUtil.myUpdate(sql);
	}
	
	//delete
	public boolean deleteBook(){
		String sql = "delete from book where isbn='"+isbn+"'" ;
		return JdbcUtil.myUpdate(sql);
	}
	
	//update
	public boolean updateBook(){
		String sql = "update book set bname='"+bname+"',author='"+author+"',publisher='"+publisher+"' ,price="+price+" where isbn='"+isbn+"'" ;
		return JdbcUtil.myUpdate(sql);
	}
	// select all
	public ResultSet selectAllBook(){
		String sql = "select * from book" ;
		return JdbcUtil.myQuery(sql);
	}
	// select by Isbn
	public ResultSet selectbyIsbn(){
		String sql = "select * from book where isbn='"+isbn+"'" ;
		return JdbcUtil.myQuery(sql);
	}
	// select by condition
	public ResultSet selectbyBname(){
		String sql = "SELECT * FROM book WHERE bname LIKE '%"+bname+"%'" ;
		return JdbcUtil.myQuery(sql);
	}
    //.......
	
}

