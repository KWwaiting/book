<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ include file="encoding.jsp"%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<style type="text/css">
		.error{
			color: black;
			margin: 0 0 0 40px;
			border: 2px solid #9ae0a4;
			font-size: 15px;
			background-color: #ecf9ee;
		}
		.container{
			border-top: 3px solid #3398cf;
			border-bottom: 3px solid #3398cf;
			width: 50%;
			height: 680px;
		    margin-left: 25%;
		    margin-top: 5%;
		    margin-bottom:5%;
		}
		.d1{
			margin: 25px 0 10px 0;
		}
		.d2{
            margin: 10px 0 10px 0;
		}
		.d3{
            margin: 10px 0 10px 0;
		}
		#a1{
			margin: 20px 0;
		}
		.span1{
			margin-left: 40px;
			font-size: 15px;
		}
		.an{

           font-size: 13px; 
           margin-left:120px;
           margin-top: 15px;
           background-color: #fff;
           border: 1px solid #3398cf;
           cursor:pointer;
		}
		.span2{
            margin-left: 30px;
            font-size: 15px;
		}
		#psw1{
			height: 25px;
			width: 150px;
			border: 2px solid #dee8e9;
		}
		#psw2{
			margin-top: 25px;
			margin-bottom: 20px;
			font-size: 12px;
			height: 25px;
			width: 150px;
			border: 2px solid #dee8e9;

			
		}
        #asw{
        	margin-top: 20px;
        	height:25px;
        	width: 200px;
        	border: 2px solid #dee8e9;
        }
        .email{
        	height:25px;
        	width: 200px;
        	border: 2px solid #dee8e9;
        	margin-bottom: 20px;
        }
        .Telephone{
            height:25px;
        	width: 200px;
        	border: 2px solid #dee8e9;
        	margin-bottom: 20px;
        }
        .btn{
        	margin-top: 20px;
        	margin-left: 45%;
        	height: 30px;
        	color:#fff;
            background-color: #3398cf;
            cursor:pointer;

        }
        .btn:hover{
           color:#3398cf;
           background-color:#fff;
        }
	</style>
	<title>Document</title>
	<script type="text/javascript">
	var code;
		window.onload = function(){
			function ErrorMsg(txtBox,msg){
				var errSpan = txtBox.nextSibling;

				if(errSpan!=null&&errSpan.nodeName=="SPAN"&&errSpan.className=="error"){
					errSpan.innerHTML = msg;
				}else{
					errSpan = document.createElement("span");
					errSpan.className = "error";
					errSpan.innerHTML = msg;
					if(txtBox.nextSibling!=null){
						txtBox.parentNode.insertBefore(errSpan,txtBox.nextSibling);
					}else{
						txtBox.parentNode.appendChild(errSpan);
					}
				}
			}


			var isValidate = [];
			isValidate["userName"] = false;
			isValidate["email"] = false;
			isValidate["password1"] = false;
			isValidate["password2"] = false;
            isValidate["select"] = false;
            isValidate["answer"] = false;
            isValidate["phone"] = false;
            
            
 

			var password1 = document.getElementById("psw1");
			password1.onblur = function(){
				if (password1.value == "") {
					isValidate["password1"] = false;
					ErrorMsg(password1,"密码不能留空！");
				}else if (password1.value !="") {
					isValidate["password1"] = true;
					ErrorMsg(password1,"密码已经输入");
				}else{
					ErrorMsg(password1,"");
				}
			}

           var password2 = document.getElementById("psw2");
			password2.onblur = function(){
				if (password2.value != password1.value) {
					isValidate["password2"] = false;
					ErrorMsg(password2,"密码不一致请重新输入");
				}else if (password2.value == password1.value) {
					isValidate["password2"] = true;
					ErrorMsg(password2,"重复密码输入正确");
				}else{
					ErrorMsg(password2,"");
				}
			}

			var  choice = document.getElementById("choice");
			  choice.onblur = function(){
			  	if (choice.value == "") {
			  		isValidate["select"] = false;
			  		ErrorMsg(choice,"请选择密码提示问题!");
			  	}else if (choice.value !="") {
			  		isValidate["select"] = true;
			  		ErrorMsg(choice,"密码提示问题已选择。");
			  	} else{
			  		ErrorMsg(choice,"");
			  	}
			  }

			  var answer = document.getElementById("asw");
			   answer.onblur = function(){
			   	if (answer.value == "") {
			   		isValidate["answer"] = false;
			   		ErrorMsg(answer,"密码提示问题答案未输入!");
			   	}else if (answer.value != "") {
			   		isValidate["answer"] = true;
			   		ErrorMsg(answer,"密码提示问题答案已经输入。");
			   	 }else{
                    ErrorMsg(answer,"");
			   	 }
			   }
              


			var userName = document.getElementById("txt1");
			userName.onblur = function(){
				if(userName.value == ""){
					isValidate["userName"] = false;
					ErrorMsg(userName,"用户名不能留空！");
				}
                else if (userName.value !="") {
                	isValidate["userName"] = true;
                	ErrorMsg(userName,"用户名已输入!");
                }
				else{
					ErrorMsg(userName,"");
				}
			};

			var birthDay = document.getElementById("txt2");
			birthDay.onblur = function(){
				var dateRegexp = /^[0-9a-z_][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\.){1,4}[a-z]{2,4}$/;

				if(dateRegexp.test(birthDay.value)){
					isValidate["email"] = true;
					ErrorMsg(birthDay,"电子邮箱地址已经输入!");
				}else{
					isValidate["email"] = false;
					ErrorMsg(birthDay,"邮箱格式不正确123@qq.com");
				}
			};
			
			var Telephone = document.getElementById("Telephone");
			Telephone.onblur = function(){
				if(Telephone.value == ""){
					isValidate["phone"] = false;
					ErrorMsg(Telephone,"联系电话不能留空！");
				}
                else if (Telephone.value !="") {
                	isValidate["userName"] = true;
                	ErrorMsg(Telephone,"联系电话已输入!");
                }
				else{
					ErrorMsg(Telephone,"");
				}
			};

			var frm1 = document.getElementById("frm1");
			frm1.onsubmit=function(){
				for(var key in isValidate){
					if(isValidate[key] == true){
						alert("验证通过,跳转到登陆页面!");
						return true;
					}else {
					  alert("验证未通过");
					  return false;
					}
				}
				
			};
			
		};
 
	</script>
