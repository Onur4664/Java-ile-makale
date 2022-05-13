<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="islem" class="yazarprofil.profilbaglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="yazarprofil.profilgetset" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;

String yazarad=request.getParameter("yazarad");
String yazarsoyad=request.getParameter("yazarsoyad");
String kullaniciad=request.getParameter("kullaniciad");
String mail=request.getParameter("mail");
String sifre=request.getParameter("sifre");
System.out.println(sifre);
System.out.println(kullaniciad);
veri.setYazarad(yazarad);
veri.setYazarsoyad(yazarsoyad);
veri.setKullaniciad(kullaniciad);
veri.setMail(mail);
veri.setSifre(sifre);

sonuc = islem.updateData(veri);

if(sonuc==true){
	System.out.println("aaaaaaaaaaaaaaaaaaaaaaaa");
	response.sendRedirect("yprofil.jsp");  }
%>

</body>
</html>