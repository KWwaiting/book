<%@ include file="encoding.jsp" %>
<jsp:useBean id="readers" class="entity.Readers"></jsp:useBean>
<jsp:setProperty property="*" name="readers"/>
<%
	if(readers.deleteReader()){
		response.sendRedirect("userinfo.jsp");
	}
	else{
		out.print("Delete Failure,please check console output statement!");
	}
%>