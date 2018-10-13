<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=gbk"%>

<html>
<head>
 <style>
  .body{
   background: url(img/bj.png);
  }
  #div{
   text-align:center;
   margin: 250px 0 0 0;
  }
  .a1{
   font-size:18px;
   letter-spacing:10px;
  }
  .inputs{
     font-size:15px;
     margin:0 0 0 0px;
     border-radius: 3px;
     width:20%;
     height:4%;
     
    }
    .inputs:hover{
      border:1px solid red;
    }
   .btn{
   font-size:16px;
   color:#000;
   background-color: #ccc;
   cursor:pointer;
   margin:0 0 0 10px;
   }
  .btn:hover{
   color: #F4511E;
   background-color: #FFFFFF;
  } 
 </style>
</head>
<body class="body">
 <div id="div">
	<form action="doSearch.jsp" method="post"> 
		<a class="a1"> È√˚ <input type="text"  name="bname" class="inputs"/></a>
		 <input type="submit" value="≤È’“" class="btn">
	</form>
  </div>
</body>
</html>