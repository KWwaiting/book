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
  #body{
   background: url(img/1.jpg) no-repeat fixed center center ;
   background-size: cover;

  }
  #frame{
   margin-top:250px;
   border:1px solid #ccc;
   border-top: 5px solid #ff656d;
   box-shadow: 2px 4px 6px #ccc;
   border-radius: 5px;
   width:500px;
   height:480px;
   background-color:#fff;
   
  }
  #top{
   text-align:center;
  }
  #d1{
    width: 50%;
    height: 40px;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 15px;
    font-family: Montserrat;
    padding: 0 20px 0 20px;
    outline: none;
    margin: 40px 0 20px 120px;
    background-image: url(img/3.png) ;
  
  }
  #d1:hover{
   border:1px solid red;
   box-shadow: 2px 2px 6px red;
  }
  #d2{
    width: 50%;
    height: 40px;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 15px;
    font-family: Montserrat;
    padding: 0 20px 0 20px;
    outline: none;
    margin: 20px 0 20px 120px;
  }
  #d2:hover{
   border:1px solid red;
   box-shadow: 2px 2px 6px red;
  }
  #d3{
    width: 50%;
    height: 40px;
    box-sizing: border-box;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 15px;
    font-family: Montserrat;
    padding: 0 20px 0 20px;
    outline: none;
    margin: 20px 0 20px 120px;
    background: url(image.jsp) no-repeat  right center ;
  }
  #d3:hover{
   border:1px solid red;
   box-shadow: 2px 2px 6px red;
  }
  .img{
   margin:0 10px;
   padding:10px 200px;
  }
  .btn{
   cursor:pointer;
   color:#fff;
   padding: 3px 20px;
   margin: 0 0 0 110px;
   background-color: #ff656d;  
   box-shadow: 2px 4px 6px #ccc;
  }
  .btn:hover{
   color: #F4511E;
   background-color: #FFFFFF;
  }
  .glyphicon{
   color:#ccc;
  }
  
  
  div.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #fff;
    margin-top:10px;
}


div.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition:0.5s;
    font-size: 17px;
}


div.tab button:hover {
    background-color: #ddd;
}


div.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}
 </style>
<script>

function check()
  {
  
  var uname = document.getElementById("d1").value;
  var password = document.getElementById("d2").value;
  if(uname=="" && password==""){
     alert("�û��������벻��Ϊ��!");
   } else if(password==""){
     alert("���벻��Ϊ�գ�");
   } else if( uname=="" ){
     alert("�û�������Ϊ��!");
   } else if(uname!="admin"){
     alert("�û�������");
   } else if(password!="123456"){
     alert("�������");
   } else{
   
   }
  
 }
 
  function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// ���� id="defaultOpen" click �¼�
document.getElementById("defaultOpen").click();
 </script>
<body id="body"> 
<div id="frame" class="container">
    
 <div class="tab">
  <button class="tablinks" onclick="openCity(event, 'London')" id="defaultOpen">����Ա��½</button>
  <button class="tablinks" onclick="openCity(event, 'Paris')">�û���½</button>

</div>

<div id="London" class="tabcontent">
  <h3 id="top">ͼ�����ϵͳ����Ա��½</h3>
	<form action="doLogin.jsp" method="post" >
	<div>
		<input type="text" name="uname" id="d1" value="" placeholder="�������û���"/>
		 <span class="glyphicon glyphicon-user "></span>
		</div>
	<div>
		<input type="password" id="d2" value="" name="password" placeholder="����������">
		<span class="glyphicon glyphicon-lock "></span>
		</div>
	<div>	
		<input type="text" name="code" id="d3" value="" placeholder="��������֤��" />
		</div><br>
			<input type="submit"  class="btn" value="��½" onclick="check()"/>
			<input type="reset" class="btn" value="����" >
	 </form>
</div>

<div id="Paris" class="tabcontent">
   <h3 id="top">�û���½</h3>
	<form action="rlogin.jsp" method="post" >
	<div>
		<input type="text" name="userName" id="d1" value="" placeholder="�������û���"/>
		 <span class="glyphicon glyphicon-user "></span>
		</div>
	<div>
		<input type="password" id="d2" value="" name="password1" placeholder="����������">
		<span class="glyphicon glyphicon-lock "></span>
		</div>
	<div>	
		<input type="text" name="code" id="d3" value="" placeholder="��������֤��" />
		</div><br>
			<input type="submit"  class="btn" value="��½" />
			<a href="register.jsp"><input type="button" class="btn" value="ע��" ></a>
	 </form>
	
</div>
   
   </div>
 </body>
</html>

