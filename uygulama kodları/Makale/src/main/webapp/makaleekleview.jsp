<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
    <%@ page import="java.io.*,java.util.Locale" %>
<%@ page import="java.text.DateFormat,java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="islem" class="makaleekle.makaleeklebaglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="makaleekle.makaleeklegetset" scope="page" ></jsp:useBean>
<%

boolean sonuc=false;
String baslik=request.getParameter("baslik");
String icerik=request.getParameter("icerik");
String alan=request.getParameter("alan");
String durum="Atanmamis";
Locale yerel = request.getLocale( );
String tarih = DateFormat.getDateTimeInstance(
              DateFormat.FULL, 
              DateFormat.SHORT, 
              yerel).format(new Date( ));
System.out.println(tarih);

HttpSession oturum= request.getSession();
String yazar = (String) oturum.getAttribute("oturumismi");
veri.setYazar(yazar);
veri.setBaslik(baslik);
veri.setAlan(alan);
veri.setIcerik(icerik);
veri.setTarih(tarih);
veri.setYazar(yazar);
veri.setDurum(durum);
sonuc = islem.insertData(veri);
if(sonuc==true)
	response.sendRedirect("yazarmakaleekle.jsp");  
%>

</body>
</html>