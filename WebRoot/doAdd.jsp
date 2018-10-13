<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	request.setCharacterEncoding("gbk");
	response.setCharacterEncoding("gbk");
%>
<jsp:useBean id="book" class="entity.Book"></jsp:useBean>
<jsp:setProperty property="*" name="book"/>
<%
	
	System.out.println(request.getParameter("bname"));
	System.out.println(book.getBname());
	if(book.addBook()){
		response.sendRedirect("list.jsp");
	}
	else{
		out.print("Add Failure,please check console output statement!");
	}
%>