<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
      <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
<html>

<head>
    <title>Edit Text Live On Input</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Edit-Text-Live-On-Input.css"/>
</head>
<body>
<jsp:useBean id="data" class="kategori.baglanti" scope="page"></jsp:useBean>
<jsp:useBean id="veri" class="kategori.getset" scope="page" ></jsp:useBean>
         <form  action="kategoriekleview.jsp" method="post">
        <input name="kategori" id="kategori" placeholder= "Kategori Ekleyiniz..."/>
       
    <div class="live">
        <h2></h2>
        <p></p>

       
  
                <button class="w3-button w3-light-grey w3-padding-large" type="submit">
            </form>
       Kaydet
        </button>
       
               <form  action="adminanasayfa.jsp" method="post">
           <br>
             <div class="submit">
       <button type="submit" value="SiL" align= "center"class="button button5">GERİ</button>
 </form>
       </div>

    </div>
    <script src="Edit-Text-Live-On-Input.js"></script>
</body>
</html>

<style>
* {
    box-sizing: border-box;
}

body{
    font-family: Arial, Helvetica, sans-serif;
}

input, textarea {
    display: block;
    width: 680px;
    height: 40px;
    padding: 10px;
    font-weight: bold;
    font-size: 20px;
    color: #14213d;
    border: 2px solid #8d99ae;
    border-radius: 20px;
    margin: 20px auto;
    outline: none;

}

textarea {
    height: 250px;
    font-size: 18px;
}

.live {
    margin: auto;
    background-color: #e9ecef;
    width: 680px;
    padding: 10px;
    border-radius: 20px;
    border: #8d99ae;
    box-shadow: 2px 2px 2px #ccc;

}

.live h2 {
    text-align: center;
    font-size: 24px;
    text-decoration: underline;
    color: brown;
    word-wrap: break-word
}

.live p {
    font-size: 18px;
    font-weight: bold;
    text-align: justify;
    word-wrap: break-word;
    line-height: 1.8;
}

.live p::first-letter {
    text-transform: capitalize;
}

</style>

<script>
var myInput = document.getElementById("baslik");
var myText  = document.getElementById("icerik");

var myDiv  = document.querySelector(".live");
var myh2   = document.querySelector(".live h2");
var myp    = document.querySelector(".live p");

myInput.onkeyup = function () {
    "use strict";
    myh2.textContent = this.value;
};

myText.onkeyup = function () {
    "use strict";
    myp.textContent = this.value;
};

            /*anothe solution for this problem using function params*/


/*
function live(get, set) {
    "use strict";
    set.textContent = get.value;
}

myInput.onkeyup = function () {
    "use strict";
    live(myInput, myDiv1);
};

myText.onkeyup = function () {
    "use strict";
    live(myText, myDiv2);
};*/</script>