<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car Service Management System</title>
	 <link
      href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
      rel="stylesheet"
    />
    <style>
	@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Raleway:wght@400;700&display=swap");
	* {
	  font-family: "Poppins", sans-serif;
	  font-family: "Raleway", sans-serif;
	  margin: 0;
	  padding: 0;
	  box-sizing: border-box;
	  scroll-padding-top: 1rem;
	  scroll-behavior: smooth;
	  list-style: none;
	  text-decoration: none;
	}
	:root {
	  --main-color: #d90429;
	  --text-color: #020102;
	  --bg-color: #fff;
	  --hover-color: #d90429;
	}
	img {
	  width: 100%;
	}
	body {
	  color: var(--text-color);
	  box-sizing: border-box;
	}
	.container {
	  margin-left: auto;
	  margin-right: auto;
	  max-width: 1068px;
	}
	header {
	  display: block;
	  width: 100%;
	  position: fixed;
	  top: 0;
	  left: 0;
	  z-index: 100;
	}
	header.shadow{
	  background: var(--bg-color);
	  box-shadow: 4px 4px 20px rgb(15 54 55 / 10%)
	}
	header.shadow #search-icon{
	  color: var(--text-color);
	
	}
	.navbar {
	  display: flex;
	  align-items: center;
	  justify-content: space-between;
	  padding: 20px 30px;
	}
	#menu-icon {
	  font-size: 25px;
	  cursor: pointer;
	  color: var(--text-color);
	  display: none;
	}
	.logo {
	  font-size: 2rem;
	  font-weight: 800;
	  color: var(--text-color);
	}
	.logo span {
	  color: var(--hover-color);
	}
	.nav {
	  display: flex;
	  column-gap: 2rem;
	}
	.nav a {
	  text-transform: uppercase;
	  color: var(--text-color);
	  font-size: 1rem;
	  font-weight: 700;
	}
	.nav a:hover,
	.nav .active {
	  color: var(--hover-color);
	  border-bottom: 3px solid var(--hover-color);
	}
	#search-icon {
	  font-size: 25px;
	  cursor: pointer;
	  color: var(--bg-color);
	}
	.search-box {
	  position: absolute;
	  top: 110%;
	  right: 0;
	  left: 0;
	  background: var(--main-color);
	  box-shadow: 4px 4px 20px rgb(15 54 55 / 10%);
	  border: 1px solid var(--hover-color);
	  border-radius: 0.5rem;
	  clip-path: circle(0% at 100% 0%);
	}
	.search-box.active {
	  clip-path: circle(144% at 100% 0%);
	  transition: 0.5s;
	}
	.search-box input {
	  width: 100%;
	  padding: 20px;
	  /* background: transparent; */
	  font-size: 1rem;
	  /* border: none; */
	}
	.home {
	  max-width: 100%;
	  margin: auto;
	  width: 100%;
	  min-height: 640px;
	  display: flex;
	  align-items: center;
	 background-image: url(https://wp.technologyreview.com/wp-content/uploads/2020/02/screen-shot-2020-02-18-at-3.41.19-pm-2.png);
	  background-repeat: no-repeat;
	  background-position: centre left;
	  background-size: cover;
	}
	.home-text {
	  padding-left: 130px;
	}
	.home-text h1 {
	  font-size: 2rem;
	}
	.home-text span {
	  color:var(--hover-color);
	}
	.home-text p {
	  font-size: 0.989rem;
	  font-weight: 300;
	  margin: 1rem 0 1.2rem;
	  color:white;
	}
	.btn {
	  padding: 10px 20px;
	  background: var(--hover-color);
	  color: var(--bg-color);
	  font-weight: 400;
	}
	.btn:hover {
	  background: #fd052f;
	}
	.heading {
	  text-align: center;
	  margin-top: 50px;
	}
	.heading span {
	  font-weight: 600;
	  color: #d90429;
	}
	/* .heading h2{
	    color: var(--main-color);
	} */
	.heading p {
	  font-size: 1rem;
	  font-weight: 300;
	}
	.cars-container {
	  display: flex;
	  flex-wrap: wrap;
	  gap: 2rem;
	  margin-top: 2rem;
	}
	.cars-container .box {
	  flex: 1 1 17rem;
	  position: relative;
	  height: 200px;
	  border-radius: 0.5rem;
	  overflow: hidden;
	}
	.cars-container .box img {
	  height: 100%;
	  width: 100%;
	  object-fit: cover;
	  overflow: hidden;
	}
	.cars-container .box img:hover {
	  transform: scale(1.1);
	  transition: 0.5s;
	}
	.cars-container .box h2 {
	  position: absolute;
	  bottom: 1rem;
	  left: 1rem;
	  font-weight: 400;
	  font-size: 1rem;
	  background: var(--bg-color);
	  padding: 7px;
	  border-radius: 0.5rem;
	}
	.cars-container .box:hover h2 {
	  background: var(--main-color);
	  color: var(--bg-color);
	}
	.about {
	  display: flex;
	  flex-wrap: wrap;
	  align-items: center;
	  gap: 2.5rem;
	  margin-top: 50px;
	}
	.about-img {
	  flex: 1 1 21rem;
	}
	.about-text {
	  flex: 1 1 21rem;
	}
	.about-text span {
	  font-weight: 500;
	  color: var(--main-color);
	}
	.about-text h2 {
	  font-size: 1.7rem;
	}
	.about-text p {
	  font-size: 0.938rem;
	  margin: 0.5rem 0 1.4rem;
	}
	.parts-container {
	  display: flex;
	  flex-wrap: wrap;
	  gap: 2rem;
	  margin-top: 2rem;
	}
	.parts-container .box {
	  flex: 1 1 17rem;
	  position: relative;
	  padding: 20px;
	  display: flex;
	  flex-direction: column;
	  background: #ece3e3;
	  border-radius: 0.5rem;
	  align-items: center;
	  /* margin: 12px; */
	}
	.parts-container .box img {
	  width: 100%;
	  height: 170px;
	  object-fit: contain;
	  object-position: center;
	  margin-bottom: 1rem;
	}
	.parts-container .box h3 {
	font-size: 1.2rem;
	font-weight: 600;
	margin: 4px;
	}
	.parts-container .box .btn {
	    max-width: 150px;
	}
	/* many more we had to design in parts section */
	.para{
	    margin-bottom: 110px;
	    margin-top: 15px;
	}
	#id{
	    margin-top: 10px;
	}
	/* .heading-blog{
	background-color: #d90429;
	} */
	.blog-container{
	  display: flex;
	  flex-wrap: wrap;
	  gap: 2rem;
	  margin-top: 2rem;
	}
	.blog-container .box{
	flex: 1 1 13rem;
	padding: 20px;
	}
	.blog-container .box:hover{
	  background: #f6f6f6;
	} 
	.blog-container .box span{
	 font-size:0.8rem;
	 color: var(--main-color); 
	} 
	.blog-container h3{
	  font-size: 1.2rem;
	}
	.blog-container .box p{
	  font-size:0.938rem;
	  margin: 4px 0;
	}
	.footer{
	  margin-top: 5rem;
	  background: var(--text-color);
	  border-top: 2px solid var(--main-color);
	  color: #f6f6f6;
	}
	.footer-container{
	  display: flex;
	  justify-content: space-between;
	  gap: 1rem;
	}
	.footer-container .logo{
	  color: var(--bg-color);
	  margin-bottom: 1rem;
	}
	.footer-container .footer-box{
	  display: flex;
	  flex-direction: column;
	  margin: 40px;
	}
	.social{
	  display: flex;
	  align-items: center;
	
	}
	.social a{
	  font-size:24px;
	  color: var(--bg-color);
	  margin-right:1rem;
	}
	.social a:hover{
	  color: var(--main-color);
	}
	.footer-box h3{
	  font-size: 1.2rem;
	  font-weight: 400;
	  margin-bottom: 1rem;
	}
	.footer-box a,
	.footer-box p{
	  color: #818181;
	  margin-bottom:10px;
	}
	.footer-box a:hover{
	  color:var(--main-color) ;
	}</style>
