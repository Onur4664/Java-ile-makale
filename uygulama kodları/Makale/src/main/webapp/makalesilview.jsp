<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
veri.setId(id);
sonuc=islem.deleteData(veri);
if(sonuc==true)
	response.sendRedirect("yazarmakalegor.jsp");
%>
</body>
</html>