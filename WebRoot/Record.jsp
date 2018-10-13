<%@ page language="java" import="java.util.*,java.sql.*,com.*" pageEncoding="gbk" %>
<%@ include file ="encoding.jsp" %>
<jsp:useBean id="userbook" class="entity.Userbook"></jsp:useBean>
<jsp:setProperty property="*" name="userbook" />
 
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

 
 .btn{
   color:#337abb;
   cursor:pointer;
   font-size:13px;
  }
  .btn:hover{
   color: #F4511E;
  }
  body{
    background: url(img/bj.png);
  }
  .glyphicon{
    font-size:20px;
    margin:20px 20px;
    color:#000;
  }
 </style>
 <body>
  <div>
    <a href="rlist.jsp"><span class="glyphicon glyphicon-home "></span></a>
  </div>
<div  align="center" id="d1">
<font size="5" color="black">借阅记录</font><br><br>
<table class="gridtable" >
  <tr>
    <th width="90px">序号</th>
    <th width="90px">书名</th>
    <th width="90px">作者</th>
    <th width="90px">出版社</th>
    <th width="90px">ISBN</th>
    <th width="90px">价格</th>
    <th width="90px">操作</th>
  </tr>
<%
	ResultSet rs = userbook.selectAllBook();
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
    <td><a href="return.jsp?isbn=<%=rs.getString(4)%>"><input type="button" class="btn" value="归还书籍"></a></td>
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
    <td><a href="return.jsp?isbn=<%=rs.getString(4)%>"><input type="button" class="btn" value="归还书籍"></a></td>
  </tr>
<% 
  }
}
%>
</table>
</div>
</body>
