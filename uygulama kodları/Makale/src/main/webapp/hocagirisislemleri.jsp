<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:useBean id="islem" class="hocagiris.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="hocagiris.getset" scope="page" ></jsp:useBean>
</head>
<body>
<%
int i=0;
int b=0;
boolean sonuc=false;
String kullaniciad=request.getParameter("kullaniciad");
String sifre=request.getParameter("sifre");


HttpSession oturum = request.getSession();
oturum.setAttribute("oturumismi", null);
ResultSet rs = islem.Kontrol();
while (rs.next()) {
	b+=1;

	String ka = rs.getString("kullaniciad");
	String sf = rs.getString("sifre");

	if (kullaniciad.equals(ka) && sifre.equals(sf)) {
		oturum.setAttribute("oturumismi", kullaniciad);

		response.sendRedirect("hocaanasayfa.jsp");
	} 	
	
	else if(!kullaniciad.equals(ka)|| !sifre.equals(sf))
	{
		i+=1;	
	}  
}
	
	if(i==b)
	{
		
		response.sendRedirect("tercihekrani.jsp");
		
	}
	
	%>

%>
</body>
</html>