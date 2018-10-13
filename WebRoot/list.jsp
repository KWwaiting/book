<%@ page language="java" import="java.util.*,java.sql.*,com.*" pageEncoding="gbk" %>
<%@ include file ="encoding.jsp" %>
<jsp:useBean id="book" class="entity.Book"></jsp:useBean>
<jsp:setProperty property="*" name="book" />
 <style>
   
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
}
table.gridtable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #666666;
	background-color: #ffffff;
}

 
   .btn{
   color:#fff;
   background-color: #46A3FF;
   cursor:pointer;
  }
  .btn:hover{
   color: #F4511E;
   background-color: #FFFFFF;
  }
  body{
     background: url(img/bj.png);
  }
 </style>
 <body class="body">
<div  align="center" id="d1">
<font size="5" color="black">图书信息列表</font><br><br>
<table class="gridtable" >
  <tr>
    <th width="100px">序号</th>
    <th width="100px">书名</th>
    <th width="100px">作者</th>
    <th width="100px">出版社</th>
    <th width="100px">ISBN</th>
    <th width="100px">价格</th>
    <th width="100px">操作</th>
  </tr>
<%
	ResultSet rs = book.selectAllBook();
	int i=1;
	while (rs.next()) {
	if(i%2==0){
%>
  <tr>
    <td align="center"><%=i++ %></td>
    <td align="center"><%=rs.getString(1) %></td>
    <td align="center"><%=rs.getString(2) %></td>
    <td align="center"><%=rs.getString(3) %></td>
    <td align="center"><%=rs.getString(4) %></td>
    <td align="center"><%=rs.getDouble(5) %></td>
    <td align="center"> <a href="update.jsp?isbn=<%=rs.getString(4)%>"><input type="button" class="btn" value="修改"></a>  <a href="doDelete.jsp?isbn=<%=rs.getString(4)%>"><input type="button" class="btn" value="删除"></a></td>
  </tr>
 <%
 }
 else{
%>
 
  <tr>
    <td align="center" bgColor="#c2d6f8"><%=i++ %></td>
    <td align="center" bgColor="#c2d6f8"><%=rs.getString(1) %></td>
    <td align="center" bgColor="#c2d6f8"><%=rs.getString(2) %></td>
    <td align="center" bgColor="#c2d6f8"><%=rs.getString(3) %></td>
    <td align="center" bgColor="#c2d6f8"><%=rs.getString(4) %></td>
    <td align="center" bgColor="#c2d6f8"><%=rs.getDouble(5) %></td>
    <td align="center" bgColor="#c2d6f8"><a href="update.jsp?isbn=<%=rs.getString(4)%>"><input type="button" class="btn" value="修改"></a>  <a href="doDelete.jsp?isbn=<%=rs.getString(4)%>"><input type="button" class="btn" value="删除"></a></td>
  </tr>
<% 
  }
}
%>
</table>
</div>
</body>