</head>
<body>
	 <body>
    <header class="header">
      <div class="navbar container">
        <i class="bx bx-menu" id="menu-icon"></i>

        <!-- logo -->
        
        <a href="#" class="logo">Car Service <span>System</span></a>
        <!-- navbar -->
        <ul class="nav">
          <li><a href="http://localhost:8080/carservicecenter/pages/home.jsp" class="active">Home</a></li>
          <li><a href="service">Service</a></li>
          <li><a href="contact">Contact</a></li>
          <li><a href="http://localhost:8080/carservicecenter/pages/about.jsp">About us</a></li>
        </ul>
        <!-- search icon -->
        <i class="bx bx-search-alt" id="search-icon"></i>

        <!-- search box -->
        <div class="search-box container">
          <input type="search" name="" id="" placeholder="Search Here" />
        </div>
      </div>
    </header>

    <section class="home" id="home">
      <div class="home-text">
        <h1>
          Experience the Best <span>Cars</span><br />
          Services in India
        </h1>
        <p>
        	we provide effective automobile services
          <br />
          come here and join with us!
        </p>
        <a href="#" class="btn">Discover Now</a>
      </div>
    </section>

    <section class="cars" id="cars">
      <div class="heading">
        <!-- <span>Services</span> -->
        <h2>We Serviced</h2>
        <p>
          We Provide a wide variety of Car Services for you to choose from our
          System
        </p>
      </div>
      <!-- cars container -->
      <div class="cars-container container">
        <div class="box">
          <img
            src="https://images.unsplash.com/photo-1596986952526-3be237187071?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80"
            alt=""
          />
          <h2>Periodic Car Servicing</h2>
        </div>
        <div class="box">
          <img
            src="https://images.unsplash.com/photo-1487754180451-c456f719a1fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
            alt=""
          />
          <h2>Oil Change</h2>
        </div>
        <div class="box">
          <img
            src="https://images.unsplash.com/photo-1579966434883-d4648fdc7853?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
            alt=""
          />
          <h2>Denting Painting</h2>
        </div>
        <div class="box">
          <img
            src="https://images.unsplash.com/photo-1613214149922-f1809c99b414?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
            alt=""
          />
          <h2>Tyre Change</h2>
        </div>
        <div class="box">
          <img
            src="https://images.unsplash.com/photo-1482227227392-7a93c6fea65d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
            alt=""
          />
          <h2>Windsheild and Lights</h2>
        </div>
        <div class="box">
          <img
            src="https://images.unsplash.com/photo-1592318348310-f31b61a931c8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"
            alt=""
          />
          <h2>Battery Charge</h2>
        </div>
      </div>
    </section>
    <!-- about section -->

    <section class="about container" id="about">
      <div class="about-img">
        <img src="data:image/jpeg;base64,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" data-deferred="1" class="rg_i Q4LuWd" jsname="Q4LuWd" width="230" height="200" alt="244,800+ Red Car Stock Photos, Pictures &amp; Royalty-Free Images - iStock | Red  car white background, Red car on road, Red car driving" data-iml="1588" data-atf="true">
      </div>
      <div class="about-text">
        <span>About Us</span>
        <h2>Get DoorStep Pickup Of Cars</h2>
        <p>
        	Customer are able to do online booking
        	online best car services experience for customer
        </p>
        <a href="contact" class="btn">Contact Here</a>
      </div>
    </section>
    <section class="parts" id="parts">
      <div class="heading">
        <span>What We Offer</span>
        <h2>Our Car Services is Excellent</h2>
        <p>
         Our service is Excellent we provide all car services
         come more efficiently.
        </p>
      </div>

      <div class="parts-container container">
        <div class="box">
          <img data-ils="4" jsaction="rcuQ6b:trigger.M8vzZb;" class="rg_i Q4LuWd" jsname="Q4LuWd" width="275" height="190" alt="5,200+ Car Suspension Stock Photos, Pictures &amp; Royalty-Free Images - iStock  | Car suspension repair, Car suspension icon, Car suspension system" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfdact-8xjhAjytFWIJhWiuyjnKfGbU-v08Q&amp;usqp=CAU">
          <h3>Suspension</h3>
          <!-- <i class='bx bxs-star'></i> -->
          <a href="#" class="btn">Buy Now</a>
        </div>
        <div class="box">
          <img data-ils="4" jsaction="rcuQ6b:trigger.M8vzZb;" class="rg_i Q4LuWd" jsname="Q4LuWd" width="300" height="169" alt="Engine Parts Images - Free Download on Freepik" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRW9PuvV-Zn34lTHcg0KpvIhuV7RTd5Npjbrg&amp;usqp=CAU">
          <h3>Engine Parts</h3>
          <!-- <i class='bx bxs-star'></i> -->
          <a href="#" class="btn">Buy Now</a>
        </div>

        <div class="box">
          <img src="data:image/jpeg;base64,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" data-deferred="1" class="rg_i Q4LuWd" jsname="Q4LuWd" width="275" height="190" alt="365,202 Car Tools Images, Stock Photos &amp; Vectors | Shutterstock" data-iml="1395.2000000029802" data-atf="true" >
          <h3>Tools</h3>
          <!-- <i class='bx bxs-star'></i> -->
          <a href="#" class="btn">Buy Now</a>
        </div>

        <div class="box">
          <img data-ils="4" jsaction="rcuQ6b:trigger.M8vzZb;" class="rg_i Q4LuWd" jsname="Q4LuWd" width="245" height="180" alt="Sport car air filter performance hi-res stock photography and images - Alamy" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWiC0hp39goNxpOLK7ZOKuFwGWo9hUM6YZqA&amp;usqp=CAU">
          <h3>Air Filter</h3>
          <!-- <i class='bx bxs-star'></i> -->
          <a href="#" class="btn">Buy Now</a>
        </div>
        <div class="box">
          <img data-ils="4" jsaction="rcuQ6b:trigger.M8vzZb;" class="rg_i Q4LuWd" jsname="Q4LuWd" width="305" height="165" alt="Home — Omega Environmental Technologies" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTehoVwlOH96uYAXJ23nnh-QciuGyskgLjixg&amp;usqp=CAU">
          <h3>Ac Service</h3>
          <!-- <i class='bx bxs-star'></i> -->
          <a href="#" class="btn">Buy Now</a>
        </div>
        <div class="box">
          <img src="data:image/jpeg;base64,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" data-deferred="1" class="rg_i Q4LuWd" jsname="Q4LuWd" width="273" height="199" alt="JK Tyre 215/60 R17 Tubeless Car Tyre : Amazon.in: Car &amp; Motorbike" data-iml="2569.39999999851" data-atf="false">
          <h3>Tyres</h3>
          <!-- <i class='bx bxs-star'></i> -->
          <a href="#" class="btn">Buy Now</a>
        </div>
      </div>
    </section>

    <section class="blog" id="blog">
      <div class="heading">
        <span>Blog & News</span>
        <h2 id="id">We Have Various Outlet in All Over India</h2>
        <p class="para">
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis
          perferendis rem esse deleniti at laborum officia, repudiandae quae
          rerum deserunt!
        </p>
      </div>
      <div class="blog-container container">
        <!-- box 1 -->
        <div class="box">
          <img
            src="https://plus.unsplash.com/premium_photo-1676998430913-12457cc6c6f0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjV8fGNhciUyMHNlcnZpY2VzfGVufDB8MHwwfHw%3D&auto=format&fit=crop&w=500&q=60"
            alt=""
          />
          <span>Feb 14 2018</span>
          <h3>How to get Perfect car Services at Low Price</h3>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum
            dolor fuga ipsum molestias? Ipsum voluptates placeat doloribus
            minima laudantium dolores.
          </p>
          <a href="#" class="blog-btn">Read More</a>
          <i class="bx bxs-right-arrow-alt"></i>
        </div>
        <!-- box 1 -->
        <div class="box">
          <img
            src="https://plus.unsplash.com/premium_photo-1676998431103-e389923b7887?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
            alt=""
          />
          <span>Feb 14 2018</span>
          <h3>How to get Perfect car Services at Low Price</h3>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum
            dolor fuga ipsum molestias? Ipsum voluptates placeat doloribus
            minima laudantium dolores.
          </p>
          <a href="#" class="blog-btn">Read More</a>
          <i class="bx bxs-right-arrow-alt"></i>
        </div>
        <!-- box 1 -->
        <div class="box">
          <img
            src="https://images.unsplash.com/photo-1632823469850-2f77dd9c7f93?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"
            alt=""
          />
          <span>Feb 14 2018</span>
          <h3>How to get Perfect car Services at Low Price</h3>
          <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum
            dolor fuga ipsum molestias? Ipsum voluptates placeat doloribus
            minima laudantium dolores.
          </p>
          <a href="#" class="blog-btn">Read More</a>
          <i class="bx bxs-right-arrow-alt"></i>
        </div>
      </div>
    </section>
    <!-- footer section -->
    <section class="footer">
      <div class="footer-container container">
        <div class="footer-box">
          <a href="#" class="logo">Car <span>Service</span> System</a>
          <div class="social">
            <a href="#"><i class="bx bxl-facebook"></i></a>
            <a href="#"><i class="bx bxl-twitter"></i></a>
            <a href="#"><i class="bx bxl-instagram"></i></a>
            <a href="#"><i class="bx bxl-youtube"></i></a>
          </div>
        </div>
        <div class="footer-box">
          <h3>Page</h3>
          <a href="#">Cars</a>
          <a href="#">Parts</a>
          <a href="#">Service</a>
          <a href="#">About us</a>
        </div>
        <div class="footer-box">
          <h3>Legal</h3>
          <a href="#">Refund Policy</a>
          <a href="#">Cookie POlicy</a>
          <a href="#">Privacy</a>
        </div>
        <div class="footer-box">
          <h3>Contact Us</h3>
          <p>Delhi</p>
          <p>Mumbai</p>
          <p>Nagpur</p>
          <!-- <p>Dehradun</p> -->
        </div>
      </div>
    </section>
    <script >
    let search = document.querySelector('.search-box ');

    document.querySelector('#search-icon').onclick=()=>{
        search.classList.toggle('active');
    }

    let header = document.querySelector("header");
    window.addEventListener("scroll" ,()=>{
        header.classList.toggle('shadow', window.scrollY > 0);
    })
    </script>
</body>
</html>