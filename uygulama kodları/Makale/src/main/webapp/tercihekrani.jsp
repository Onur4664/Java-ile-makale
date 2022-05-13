<%@ page language="java" contentType="text/html; charset=ISO-8859-9"
    pageEncoding="ISO-8859-9"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-9">
<title>Insert title here</title>
</head>
<body>
<div class="record__wrap">
  <section class="record">
    <div  id="record1" class="record__display browser__1"></div>
    <div class="record__desc">
      <a href='yazargiris.jsp'>YAZAR GIRISI</a>
      <br><br><br>
       <a href='yazarkayit.jsp'>KAYIT EKRANI</a>
      <p>
 		Yazar girişi için lütfen buradan giriş yapınız.
      </p>
      
    </div>
  </section>
  
  <section class="record">
    <div id="record2" class="record__display browser__2"></div>
    <div class="record__desc">
     <a href='admingiris.jsp'>ADMİN GİRİŞİ</a>

      <p>
        Editör girişi için lütfen buradan giriş yapınız.
      </p>
    </div>
  </section>

  <section class="record">
    <div id="record3" class="record__display browser__3"></div>
    <div class="record__desc">
      <a href='hocagiris.jsp'>HOCA GİRİŞİ</a>
      <br><br><br>
       <a href='hocakayit.jsp'>KAYIT EKRANI</a>
      <p>
        Hoca girişi için lütfen buradan giriş yapınız.
      </p>
    </div>
  </section>
</div>

<div class="tagline">LÜTFEN GİRİŞ İÇİN ROLÜNÜZÜ SEÇİNİZ</div>
</body>
</html>
<style>
body {
	 background-color: #f2f2f2;
}
.record__wrap {
	 width: 90%;
	 margin: 100px auto;
	 display: flex;
	 justify-content: space-between;
}
.record {
	 position: relative;
	 width: 30%;
	 height: 20vw;
	 overflow: hidden;
	 background-color: #fff;
	 cursor: pointer;
	 transition: box-shadow 300ms;
}

 .record__display {
	 width: 100%;
	 height: 100%;
	 top: 0;
	 background-size: cover;
	 background-position: center center;
}

.browser__1{
  	 background-image: url("https://galamdash.com/wp-content/uploads/2019/03/c7cfdd8f1a927331606a9ecd7c45a1bc.jpg");
}

.browser__2{
  background-image: url("https://img.freepik.com/free-photo/admin-login-sign-made-wood-table_292052-431.jpg?size=626&ext=jpg"); 
}

.browser__3{
  background-image: url("http://img.gazetevatan.com/vatanmediafile/Haber598x362/2020/06/22/eba-seminer-canli-yayin-nasil-izlenir-ogretmen-se-4591062.Jpeg"); 
}

.record:hover .record__display {
	 height: 20%;
}
.record__desc {
	 margin: 20px 0 0 10px;
	 opacity: 0;
	 transition: opacity 400ms ease-in-out 190ms;
}
.record__desc h1 {
	 margin: 5px 0;
	 font-size: 3rem;
	 font-weight: 700;
}
.record__desc p {
	 font-size: 1rem;
	 line-height: 1.4em;
	 color: #666;
}
#record1,#record2,
#record3{
	 transition: height 700ms cubic-bezier(0.54, 0.21, 0.18, 1.35);
}

.record:hover .record__desc {
	 opacity: 1;
}
.tagline {
  font-size: 2rem;
	 margin: 50px 0;
	 text-align: center;
	 color: green;
}
 </style>