<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
	request.setCharacterEncoding("gbk");
	response.setCharacterEncoding("gbk");
%>
<jsp:useBean id="readers" class="entity.Readers"></jsp:useBean>
<jsp:setProperty property="*" name="readers"/>
<%


		if (readers.addreaders()) {
			response.sendRedirect("login.jsp");	
		} 
		else {
			response.sendRedirect("login.jsp");
		}
	
%>