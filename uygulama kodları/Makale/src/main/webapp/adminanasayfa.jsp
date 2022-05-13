<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
   <!-- Start Nav -->
    <nav>
        <ul>
            <li><a href="yazarlistesi.jsp">Yazar Listesi</a></li>
            <li><a href="makalelistesi.jsp">Makale Listesi</a></li>
            <li><a href="hocalistesi.jsp">Hoca Listesi</a></li>
            <li><a href="kategoriekle.jsp">Kategori Ekle</a></li>
        </ul>
    </nav>
    <!-- End Nav -->
    <!-- Star Header -->
    <header>
        <h1>Admin Sayfasına Hoşgeldiniz</h1> <br>
       
    </header>
    <!-- End Header -->
</body>
</html>
<style>
*{
    margin: 0;
    padding: 0;
}

nav{
    background: black;
}
nav ul{
    padding: 20px;
    margin-left: 700px;
}
nav ul li{
    list-style-type:none;
    display: inline;

    
}
nav a{
    text-decoration:none;
    color: #fff;
    padding: 0 10px;
    position: relative;
    font-family: 'Lexend Deca';
}
nav a::before{
    content: '';
    height: 4px;
    width: 0;
    left:0;
    bottom: -4px;
    background: #536dfe;
    position:absolute;
    transition: .5s;
}
nav a:hover::before{
    width: 100%;
}
/*Styling Header  */
header{
    height:calc(100vh - 60px);
    background-image: url('https://alternatiftarih.com/wp-content/uploads/2018/05/makale.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    text-align: center;
}
header h1{
    color: #fff;
    font-size:3rem;
    display: inline-block;
    margin-top: 200px;
    font-family: 'Lexend Deca';
}
header a{
    display: inline-block;
    margin-top: 30px;
    margin-left: 10px;
    text-decoration:none;
    color: #fff;
    padding:10px;
    border-radius: 30px;
    width: 150px;
    font-family: 'Lexend Deca';
    background:linear-gradient(to left ,#303F9F,#1A237E)
}

header a:hover{
    background: linear-gradient(to right,#1a237e,#283593)
}
@media only screen and (max-width:550px){
    header{
        height: auto;
    }
    header a{
        margin-bottom: 20px;
    }
}</style>