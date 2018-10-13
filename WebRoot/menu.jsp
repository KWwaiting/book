<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
<head>

</head>
<style>
 .body{
  background: url(img/bj.png);
 }
 .btn{
   margin: 20px 0 10px 40px;
   border: 1px solid #ccc;
   font-size:18px;
   color:#000;
   background-color: #fff;
   cursor:pointer;
  }
  .btn:hover{
   color: #F4511E;
   background-color: #FFFFFF;
  }
</style>

<script type="text/javascript">
    window.onload = function(){

        var rightWin = window.top.frames["rightFrame"];

        var ul = document.getElementsByTagName("ul")[0];

        ul.onclick = function(evt){
            var a = evt.target;

            switch(a.innerHTML){
                case "浏览图书信息":
                    rightWin.location.href = "list.jsp";
                break;
                case "添加图书信息":
                    rightWin.location.href = "add.jsp";
                break;
                case "删除图书信息":
                    rightWin.location.href = "doDelete.jsp";
                break;
                case "查找图书信息":
                    rightWin.location.href = "search.jsp";
                break;
                case "查看用户信息":
                    rightWin.location.href = "userinfo.jsp";
                break;
            }
        };
    };
</script>
<body class="body">
<ul>
<font size="5" color="black">图书管理系统导航栏</font><br><br>
  <div id="menu">
		<button class="btn" href="" >浏览图书信息</button><br>
		<br> <button class="btn" href="">添加图书信息</button><br>
		<br> <button class="btn" href="">删除图书信息</button><br>
		<br> <button class="btn" href="">查找图书信息</button><br>
		<br> <button class="btn" href="">查看用户信息</button><br>
	</div>
</ul>

</body>
</html>