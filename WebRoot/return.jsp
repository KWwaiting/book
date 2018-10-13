<%@ include file="encoding.jsp" %>
<jsp:useBean id="userbook" class="entity.Userbook"></jsp:useBean>
<jsp:setProperty property="*" name="userbook"/>
<%
	if(userbook.deleteBook()){
		response.sendRedirect("Record.jsp");
	}
	else{
		out.print("Delete Failure,please check console output statement!");
	}
%>