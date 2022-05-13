<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
<!doctype html>
<html>
    <head>
       <meta charset="utf-8">
       <title>CSS Dark Folded Sign In Form</title>
       <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        
       </head>
    <body>
        <div class="container">
             <div class="box">
                 <span class="sign-in">Öğretmen için Giriş Sayfası</span>
                <div class="form-inner">
 <form action="hocagirisislemleri.jsp" class="login">
   <div class="field">
     <input class="input-field" type="text"  class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Kullanıcı Adı" name="kullaniciad">
   </div>
<div class="field">
            <input class="input-field" type="password" required= "required" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" placeholder="Şifre" name="sifre">
            </div>
<div class="pass-link">
<div class="field btn">
              <div class="btn-layer">
</div>
<input type="submit" value="Login">
</div>
</div>
             </div>
        </div>
        </form>
        
</body>
</html>
<style>
@import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@500&display=swap');
*{
    padding: 0;
    margin: 0; 
    font-family: 'Quicksand', sans-serif;
}
body{
    background: #fff;
}
.container{
    position: relative;
    width: 100%;  height: 100vh;
    background: url(https://images.squarespace-cdn.com/content/v1/519a7bc0e4b08ccdf8f31445/1562330407850-F8DQEHOOVMMTAGG3BQWJ/ke17ZwdGBToddI8pDm48kOggE0Ch6pMGalwtLMqzsSB7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Ufo5RWkg_J4of0jUNHaDHx6pZKBvpVYzidBWCapg0tuoMuEaB2HPGSYDV-11UTcW2g/Comment+r%C3%A9ussir+%C3%A0+concilier+ville+et+nature+%3F);
    background-size: cover;
}
.container .box{
    position: absolute;
    top: 30%;  left: 50%;
    transform: translate(-50%,-50%);
    width: 500px;  height: 70px;
}
.container .box .sign-in{
    position: relative;
    width: 100%;   height: 100%; 
    text-align: center;  line-height: 70px;
    background: #03a9f4;   color: #fff;
    display: inline-block;
    font-size: 30px;
    cursor: pointer;
    border-top-left-radius: 20px;
    border-top-right-radius: 20px;
}
.container .box .login{
    position: absolute;
    top: 100%;  left: 0;
    width: 100%;   height: 300px;
    background: rgba(0,0,0,.8);
    padding: 40px 20px;
    box-sizing: border-box;
    transform-origin: top;
    transform: perspective(1000px) rotateX(0deg);
    transition: .9s;
}
.container .box .login.active{
    transform: perspective(1000px) rotateX(-90deg);
}
.container .box .login input{
    border: none;   outline: none;
    width: 100%;  height: 50px;
    border: 1px solid #fff;
    padding: 10px 20px;
    box-sizing: border-box;
    border-radius: 20px;
    background: transparent;
    margin-bottom: 25px;
    color: #fff;
    font-size: 20px;
}
.container .box .login a{
    text-decoration: none;
    margin-bottom: 20px;
    color: #fff;
    transition: .2s;
}

.container .box .login a:nth-of-type(1){
    display: block;
    width: 150px;  height: 50px;
    text-align: center;   line-height: 50px;
    border-radius: 20px;
    background: #474545;   
}
.container .box .login a:nth-of-type(1):hover{
    background: #03a9f4;
}
.container .box .login a:nth-of-type(2){
    float: right;
}
.container .box .login a:nth-of-type(2):hover{
    color: #03a9f4;
}</style>
<script>
$(document).ready(function(){
    $('.sign-in').click(function(){
        $('.login').toggleClass('active');
    })
})</script>