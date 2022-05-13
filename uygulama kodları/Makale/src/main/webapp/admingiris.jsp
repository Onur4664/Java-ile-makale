<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
<header>
    
  </header>
  <div class="login-box">
    <h1>Admin Giri�
      <span class="span1"></span></h1>
    <form action="admingirisislemleri.jsp">
      <div class="text-box">
        <i class="fa fa-user"></i>
        <input class="input-field" type="text"  class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Kullan�c� Ad�" name="kullaniciad">
        <span class="span2"></span>
      </div>
      <div class="text-box">
        <i class="fa fa-lock"></i>
       <input class="input-field" type="password" required= "required" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="�ifre" name="sifre">
        <span class="span3"></span>

      </div>
      <div class="btn-box">
        <input class="btn" type="submit" name="btn" value="Sign in">
        <span class="span_1"></span>
        <span class="span_2"></span>
        <span class="span_3"></span>
        <span class="span_4"></span>  
      </div>
    </form>
  </div>
</body>
</html>
<style>
@import "https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css";
body{
	margin:0;
	padding: 0; 
	font-family: sans-serif;
	background: #000;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
header{
	background: url(https://www.shantnews.am/wp-content/uploads/2018/11/nastol.com_.ua-242348.jpg) no-repeat top center / cover;
	height: 100vh;
	opacity: 0.3;
}
.login-box{
	width: 280px;
	position: absolute;
	top:50%;
	left:50%;
	transform: translate(-50%,-50%);
	color: #fff
}	
.login-box h1{
	float: left;
	font-size: 40px;
	
	margin-bottom: 40px;
	padding: 13px 0;
}
.text-box{
	width: 100%;
	overflow: hidden;
	font-size: 20px;
	padding: 8px 0;
	margin: 8px 0;
	

}
.text-box i{
	width: 26px;
	float: left;
	text-align: center;
}
.text-box input{
	border: none;
	outline: none;
	background: none;
	color:#fff;
	font-size: 18px;
	width: 80%;
	float: left;
	margin: 0 10px; 
}
.btn{
	outline: none;
	width: 100%;
	background: none;
	border: none; 
	color: #fff;
	padding: 5px ;
	font-size: 18px;
	cursor: pointer;
}
.span1{
	position: absolute;
    top:100px;
    left:0;
    width:109px;
    height: 6px;
    background: linear-gradient(to right ,#0c002b, #008000);
}
.span2{
	position: absolute;
    top:170px;
    left:0;
    width:100%;
    height: 3px;
    background: linear-gradient(to right ,#0c002b, #008000);
}
.span3{
	position: absolute;
    top:218px;
    left:0;
    width:100%;
    height: 3px;
    background: linear-gradient(to right ,#0c002b, #008000);
}

.btn-box{
	margin-top: 15px;
	position: relative;
	overflow: hidden;
	width: 100%;
	height: 40px;
	
}
.btn{
	position: absolute;
	width: 100%;
	padding: 10px;

}
.span_1{
	position: absolute;
    top:0;
    right:0;
    width:100%;
    height: 3px;
    background: linear-gradient(to right ,#0c002b, #008000);
      animation: anim1 2s linear infinite;
}
.span_2{
	position: absolute;
    bottom:0;
    right:0;
    width:3px;
    height: 100%;
    background: linear-gradient(to bottom ,#0c002b, #008000);
      animation: anim2 2s linear infinite;
}
.span_3{
	position: absolute;
   	bottom:0;
    left:0;
    width:100%;
    height: 3px;
    background: linear-gradient(to left,#0c002b, #008000);
      animation: anim3 2s linear infinite;
}
.span_4{
	position: absolute;
   	top:0;
    left:0;
    width:3px;
    height: 100%;
    background: linear-gradient(to top ,#0c002b, #008000);
    animation: anim4 2s linear infinite;
}
@keyframes anim1 {
    0%{
        transform: translateX(-100%);
    }
    100%{
        transform: translateX(100%);
    }
}
@keyframes anim2 {
    0%{
        transform: translateY(-100%);
    }
    100%{
        transform: translateY(100%);
    }
}
@keyframes anim3 {
    0%{
        transform: translateX(100%);
    }
    100%{
        transform: translateX(-100%);
    }
}
@keyframes anim4 {
    0%{
        transform: translateY(100%);
    }
    100%{
        transform: translateY(-100%);
    }
}</style>