<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>



<jsp:useBean id="islem" class="yazarkayit.yazarkayitbaglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="yazarkayit.yazarkayitgetset" scope="page" ></jsp:useBean>
	
<%
boolean sonuc=false;

String yazarad=request.getParameter("yazarad");
String yazarsoyad=request.getParameter("yazarsoyad");
String kullaniciad=request.getParameter("kullaniciad");
String mail=request.getParameter("mail");
String sifre=request.getParameter("sifre");
veri.setYazarad(yazarad);
veri.setYazarsoyad(yazarsoyad);
veri.setKullaniciad(kullaniciad);
veri.setMail(mail);
veri.setSifre(sifre);

sonuc = islem.insert_value(veri);

if(sonuc==true)
	response.sendRedirect("tercihekrani.jsp");
	
else
	response.sendRedirect("tercihekrani.jsp");
%>
</body>
</html>