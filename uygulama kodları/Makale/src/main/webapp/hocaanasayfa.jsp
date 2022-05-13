<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<jsp:useBean id="veri" class="yazarlogin.yazargirisgetset" scope="page" ></jsp:useBean>
<jsp:useBean id="data" class="yazarlogin.yazargirisbaglanti" scope="page"></jsp:useBean>
 <%  HttpSession oturum= request.getSession();
       String isim=null;
       isim = (String) oturum.getAttribute("oturumismi");
if (isim==null)
	response.sendRedirect("tercihekrani.jsp");

%>
 
  
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="wrapper">
  <div class="Container">
        <div class="nav">
            <div class="logo">
                MAKALE SAYFASINA HOÞGELDÝNiZ
            </div>
            <div class="menu">
                <ul class="navMenu">
                    <li><a href="hocaanasayfa.jsp">Anasayfa</a></li>
                    <li><a href="hprofil.jsp"> Profil </a></li>
                    <li><a href="bekleyenmakale.jsp">Bekleyen Makaleler</a></li>
                    <li><a href="atanmismakalehoac.jsp">Onaylanmýþ Makaleler</a></li>
                    <li><a href="tercihekrani.jsp">Güvenli Çýkýþ</a></li>
                </ul>
            </div>
        </div>
        <div class="header">
            <h1>Öðretmen mum gibidir, kendisi tükenirken etrafýný aydýnlatýr.  </h1>           
        </div>
    </div>
</div>
</body>
</html>
<style>* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Abel", sans-serif;
  font-size: 10px;
  scroll-behavior: smooth;
}
.wrapper {
  width: auto;
  height: 100vh;
  
  background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://p2.piqsels.com/preview/350/231/695/books-old-vintage-grunge.jpg");
  background-position: center;
  background-size: cover;
  background-repeat: no-repeat;
  backdrop-filter: opacity(80%);
}
.Container {
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
}
.nav {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 80px;
  border-bottom: 1px solid rgba(255, 255, 255, 0.521);
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 50px;
}
.logo {
  font-family: "Abel", sans-serif;
  font-size: 2.5rem;
  font-weight: 600;
  letter-spacing: 0.7rem;
  color: white;
  margin: 4%;
}
.menu {
  display: inline-block;
  line-height: 80px;
}
.menu ul {
  list-style: none;
  /* display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center; */
}
.menu ul li {
  display: inline-block;
}
.menu ul li a {
  text-decoration: none;
  font-family: "Raleway", sans-serif;
  font-size: 1.2rem;
  font-weight: 600;
  letter-spacing: 0.1rem;
  color: white;
  border: 1px solid transparent;
  border-radius: 4px;
  padding: 10px 15px;
  margin: 0 5px;
  transition: 0.5s ease;
}
.menu ul li a:hover {
  border-color: white;
}
.menu ul li:nth-child(5) a {
  color: #fff200;
  border: 1px solid #fff200;
}
.menu ul li:nth-child(5) a:hover {
  color: black;
  background-color: #fff200;
}
.header {
  text-align: center;
}
.header h1 {
  font-family: "Raleway", sans-serif;
  font-size: 4rem;
  font-weight: 600;
  letter-spacing: 0.2rem;
  color: white;
  padding: 45% 20px 8px;
}
.header p {
  font-family: "Raleway", sans-serif;
  font-size: 1.5rem;
  font-weight: 600;
  letter-spacing: 0.2rem;
  color: white;
  padding: 10px 15px;
}
button {
  font-size: 1.5rem;
  font-weight: 600;
  letter-spacing: 0.15rem;
  color: black;
  background-color: #fff200;
  padding: 20px 30px;
  margin: 50px 5px 0;
  border: none;
  cursor: pointer;
}
</style>