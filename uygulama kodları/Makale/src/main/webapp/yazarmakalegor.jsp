<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>

  
  <jsp:useBean id="makalelistesi" class="makalelistesi.listebaglanti"></jsp:useBean>
  <!-- Home Section -->
  
  <div class="w3-padding-64 w3-content w3-text-grey" id="photos">
    <h2 class="w3-text-light-grey">Makale Listesi</h2>
    
    
<h2>Makale tablosu</h2>

<table id="usertab">

  <tr>
    <th>Makale Başlık</th>
    <th>Makale İçerik</th>
    <th>Makale alan</th>
    <th>Makale durum</th>
    <th>Makale Tarih</th>
    <th>Makale Yazar</th>
     <th>Duzenle</th>
     <th>Sil</th>
    <th></th>
    
  </tr>
   
  
 <% 
  ResultSet rl=makalelistesi.selectAllData();
  while(rl.next()) { %>

  <tbody>
  
  <tr>
     <td><%=rl.getString("baslik") %></td>
      <td><%=rl.getString("icerik") %></td>
       <td><%=rl.getString("alan") %></td>
       <td><%=rl.getString("durum") %></td>
       <td><%=rl.getString("tarih") %></td>
       <td><%=rl.getString("yazar") %></td>
        <td><a href='ymakaleguncelle.jsp?id=<%=rl.getInt("id")%>'>Duzenle<span class="glyphicon glyphicon-edit" style="font-size:24px; color:green;"></span></a></td>
           <td><a href='makalesilview.jsp?id=<%=rl.getInt("id")%>'>Sil<span class="glyphicon glyphicon-edit" style="font-size:24px; color:green;"></span></a></td>
      <p>
      </p>
  </tr>

  <%} %>
     <form  action="yazaranasayfa.jsp" method="post">
           <button class="w3-button w3-light-grey w3-padding-large" type="submit">
       Geri
        </button>
  


</table>

</body>
</html>
<style>
* {
  box-sizing: border-box;
}
body {
  background-color: #fdb;
  color: #fa0;
}
h2 {
  text-align: center;
}
@media (max-width: 600px) {
  h2 {
    font-size: 18px;
  }
}
p {
  font-size: 18px;
  font-weight: 700;
  text-align: center;
}
@media (max-width: 600px) {
  p {
    font-size: 12px;
  }
}
table {
  display: table;
  width: 80%;
  margin: auto;
  background-color: black;
}
tr {
  background-color: #555;
  border-collapse: none;
}
tr:nth-child(odd) {
  background-color: #777;
  border-collapse: none;
}
th {
  width: 15%;
  padding: 5px 10px;
  background-color: #333;
  color: #fff;
}
td {
  width: 33.33%;
  padding: 5px 10px;
  text-align: center;
}
@media (max-width: 600px) {
  table {
    width: 80%;
  }
  th {
    display: none;
  }
  td {
    display: block;
    width: 100%;
    min-height: 40px;
    border-bottom: 1px solid #000;
  }
}
.select {
  position: relative;
  left: 50%;
  transform: translatex(-50%);
  width: 60px;
  padding: 5px;
  background-color: #fa7;
  color: #000;
  font-weight: 700;
  border: 1px solid #000;
  border-radius: 6px;
  text-align: center;
}
.select:active {
  background-color: #f96;
}
.details {
  display: none;
  width: 80%;
  min-height: 85vh;
  padding: 10px;
  margin: 10px auto;
  background-color: #d00;
  border: 1px solid #000;
  border-radius: 10px;
  color: #fa0;
}
@media (max-width: 600px) {
  .details {
    width: 80%;
  }
}
#close {
  float: right;
  display: block;
  width: 100px;
  height: 50px;
  background: transparent;
  border: 2px solid #fa0;
  color: #fa0;
  font-size: 20px;
  font-weight: 700;
}
@media (max-width: 600px) {
  #close {
    width: 75px;
    height: 35px;
    font-size: 15px;
    font-weight: 700;
  }
}
.notes {
  width: 500px;
  margin: auto;
  padding: 10px;
  border: 1px solid #fa0;
  font-size: 16px;
}
@media (max-width: 600px) {
  .notes {
    width: 90%;
    font-size: 12px;
  }
  .notes h2 {
    font-size: 18px;
  }
}
</style>
