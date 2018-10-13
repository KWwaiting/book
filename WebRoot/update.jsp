<%@ page language="java" import="java.util.*,java.sql.*,com.*" pageEncoding="gbk" %>
<%@ include file ="encoding.jsp" %>
<jsp:useBean id="book" class="entity.Book"></jsp:useBean>
<jsp:setProperty property="*" name="book" />
<%
	ResultSet rs = book.selectbyIsbn();
	rs.next();
%>
<html>
<head>
    <style>
    .body{
   background: url(img/bj.png);
  }
    .container{
   margin:100px 0 0 350px;
   border:1px solid #ccc;
   border-top: 4px solid #ccc;
   box-shadow: 2px 4px 6px #000;
   border-radius: 5px;
   width:500px;
   height:450px;
   background-color:#fff;
   
   }
   #top{
    text-align:center;
    
   }
   #txt{
    margin:0 0 0 130px;
   }
   .a1{
   font-size:18px;
   letter-spacing:6px;
   }
   .a2{
   font-size:18px;
   letter-spacing:15px;
   }
   .a3{
   font-size:18px;
   letter-spacing:15px;
   }
   .a4{
   font-size:18px;
   letter-spacing:4px;
   }
   .a5{
   font-size:18px;
   letter-spacing:15px;
   }
    .inputs{
     margin:0 0 0 0px;
     border-radius: 3px;
     width:47%;
     height:6%;
    }
    .inputs:hover{
      border:1px solid red;
    }
   .btn{
    margin: 0 0 0 4px;
    font-size:17px;
    color:#000;
    border:1px solid #ccc;
    background-color: #ccc;
    cursor:pointer;
    width:65%;
  }
  .btn:hover{
    color: #F4511E;
    background-color: #FFFFFF;
  }
   </style>
</head>
<body class="body">
 <div class="container">
  <h2 id="top">修改图书</h2>
	<form action="doUpdate.jsp" method="post" id="txt"> 
	  <div>
		 <a class="a1">ISBN<input type="text" name="isbn" class="inputs"  readonly="readonly" value="<%=rs.getString(4)%>"/></a> 
		 </div><br> 
	  <div> 
		<a class="a2">书名<input type="text" name="bname"  class="inputs" value="<%=rs.getString(1) %>"/></a>
		 </div><br>
	  <div>
		<a class="a3"> 作者<input type="text" name="author" class="inputs" value="<%=rs.getString(2) %>"/></a>
		 </div><br>
	  <div>
		 <a class="a4">出版社<input type="text" name="publisher"  class="inputs" value="<%=rs.getString(3) %>"/></a>
		 </div><br>
	  <div>
		<a class="a5">单价<input type="text" name="price" class="inputs"  value="<%=rs.getDouble(5) %>"/></a>
		 </div><br>
		
		<input type="submit" class="btn" value="保存">
	</form>
  </div>
</body>
</html>