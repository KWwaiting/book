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
                case "���ͼ����Ϣ":
                    rightWin.location.href = "list.jsp";
                break;
                case "���ͼ����Ϣ":
                    rightWin.location.href = "add.jsp";
                break;
                case "ɾ��ͼ����Ϣ":
                    rightWin.location.href = "doDelete.jsp";
                break;
                case "����ͼ����Ϣ":
                    rightWin.location.href = "search.jsp";
                break;
                case "�鿴�û���Ϣ":
                    rightWin.location.href = "userinfo.jsp";
                break;
            }
        };
    };
</script>
<body class="body">
<ul>
<font size="5" color="black">ͼ�����ϵͳ������</font><br><br>
  <div id="menu">
		<button class="btn" href="" >���ͼ����Ϣ</button><br>
		<br> <button class="btn" href="">���ͼ����Ϣ</button><br>
		<br> <button class="btn" href="">ɾ��ͼ����Ϣ</button><br>
		<br> <button class="btn" href="">����ͼ����Ϣ</button><br>
		<br> <button class="btn" href="">�鿴�û���Ϣ</button><br>
	</div>
</ul>

</body>
</html>