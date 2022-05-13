
    <%@page import="java.sql.ResultSet"%>
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "javax.servlet.*,java.text.*" %>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<title>ADMIN</title>
<meta charset="ISO-8859-1">
</head>
<body>

<style >
body {
    background-color: #c1ea94;
}
</style>
     <jsp:useBean id="islem" class="makaleekle.makaleeklebaglanti" scope="page"></jsp:useBean>
     <jsp:useBean id="veri" class="makaleekle.makaleeklegetset" scope="page"></jsp:useBean>
  <% 
  String to;
  int id=Integer.parseInt(request.getParameter("id"));
  String alan=request.getParameter("alan");
  veri.setId(id);
  veri.setAlan(alan);
  boolean sonuc=islem.atanacakhocaaldim(veri);
  if (sonuc==true)
  {
	  ResultSet mkl1 = islem.atiyor();
	  while(mkl1.next()) { 
System.out.println(mkl1.getString("mail"));
 to=mkl1.getString("mail");
	  
 String result;

 // alici mail adresi
 // gonderici mail adresi
String from = "onurgul4664@gmail.com";
 //gonderici sifre
 String password="e574b1d836";

 // ozellik nesnesi olusturuluyor
 Properties properties = System.getProperties();

 // mail server ayarlari yapiliyor
 properties.put("mail.smtp.host", "smtp.gmail.com");
 properties.put("mail.smtp.port", "587");
 properties.put("mail.smtp.starttls.enable", "true");
 properties.put("mail.smtp.auth", "true"); 

 //SSL sertifikasi kullanilmak istenirse bu ayarlar eklenir
 properties.put("mail.smtp.socketFactory.port", "465");
 properties.put("mail.smtp.socketFactory.class", 
     "javax.net.ssl.SSLSocketFactory");
 properties.put("mail.smtp.auth", "true");
 properties.put("mail.smtp.port", "465");

 // Mail icin session nesnesi olusturulur.
 Session mailSession = Session.getInstance(properties,
                         new javax.mail.Authenticator() {
                  protected PasswordAuthentication getPasswordAuthentication() {
                         return new PasswordAuthentication(from, password);
                  }
           }); 

 try {
    // olusturulan sessiondan mimemesage nesnesi olusturulur
    MimeMessage message = new MimeMessage(mailSession);
    
    // gonderici adresi set ediliyor
    message.setFrom(new InternetAddress(from));
    
    // alici adresi set ediliyor
    message.addRecipient(Message.RecipientType.TO,
                             new InternetAddress(to));
    // mail basligi set ediliyor
    message.setSubject("ONAY BEKLEYEN MAKALENIZ VAR");
    

    
    // mail gonderiliyor
    Transport.send(message);
    //mail gonderilir ise sonuc 1
  veri.setInceleyen(to);
 
 } catch (MessagingException mex) {
    mex.printStackTrace();
  //mail gonderilemez ise sonuc 0
    response.sendRedirect("hocagiris.jsp");
 }
 
	  }
 
  }
  %>
  </body>
</html>