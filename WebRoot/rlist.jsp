<%@ page language="java" import="java.util.*,java.sql.*,com.*" pageEncoding="gbk" %>
<%@ include file ="encoding.jsp" %>
<jsp:useBean id="book" class="entity.Book"></jsp:useBean>
<jsp:setProperty property="*" name="book" />
  <meta charset="gbk" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no,minimun-scale=1.0,maximun-scale=1.0">

		<link href="bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="bootstrap/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
		

		<script src="bootstrap/jquery-2.1.4/jquery.min.js" type="text/javascript"></script>
		<script src="bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
 <style>
 
  table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:15px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
 table.gridtable {
	font-family: verdana,arial,sans-serif;
	font-size:15px;
	color:#333333;
	border-width: 1px;
	border-color: #666666;
	border-collapse: collapse;
}
table.gridtable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #dedede;
	text-align:center;
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	text-align:center;
}
.jy{
    font-size:20px;
    margin:5px 20px;
}
.glyphicon{
    font-size:20px;
    color:#000;
    float:right;
    margin:15px 20px;
}
.body{
    background: url(img/bj.png);
}
 </style>
 <body class="body">
 <div class="top">
   <a href="Record.jsp" class="jy">���ļ�¼</a>
   <a href="login.jsp"><span class="glyphicon glyphicon-user tub"></span></a>
 </div>
<div  align="center">
<font size="5" color="black">ͼ����Ϣ�б�</font><br><br>
<table class="gridtable" >
  <tr>
    <th width="90px">���</th>
    <th width="90px">����</th>
    <th width="90px">����</th>
    <th width="90px">������</th>
    <th width="90px">ISBN</th>
    <th width="90px">�۸�</th>
    <th width="90px">����</th>
  </tr>
<%
	ResultSet rs = book.selectAllBook();
	int i=1;
	while (rs.next()) {
	if(i%2==0){
%>
  <tr>
    <td><%=i++ %></td>
    <td><%=rs.getString(1) %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getDouble(5) %></td>
    <td><a href="check.jsp?isbn=<%=rs.getString(4)%>">�����鼮</a></td>
  </tr>
 <%
 }
 else{
%>
 
  <tr>
    <td><%=i++ %></td>
    <td><%=rs.getString(1) %></td>
    <td><%=rs.getString(2) %></td>
    <td><%=rs.getString(3) %></td>
    <td><%=rs.getString(4) %></td>
    <td><%=rs.getDouble(5) %></td>
    <td><a href="check.jsp?isbn=<%=rs.getString(4)%>">�����鼮</a></td>
  </tr>
<% 
  }
}
%>
  </table>
   </div>
</body>