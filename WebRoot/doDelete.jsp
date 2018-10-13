<%@ include file="encoding.jsp" %>
<jsp:useBean id="book" class="entity.Book"></jsp:useBean>
<jsp:setProperty property="*" name="book"/>
<%
	if(book.deleteBook()){
		response.sendRedirect("list.jsp");
	}
	else{
		out.print("Delete Failure,please check console output statement!");
	}
%>