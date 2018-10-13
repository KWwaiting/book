<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
<head>
<meta charset="gbk" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no,minimun-scale=1.0,maximun-scale=1.0">

		<link href="bootstrap/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="bootstrap/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet">
		

		<script src="bootstrap/jquery-2.1.4/jquery.min.js" type="text/javascript"></script>
		<script src="bootstrap/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
</head>
 <style>
 .body{
 background: url(img/bj.png);
  background-color:#f3f3f3;
 }
 *{
   margin:0;
   padding:0;
   list-style:none;
   }
 .carousel{
   height:500px;
   width:800px;
   overflow: hidden;
   position: relative;
   margin:120px auto;
   border:6px solid #ccc;
   }
 .carousel ul{
   position:absolute;
   } 

 .carousel ol{
   position:absolute;
   right:5px;
   bottom:10px;
   }
 .carousel ol li{
   height:20px; width: 20px;
   background:#fff;
   border:solid 1px #666;
   margin-left:5px;
   color:#000;
   float:left;
   line-height:center;
   text-align:center;
   cursor:pointer;
   }
 .carousel ol .on{
   background:#46A3FF;
   color:#fff;
   }
 
 </style>
 <script type="text/javascript">
   window.onload=function(){
    var carousel = document.getElementById("carousel"),
    pic = document.getElementById("pic").getElementsByTagName("li"),
    list = document.getElementById("list").getElementsByTagName("li"),
    index = 0,
    timer=null;
 
   // 定义并调用自动播放函数
   timer = setInterval(autoPlay, 2000);
 
   // 鼠标放在图片上时停止播放
   carousel.onmouseover = function () {
    clearInterval(timer);
   };
 
  // 鼠标离开图片时继续播放
   carousel.onmouseout = function () {
    timer = setInterval(autoPlay, 2000);
   };
  // 遍历所有数字导航实现划过切换至对应的图片
   for (var i = 0; i < list.length; i++) {
     list[i].onmouseover = function () {
     clearInterval(timer);
     index = this.innerText - 1;
     changePic(index);
     };
  };
 
   function autoPlay () {
    if (++index >= pic.length) index = 0;
     changePic(index);
   }
 
 // 定义图片切换函数
    function changePic (curIndex) {
      for (var i = 0; i < pic.length; ++i) {
      pic[i].style.display = "none";
      list[i].className = "";
    }
      pic[curIndex].style.display = "block";
      list[curIndex].className = "on";
     }
 
  };
 
 </script> 
</head>
<body class="body">
    <div class="carousel" id='carousel'>
        <ul id="pic">
         <li><img src="img/lb1.jpg" alt=""></li>
         <li><img src="img/lb2.jpg" alt=""></li>
         <li><img src="img/lb3.jpg" alt=""></li>
        </ul>
      <ol id="list">
       <li class="on">1</li>
        <li>2</li>
        <li>3</li>
       </ol>
    </div>
 </body>
</html>