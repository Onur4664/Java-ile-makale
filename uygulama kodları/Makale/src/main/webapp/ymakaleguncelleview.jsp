<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="islem" class="makalelistesi.listebaglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="makalelistesi.listegetset" scope="page" ></jsp:useBean>
<%
boolean sonuc=false;
int id=Integer.parseInt(request.getParameter("id"));
String baslik=request.getParameter("baslik");
String icerik=request.getParameter("icerik");
String alan=request.getParameter("alan");
veri.setId(id);
veri.setBaslik(baslik);
veri.setIcerik(icerik);
veri.setAlan(alan);
sonuc = islem.updateData(veri);
if(sonuc==true)
	response.sendRedirect("yazarmakalegor.jsp");  
%>

</body>
</html>