<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<%@page import="java.sql.ResultSet"%>
      
 <% 
          HttpSession oturum= request.getSession();
          String isim = (String) oturum.getAttribute("oturumismi");
 %>
<!DOCTYPE html>
<title>ADMIN</title>
<html lang="tr">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.w3-third img{margin-bottom: -6px; opacity: 0.8; cursor: pointer}
.w3-third img:hover{opacity: 1}
</style>
<body class="w3-light-grey w3-content" style="max-width:1600px">



<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-white w3-xlarge w3-padding-16">
  <span class="w3-left w3-padding">SOME NAME</span>
  <a href="javascript:void(0)" class="w3-right w3-button w3-white" onclick="w3_open()">☰</a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px">

  <!-- Push down content on small screens --> 
  <div class="w3-hide-large" style="margin-top:83px"></div>
    
  <!-- Contact section -->
  <div class="w3-container w3-light-grey w3-padding-32 w3-padding-large" id="contact">
    <div class="w3-content" style="max-width:600px">
     <jsp:useBean id="islem" class="makaleekle.makaleeklebaglanti" scope="page"></jsp:useBean>
     <jsp:useBean id="veri" class="makaleekle.makaleeklegetset" scope="page"></jsp:useBean>
      <h4 class="w3-center"><b>MAKALEYI ATA</b></h4>
       <%
boolean sonuc=false;
int id=Integer.parseInt(request.getParameter("id"));
 if (sonuc=true)
 {
    ResultSet rs = islem.selectData(id);
    while(rs.next()){ %>
      <form action="atanacakhoca.jsp">
        <div class="w3-section">
          <label>BASLIK</label>
        <h3><%=rs.getString("baslik") %></h3> 
        </div>
        
        <div class="w3-section">
          <label>ICERIK</label>
            <h3><%=rs.getString("icerik") %></h3> 
        </div>
     
        <div class="w3-section">
          <label>ALAN</label>
         <h3><%=rs.getString("alan") %></h3> 
        </div>
                <div class="w3-section">
          <label>TARIH</label>
         <h3><%=rs.getString("tarih") %></h3> 
        </div>
                <div class="w3-section">
          <label>ALAN</label>
         <h3><%=rs.getString("alan") %></h3> 
        </div>
          <div class="w3-section">
          <label>MAKALE NO</label>
          <h3><%=rs.getString("id") %></h3>
          <input type="text" name="id" id="id" value="<%=rs.getString("id") %>" style="display:none;">
          <input type="text" name="alan" id="alan" value="<%=rs.getString("alan") %>" style="display:none;">
        </div>
        <button type="submit" class="w3-button w3-block w3-black w3-margin-bottom">ATAMA TALEP ET</button>
  <%}}%>
      </form>
    </div>
  </div>
<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

</script>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</body>
</html>