</head>
<body>
  <div class="container">
	<form id="frm1" name="for" method="post" action="radd.jsp">
	 <div class="d1">
	   <fieldset style="border-radius: 5px;border:3px solid #C0D7E5;">
         <legend ><h4>您的名称</h4></legend>
		  <span class="span1">您的登录名:</span><input id="txt1" type="text" name="userName" style="height:25px;width: 150px;border: 2px solid #dee8e9;"/><br/>
		  <input type="submit" name="" class="an"  value="查看用户名、域名是否可用">
		  </fieldset>
		</div>



      <div class="d2">
      <fieldset style="border-radius: 5px;border:3px solid #C0D7E5;">
      	<legend ><h4>安全资料</h4></legend>
      	 <span class="span2">输入登录密码:</span><input type="password" id="psw1"  name="password1" value="" ><br>
      	 <span class="span2">登录密码确认:</span><input type="password" id="psw2"  name="password2" value="" ><br>

         <span class="span2">密码提示问题:</span>
      	  <select  id="choice" name="select">
      	    <option style="width: 130px" value="">请选择</option>
      	  	<option >我最大的爱好?</option>
      	  	<option >我的出生的地?</option>
      	  </select><br>

      	  <span class="span2">密码提示答案:</span><input type="text"  name="answer" id="asw" >
      	  </fieldset>
       </div>

    <div class="d3">
    <fieldset style="border-radius: 5px;border:3px solid #C0D7E5;">
       <legend ><h4>个人资料</h4></legend>
		<span class="span2">电子邮箱:</span><input id="txt2" class="email" type="text" name="email"/><br/>
        <span class="span2">联系电话:</span><input id="Telephone" class="Telephone" type="text" name="phone"/><br/>
 		 </fieldset>
 		 <input type="submit" name="" class="btn" value="确认提交注册信息">
	  </div>
	</form>
  </div>
</body>
</html>