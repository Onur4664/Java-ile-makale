<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
    <%@page import="java.sql.ResultSet"%>
     <jsp:useBean id="profil" class="yazarprofil.profilbaglanti"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
<div class="container table">

  <div class="title">

   
  </div>

  <table>

    <!--header-->
    <h1 class="w3-text-light-grey">Yazar Listesi</h1>

    <thead>

      <tr>

        <td>Yazar Ad</td>

        <td>Yazar Soyad</td>

        <td >

          Kullanıcı Adı

        </td>

        <td>Şifre</td>

        <td>Mail</td>
        

      </tr>

    </thead>

    <!--body-->
<% 
  ResultSet rl=profil.selectAllData();
  while(rl.next()) { %>
   <tr>
     <td><%=rl.getString("yazarad") %></td>
      <td><%=rl.getString("yazarsoyad") %></td>
       <td><%=rl.getString("kullaniciad") %></td>
       <td><%=rl.getString("sifre") %></td>
       <td><%=rl.getString("mail") %></td>

  </tr>
   </form>
  <%} %>
  </table>
<form  action="adminanasayfa.jsp" method="post">
           <br>
             <div class="submit">
       <button type="submit" value="SiL" align= "center"class="button button5">Geri</button>
       </div>
 </form>

</div>
</body>
</html>
<style>
body:after{

  content: '';

  background-color: #333333aa;

  position: fixed;

  top: 0;

  left: 0;

  color: white;

  padding: 10px;

  box-shadow: 0 2px 0 green;

  width: 100%;
  
  font-family: comic sans ms;
}

.container{

  position: absolute;

  top: 50%;

  left: 50%;

  transform: translate(-50%,-50%);

  width: 100%;

}
.table{

  display: flex;

  justify-content: center;

  align-items: center;

  flex-direction: column;

}

h1{

  background-color: #eee;

  padding: 10px;

  position: relative;

}

h1:before{

  content: '';

  border-width: 10px;

  border-style: solid;

  border-color: #eee transparent transparent transparent;

  position: absolute;

  bottom: -20px;

  left: calc(50% - 10px);

}

table{

  width: 90vw;

  font-family: Sans-Serif;

  box-shadow: 0 5px 0 rgb(15,157,88);

}

table thead{

  background-color: #333;

  color: white;

  text-align: center;

  text-transform: uppercase;

}

table thead tr td{

  padding: 10px;

}

table thead .special{

  width: 30%;

}

table tbody{

  background-color: #eee;

  color: #111;

  text-align: center;

}

table tbody tr td{

  padding: 10px 20px;

}

table tbody img{

  width: 50px;

}

table tbody .control{

  display: inline-block;

}

.view,.delete{

  padding: 1px 5px;

  margin-bottom: 5px;

  color: white;

  font-weight: bold;

  background-color: rgb(219,68,55);

  user-select: none;

}

.view{

  background-color: rgb(66,133,244);

}</style>