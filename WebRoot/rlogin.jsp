<%@ include file="encoding.jsp"%>
<jsp:useBean id="readers" class="entity.Readers"></jsp:useBean>
<jsp:setProperty property="*" name="readers" />
<%
	String code = request.getParameter("code");
	String rand = (String) session.getAttribute("rand");
	if (code.equals(rand)) {
		if (readers.rheckLogin()) {
			response.sendRedirect("rlist.jsp");
			
		} 
		else {
			response.sendRedirect("login.jsp");
		}
	} 
	else {
		response.sendRedirect("login.jsp");
	}
%>
