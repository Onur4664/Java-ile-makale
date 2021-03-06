<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
  <title>Document</title>
</head>
<body>
<jsp:useBean id="data" class="kategori.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="kategori.getset" scope="page" ></jsp:useBean>
    <form action="yazarkayitislemleri.jsp" class="form" >
      <h1>KAYIT EKRANI</h1>
      <div class="form-group">
        <input type="text" placeholder=" " name="yazarad" id="yazarad" required>
        <label for="yazarad">AD</label>
        <div class="error">
          <i class="fas fa-exclamation-circle"></i>
          Error encountered!
        </div>
      </div>
      <div class="form-group">
        <input type="text" placeholder=" " name="yazarsoyad" id="yazarsoyad" required>
        <label for="yazarsoyad">SOYAD</label>
        <div class="error">
          <i class="fas fa-exclamation-circle"></i>
        </div>
      </div><div class="form-group">
        <input type="text" placeholder=" " name="kullaniciad" id="kullaniciad" required>
        <label for="kullaniciad">KULLANICI ADI</label>
        <div class="error">
          <i class="fas fa-exclamation-circle"></i>
        </div>
      </div><div class="form-group">
        <input type="text" placeholder=" " name="sifre" id="sifre" required>
        <label for=sifre>??FRE</label>
        <div class="error">
          <i class="fas fa-exclamation-circle"></i>
        </div>
      </div>
      <div class="form-group">
        <input type="email" placeholder=" " name="mail" id="mail" required>
        <label for="mail">MA?L</label>
        <div class="error">
          <i class="fas fa-exclamation-circle"></i>
        </div>
      </div>
      <div class="form-group">
                    
   
        <div class="error">
          <i class="fas fa-exclamation-circle"></i>
        </div>
      </div>
      <input type="submit" value="Kay?t OL">
   
    </form>
</body>
</html>
</body>
</html>

<style>
/* 
#1B325E - SPACE CADET
#1FBBB0 - LIGHT SEA GREEN
#FAA91A - BRIGHT YELLOW (CRAYOLA)
#F05323 - FLAME
#2991CF - RICH ELECTRIC BLUE
*/

body, html {
  height: 100%;
  font-family: sans-serif;
  background: #43c6ac;
  background: -webkit-linear-gradient(to right, #43c6ac, #f8ffae); 
  background: linear-gradient(to right, #43c6ac, #f8ffae); 
}

.form {
  margin: auto;
  padding: 5px;
  max-width: 420px;
  position: relative;
  top: 50%;
  transform: translateY(-50%);
  background-image: linear-gradient(to bottom, #00183b, #002452, #00306b, #003d85, #004a9f);
  border-radius: 10px;
  box-shadow: 0 0 20px 2px rgba(27,50,94);
  letter-spacing: 0.5px;
}

.form h1{
  text-align: center;
  margin: 20px 0 35px 0;
  color: white;
  text-shadow: 1px 3px rgba(255, 255, 255, 0.1);
}

.form-group {
  margin: 2px 2px;
  max-width: 100%;
  min-height: 68px;
  margin: 10px 0 0 0;
  padding: 0 35px;
  border-radius: 10px;
  position: relative;
}

.form-group input {
  width: 100%;
  box-sizing: border-box;
  height: 38px;
  padding: 0 12px;
  font-size: 17px;
  letter-spacing: 0.25px;
  border-radius: 20px;
  border: 1.5px solid rgb(31,187,176);
  background-color: rgba(248,255,174, 0.2);
  autocomplete: off;
  color: rgba(248, 255, 174, 0.9);
}

.form-group input:active,
.form-group input:focus {
  background-color: rgba(31,187,176, 0.2);
  outline: none;
  autocomplete: off;
  box-shadow: 0 0 2px 0 rgb(248, 255, 174);
  border: 1.5px solid rgb(248, 255, 174);
  color: rgb(248, 255, 174);
}

.form-group input::selection {
  background-color: rgba(31,187,176);
}

.form-group label{
  pointer-events: none;
  position: absolute;
  margin: 0;
  padding: 0 2px;
  top: 9px;
  left: 47px;
  font-size: 16px;
  color: rgba(230, 230, 230, 0.7);
  transition: all 0.12s ease;
}

.form-group input:focus + label,
.form-group input:not(:placeholder-shown) + label{
  transform: translateY(-27px);
  font-size: 14px;
  font-weight: bold;
  color: rgb(248, 255, 174);
}

.error{
  color: rgb(255, 102, 102);
  margin: 3px 0px 0px 12px;
  font-size: 12.5px;
  display: none;
  letter-spacing: 0px;
}

.form input[type="submit"]{
  display: block;
  margin: 20px auto 10px;
  width: 110px;
  height: 45px;
  border-radius: 25px;
  font-size: 17px;
  border: none;
  text-transform: capitalize;
  background-color: rgba(31,187,176, 0.8);
  color: white;
  cursor: auto;
  outline: none;
  font-weight: bold;
  cursor: pointer;
}

.form input[type="submit"]:hover,
.form input[type="submit"]:focus{
  background-color: #2991CF;
  box-shadow: 0 0 2px 0px #2991CF;
}

.form-bottom {
  text-align: center;
  margin: 15px 0;
  font-size: 12px;
  letter-spacing: 0.75px;
}

.form-bottom a{
  text-decoration: none;
  color: #1FBBB0;
}

.form-bottom a:hover,
.form-bottom a:focus{
  color: #2991CF;
  outline: none;
}


</style>