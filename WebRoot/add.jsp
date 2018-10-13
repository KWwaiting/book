<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=gbk"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
   letter-spacing:15px;
   }
   .a2{
   font-size:18px;
   letter-spacing:15px;
   }
   .a3{
   font-size:18px;
   letter-spacing:4px;
   }
   .a4{
   font-size:18px;
   letter-spacing:6px;
   }
   .a5{
   font-size:18px;
   letter-spacing:8px;
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
  <h2 id="top">添加图书</h2>
	<form action="doAdd.jsp" method="post" id="txt"> 
	<div>
		<a class="a1">书名<input type="text" class="inputs" name="bname" /> </a>
		</div><br>
	<div>
		<a class="a2">作者<input type="text" class="inputs" name="author" /> </a>
		 </div><br>
    <div>
		<a class="a3">出版社<input type="text"  class="inputs" name="publisher" /> </a>
		 </div><br>
    <div>
		 <a class="a4">ISBN<input type="text" class="inputs" name="isbn" /> </a>
		 </div>
	<div><br>
		<a class="a5">单价 <input type="text" class="inputs" name="price" /> </a>
		 </div><br>
		
		 <input type="submit" class="btn" value="添加">
	</form>
   </div>
</body>
</html>