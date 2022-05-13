<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>



<jsp:useBean id="islem" class="hocakayit.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="hocakayit.getset" scope="page" ></jsp:useBean>
	
<%
boolean sonuc=false;

String hocaad=request.getParameter("hocaad");
String hocasoyad=request.getParameter("hocasoyad");
String kullaniciad=request.getParameter("kullaniciad");
String mail=request.getParameter("mail");
String sifre=request.getParameter("sifre");
String alan=request.getParameter("kategori");
int skor=0;
veri.setHocaad(hocaad);
veri.setHocasoyad(hocasoyad);
veri.setKullaniciad(kullaniciad);
veri.setMail(mail);
veri.setSifre(sifre);
veri.setAlan(alan);
veri.setSkor(skor);

sonuc = islem.insert_value(veri);

if(sonuc==true)
	response.sendRedirect("tercihekrani.jsp");
	
else
	response.sendRedirect("tercihekrani.jsp");
%>
</body>
</html>