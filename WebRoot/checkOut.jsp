<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	request.setCharacterEncoding("gbk");
	response.setCharacterEncoding("gbk");
%>
<jsp:useBean id="userbook" class="entity.Userbook"></jsp:useBean>
<jsp:setProperty property="*" name="userbook"/>
<%
	

	if(userbook.addBook()){
		response.sendRedirect("Record.jsp");
	}
	else{
		out.print("Add Failure,please check console output statement!");
	}
%>