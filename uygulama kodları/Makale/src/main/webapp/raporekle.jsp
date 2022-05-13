<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="islem" class="makaleekle.makaleeklebaglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="makaleekle.makaleeklegetset" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;
int id=Integer.parseInt(request.getParameter("id"));
String rapor=request.getParameter("rapor");

veri.setId(id);
veri.setRapor(rapor);
sonuc = islem.rapor(veri);
if(sonuc==true)
	response.sendRedirect("hocaanasayfa.jsp");  
%>

</body>
</html>