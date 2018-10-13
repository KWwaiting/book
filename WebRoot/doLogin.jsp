<%@ include file="encoding.jsp"%>
<jsp:useBean id="user" class="entity.User"></jsp:useBean>
<jsp:setProperty property="*" name="user" />
<%
	String code = request.getParameter("code");
	String rand = (String) session.getAttribute("rand");
	if (code.equals(rand)) {
		if (user.checkLogin()) {
			response.sendRedirect("homepage.html");
		} 
		else {
			response.sendRedirect("login.jsp");
		}
	} 
	else {
		response.sendRedirect("login.jsp");
	}
%>