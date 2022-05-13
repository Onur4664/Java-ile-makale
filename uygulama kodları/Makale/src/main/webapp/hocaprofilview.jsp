<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
String alan=request.getParameter("alan");
String skor=request.getParameter("skor");

veri.setHocaad(hocaad);
veri.setHocasoyad(hocasoyad);
veri.setKullaniciad(kullaniciad);
veri.setMail(mail);
veri.setSifre(sifre);
veri.setAlan(alan);

sonuc = islem.updateData(veri);

if(sonuc==true){
	System.out.println("aaaaaaaaaaaaaaaaaaaaaaaa");
	response.sendRedirect("hprofil.jsp");  }
%>

</body>
</html>