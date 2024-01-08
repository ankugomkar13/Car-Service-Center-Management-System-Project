<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>About us</title>
  <link rel="stylesheet" href="{% static 'about.css' %}" />
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
    integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="icon" href="{% static 'PICO-LOGO-SHORT.png' %}" type="image/gif">
  <style type="text/css">
  
  	@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

body {
  min-height: 100vh;
}

/* -----------------company----------------------- */
.company {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
}

.company-info {
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.img {
  width: 100%;
  margin: 1rem 0rem 0rem 2rem;
}

.img img {
  width: 100%;
}

.company-info {
  width: 100%;
  margin-right: 4rem;
}

.company-info span {
  font-size: 2.5rem;
  font-weight: bold;
}

.company-info span .our {
  color: #ffdc0e;
}

.company-info p{
  font-size: 1.1rem;
}
/* ----------------------------------------------- */

.team {
  display: flex;
  justify-content: center;
}

.team span {
  font-size: 2.5rem;
  font-weight: bold;
  border-bottom: 4px solid #ffdc0e;
}

.container {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
}

.card {
  position: relative;
  background: #fff;
  max-width: 350px;
  width: 350px;
  margin: 20px;
  border-radius: 2px;
  box-shadow: 0 5px 25px rgb(1 1 1 / 10%);
}

.card-image {
  max-height: 50vh;
  overflow: hidden;
}

.card-image img {
  max-width: 100%;
  height: auto;
  visibility: hidden;
}

.card-title span {
  visibility: hidden;
}

.yellow-surname {
  color: #ffdc0e;
}

.card-description span {
  visibility: hidden;
}

.card-mediaIcons a i {
  visibility: hidden;
}

.card-info {
  position: relative;
  color: #222;
  padding: 20px;
}

.card-info h3 {
  font-size: 1.4em;
  font-weight: 700;
  margin-bottom: 10px;
}

.card-info h4 {
  font-size: 1rem;
  font-weight: normal;
}

.card-info a {
  text-decoration: none;
  color: navy;
}

.card-info p {
  font-size: 1em;
  margin-bottom: 15px;
}

.card-info .card-mediaIcons {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
}

.card-info .card-mediaIcons a {
  color: #999;
  font-size: 1.4em;
  margin: 0 10px;
  width: 40px;
  height: 40px;
  display: flex;
  justify-content: center;
  align-items: center;
  text-decoration: none;
  border-radius: 50%;
  transition: color 0.3s ease;
}

.card-info .card-mediaIcons a:hover {
  color: #222;
}

.card-mediaIcons a img {
  width: 40px;
}

.loading {
  position: relative;
  background: #e2e2e2;
  overflow: hidden;
}

.loading:before {
  content: "";
  position: absolute;
  width: 100%;
  height: 100%;
  background: linear-gradient(
    90deg,
    transparent,
    rgba(255, 255, 255, 0.2),
    transparent
  );
  transform: translateX(-100%);
  animation: loading 1.5s infinite;
}

.info {
  font-size: 1.2rem;
  font-weight: 500;
}

@keyframes loading {
  100% {
    transform: translateX(100%);
  }
}

/* ------------------------------footer---------------------------------------- */
footer {
  background: #000;
  width: 100%;
  bottom: 0;
  left: 0;
}

footer .content {
  max-width: 1250px;
  margin: auto;
  padding: 30px 40px 40px 40px;
}
footer .content .top {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin-bottom: 50px;
}
.content .top .logo-details {
  color: #fdd166;
  font-size: 30px;
}
.content .top .media-icons {
  display: flex;
}
.content .top .media-icons a {
  height: 40px;
  width: 40px;
  margin: 0 8px;
  border-radius: 50%;
  text-align: center;
  line-height: 40px;
  color: #fff;
  font-size: 17px;
  text-decoration: none;
  transition: all 0.4s ease;
}
.top .media-icons a:nth-child(1) {
  background: #4267b2;
}
.top .media-icons a:nth-child(1):hover {
  color: #4267b2;
  background: #fff;
}

.top .media-icons a:nth-child(2) {
  background: #e1306c;
}
.top .media-icons a:nth-child(2):hover {
  color: #e1306c;
  background: #fff;
}

footer .content .link-boxes {
  width: 100%;
  display: flex;
  justify-content: space-between;
}
footer .content .link-boxes .box {
  width: calc(100% / 5 - 10px);
}
.content .link-boxes .box .link_name {
  color: #fff;
  font-size: 18px;
  font-weight: 400;
  margin-bottom: 10px;
  position: relative;
}
.link-boxes .box .link_name::before {
  content: "";
  position: absolute;
  left: 0;
  bottom: -2px;
  height: 2px;
  width: 35px;
  background: #fdd166;
}
.content .link-boxes .box li {
  margin: 6px 0;
  list-style: none;
}
.content .link-boxes .box li a {
  color: #fff;
  font-size: 14px;
  font-weight: 400;
  text-decoration: none;
  opacity: 0.8;
  transition: all 0.4s ease;
}
.content .link-boxes .box li a:hover {
  opacity: 1;
  text-decoration: underline;
}
.content .link-boxes .input-box {
  margin-right: 55px;
}
.link-boxes .input-box input {
  height: 40px;
  width: calc(100% + 55px);
  outline: none;
  border: 2px solid #afafb6;
  background: #140b5c;
  border-radius: 4px;
  padding: 0 15px;
  font-size: 15px;
  color: #fff;
  margin-top: 5px;
}
.link-boxes .input-box input::placeholder {
  color: #afafb6;
  font-size: 16px;
}
.link-boxes .input-box input[type="button"] {
  background: #fff;
  color: #140b5c;
  border: none;
  font-size: 18px;
  font-weight: 500;
  margin: 4px 0;
  opacity: 0.8;
  cursor: pointer;
  transition: all 0.4s ease;
}
.input-box input[type="button"]:hover {
  opacity: 1;
}
footer .bottom-details {
  width: 100%;
  background: #000;
  border-top: 0.5px solid #fff;
}
footer .bottom-details .bottom_text {
  max-width: 1250px;
  margin: auto;
  padding: 20px 40px;
  display: flex;
  justify-content: space-between;
}
.bottom-details .bottom_text span,
.bottom-details .bottom_text a {
  font-size: 14px;
  font-weight: 300;
  color: #fff;
  opacity: 0.8;
  text-decoration: none;
}
.bottom-details .bottom_text a:hover {
  opacity: 1;
  text-decoration: underline;
}
.bottom-details .bottom_text a {
  margin-right: 10px;
}

/* ------------------------------------------media-footer------------------------------------------- */
@media (max-width: 900px) {
  .company-info {
    width: 100%;
    margin-right: 0rem;
    margin-left: 1rem;
  }
  .company-info p{
    margin-right: 2rem;
    text-align: center;
  }
  .company-info span {
    font-size: 1.7rem;
    font-weight: bold;
    text-align: center;
  }
  .team {
    display: flex;
    justify-content: center;
  }

  .team span {
    font-size: 1.7rem;
    font-weight: bold;
  }
  .company {
    display: flex;
    flex-direction: column;
  }
  .img {
    margin-left: 0rem;
  }
  footer .content .link-boxes {
    flex-wrap: wrap;
  }
  footer .content .link-boxes .input-box {
    width: 40%;
    margin-top: 10px;
  }
}
@media (max-width: 700px) {
  footer {
    position: relative;
  }
  .content .top .logo-details {
    font-size: 26px;
  }
  .content .top .media-icons a {
    height: 35px;
    width: 35px;
    font-size: 14px;
    line-height: 35px;
  }
  footer .content .link-boxes .box {
    width: calc(100% / 3 - 10px);
  }
  footer .content .link-boxes .input-box {
    width: 60%;
  }
  .bottom-details .bottom_text span,
  .bottom-details .bottom_text a {
    font-size: 12px;
  }
}
@media (max-width: 520px) {
  footer::before {
    top: 145px;
  }
  footer .content .top {
    flex-direction: column;
  }
  .content .top .media-icons {
    margin-top: 16px;
  }
  footer .content .link-boxes .box {
    width: calc(100% / 2 - 10px);
  }
  footer .content .link-boxes .input-box {
    width: 100%;
  }
}
@media(max-width:320px){
  .company-info p{
    margin-right: 0rem;
  }
}
/* ---------------------------------------------------------------------------- */
  
  </style>
</head>

<body>

  <!-- -----------------------------------------------company---------------------------------------------------------------- -->
  <div class="company">
    <div class="img">
 	<img src="data:image/png;base64,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" data-deferred="1" class="rg_i Q4LuWd" jsname="Q4LuWd" width="300" height="352" alt="About Us PNG Images Transparent Free Download | PNGMart" data-iml="952.1999999880791" data-atf="true">
    </div>
    <div class="company-info">
      <span>BEST<span class="our">SERVICES HERE</span></span>
      <p>
        <b>This project </b>car service center management system is web-based application.
         car service centre management system is developed for maintaining the service centre activities like car maintainence , 
         car automobiles service. automobile service Like repairing , washing , denting painting ,
         suspension and fitment ,Ac repair ,battery The purpose of developing 
         this project is to provide or manage any  automobile services like periodic car servicing , oil change, denting painting ,
         tyre change , battery changes and many more services more effectively than the existing system. 
      </p>
    </div>
  </div>
  <!-- ---------------------------------------------------------------------------------------------------------------------- -->
  <!-- ----------------------------------------------------team-------------------------------------------------------------- -->
  <div class="team"><span>OUR TEAM</span></div>
  <div class="container">
    <div class="card">
      <div class="card-image loading"><img src="https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="" /></div>
      <div class="card-info">
        <h3 class="card-title loading"><span>Yash <span class="yellow-surname">Falke</span></span></h3>
        <p class="card-description loading">
        </p>
        <div class="card-mediaIcons">
          <a href="#" class="loading" target="on_blank"><i class="fab fa-facebook-f"></i></a>
          <a href="{% url 'viewprofile' 9 %}" class="loading" target="on_blank"><i><img
                src="https://raw.githubusercontent.com/pico-india/main-django/main/static/PICO-LOGO-SHORT.png" alt="Pico"></a></i>
          <a href="https://www.instagram.com/yashfalke77/" class="loading" target="on_blank"><i
              class="fab fa-instagram"></i></a>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-image loading"><img src="https://media.istockphoto.com/photos/portrait-of-handsome-latino-african-man-picture-id1007763808?k=20&m=1007763808&s=612x612&w=0&h=q4qlV-99EK1VHePL1-Xon4gpdpK7kz3631XK4Hgr1ls=" alt="" /></div>
      <div class="card-info">
        <h3 class="card-title loading"><span>Harsh <span class="yellow-surname">Sunwani</span></span></h3>
        <p class="card-description loading">
          <span class="personal-info"></span>
        </p>
        <div class="card-mediaIcons">
          <a href="#" class="loading" target="on_blank"><i class="fab fa-facebook-f"></i></a>
          <a href="{% url 'viewprofile' 7 %}" class="loading" target="on_blank"><i><img
                src="https://raw.githubusercontent.com/pico-india/main-django/main/static/PICO-LOGO-SHORT.png" alt="Pico"></i></a>
          <a href="https://www.instagram.com/harshsunwani/" class="loading" target="on_blank"><i
              class="fab fa-instagram"></i></a>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-image loading"><img src="https://images.pexels.com/photos/837358/pexels-photo-837358.jpeg?auto=compress&cs=tinysrgb&w=600" alt="" /></div>
      <div class="card-info">
        <h3 class="card-title loading"><span>Nikhil <span class="yellow-surname">Jaiswal</span></span></h3>
        <p class="card-description loading">
          <span class="personal-info">
           
        </p>
        <div class="card-mediaIcons">
          <a href="#" class="loading" target="on_blank"><i class="fab fa-facebook-f"></i></a>
          <a href="{% url 'viewprofile' 6 %}" class="loading" target="on_blank"><i><img
                src="https://raw.githubusercontent.com/pico-india/main-django/main/static/PICO-LOGO-SHORT.png" alt="Pico"></a></i>
          <a href="#" class="loading" target="on_blank"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
    </div>
  </div>
  <!-- ----------------------------------------footer------------------------------------------ -->
  <footer>
    <div class="content">
      <div class="top">
        <div class="logo-details">
          <span class="logo_name">Pico</span>
        </div>
        <div class="media-icons">
          <a target="on_blank" href="#"><i class="fab fa-facebook"></i></a>
          <a target="on_blank" href="https://www.instagram.com/pico_india/"><i class="fab fa-instagram"></i></a>
        </div>
      </div>
      <div class="link-boxes">
        <ul class="box">
          <li class="link_name">Links</li>
          <li><a href="{% url 'home' %}">Home</a></li>
          <li><a href="{% url 'about' %}">About Us</a></li>
          <li><a href="{% url 'upload' %}">Submit Photo</a></li>

        </ul>
        <ul class="box">
          <li class="link_name">Recommended</li>
          <li><a href="{% url 'category' 6 %}">India</a></li>
          <li><a href="{% url 'category' 5 %">Art and Culture</a></li>
          <li><a href="{% url 'category' 11 %">People</a></li>
          <li><a href="{% url 'category' 2 %">Travel</a></li>

        </ul>
        <ul class="box">
          <li class="link_name">Legal Info</li>
          <li><a href="{% url 'licence' %}">Licence</a></li>
          <li><a href="{% url 'terms' %}">Terms and Conditions</a></li>
          <li><a href="{% url 'privacy' %}">Privacy Policies</a></li>

        </ul>
        <ul class="box">
          <li class="link_name">Contact</li>
          <li><a target="on_blank" href="tel:+919079680135">+91 9079680135</a></li>
          <li><a target="on_blank" href="mailto:'connectpicoindia@gmail.com'">contactpicoindia@gmail.com</a></li>
        </ul>
      </div>
    </div>

    <div class="bottom-details">
      <div class="bottom_text">
        <span class="copyright_text">Copyright © 2021 <a href="#">Pico.</a></span>
      </div>
    </div>
  </footer>
  <!-- ---------------------------------------------------------------------------------------- -->
  <!-- -------------------------------------------------------------------------------------------- -->
  
  
  <script type="text/javascript">
  
  const cardImages = document.querySelectorAll(".card-image");
  const cardTitles = document.querySelectorAll(".card-title");
  const cardDescriptions = document.querySelectorAll(".card-description");
  const cardMediaIcons = document.querySelectorAll(".card-mediaIcons a");
  const cardImgs = document.querySelectorAll(".card-image img");
  const cardTitleSpans = document.querySelectorAll(".card-title span");
  const cardDescSpans = document.querySelectorAll(".card-description span");
  const mediaIcons = document.querySelectorAll(".card-mediaIcons a i");

  const renderCard = () => {
    //Remove the skeleton loading effect
    cardImages.forEach((cardImage) => {
      cardImage.classList.remove("loading");
    });
    cardTitles.forEach((cardTitle) => {
      cardTitle.classList.remove("loading");
    });
    cardDescriptions.forEach((cardDescription) => {
      cardDescription.classList.remove("loading");
    });
    cardMediaIcons.forEach((cardMediaIcon) => {
      cardMediaIcon.classList.remove("loading");
    });

    //Show the hidden html elements
    cardImgs.forEach((cardImg) => {
      cardImg.style.visibility = "visible";
    });
    cardTitleSpans.forEach((cardTitleSpan) => {
      cardTitleSpan.style.visibility = "visible";
    });
    cardDescSpans.forEach((cardDescSpan) => {
      cardDescSpan.style.visibility = "visible";
    });
    mediaIcons.forEach((mediaIcon) => {
      mediaIcon.style.visibility = "visible";
    });
  }

  //Execute renderCard on setTimeout
  setTimeout(() => {
    renderCard();
  }, 1000);

  //Execute renderCard after the page loaded
  //window.addEventListener("load", () => {
    //renderCard();
  //});

    
  
  
  
  </script>

</html>