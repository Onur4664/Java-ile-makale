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
<jsp:useBean id="veri" class="makaleekle.makaleeklegetset" scope="page"></jsp:useBean>
  <% 
  int id=Integer.parseInt(request.getParameter("id"));
  String durum=request.getParameter("durum");
  veri.setId(id);
  veri.setDurum(durum);
  boolean sonuc=islem.deleteData(veri);
  if (sonuc==true)response.sendRedirect("makalelistesi.jsp"); 
  %>
</body>
</html>