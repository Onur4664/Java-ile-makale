<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
    <%@page import="java.sql.ResultSet"%>
     <jsp:useBean id="makale" class="makalelistesi.listebaglanti"></jsp:useBean>
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
    <h1 class="w3-text-light-grey">Makale Listesi</h1>

    <thead>

      <tr>

        <td>Başlık</td>

        <td>İçerik</td>

        <td >

         Alan

        </td>

        <td>Durum</td>

        <td>Tarih</td>
        
         <td>Yazar</td>
         
          <td>İnceleyen</td>
          
          <td>rapor</td>
          
          <td>Sil</td>
          
          <td>Ata</td>
        

      </tr>

    </thead>

    <!--body-->
<% 
  ResultSet rl=makale.selectAllData();
  while(rl.next()) { %>
   <tr>
     <td><%=rl.getString("baslik") %></td>
      <td><%=rl.getString("icerik") %></td>
       <td><%=rl.getString("alan") %></td>
       <td><%=rl.getString("durum") %></td>
       <td><%=rl.getString("tarih") %></td>
       <td><%=rl.getString("yazar") %></td>
               <% if (rl.getString("durum").equals("beklemede"))
        {%>
        <td><%=rl.getString("inceleyen") %></td>
        <td>-</td>
           <td>-</td>
        <td>-</td>
           <% 
         }%>
                 <% 
          String du=rl.getString("rapor");
         if (rl.getString("durum").equals("Tamamlanmis"))
        {%>
        <%if(du==null){ %>
     <td><%=rl.getString("inceleyen") %></td>
           <td>-</td>   
           <td>-</td>
           <td>-</td>
                <% }
        else
        {
        	%>
 <td><%=rl.getString("inceleyen") %></td>
         <td><%=rl.getString("rapor") %></td>
      <td>-</td>   <td>-</td>
                    <% 
        }
        
        }%>
         <% if (rl.getString("durum").equals("Atanmamis"))
        {%>
        <td>-</td>
        <td>-</td>
        
       <td><a href='makalesil.jsp?id=<%=rl.getInt("id")%>'>Sil<span class="glyphicon glyphicon-edit" style="font-size:24px; color:green;"></span></a></td>
          <% 
         }%>
        <% if (rl.getString("durum").equals("Atanmamis"))
        {%>
        <td><a href='makaleata.jsp?id=<%=rl.getInt("id")%>'>ATA<span class="glyphicon glyphicon-edit" style="font-size:24px; color:green;"></span></a></td>
           <% 
         }%>

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