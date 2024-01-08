<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>main</title>
<style>
	@import url('https://fonts.googleapis.com/css2?family=Rasa:wght@500&display=swap');

*{
  margin:0;
 font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,"Noto Sans",sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
}
body{  
  height: 100%;
  width:100%;
  font-family: Arial , serif;
  background-color: #F0F2F5;
}
img 
{
  background-size: cover;
  background-repeat: no-rep"src/main/java/com/connection"eat;
  background-position: center center;
  width:100%;
  height:100vh;
}
.fade 
{
  -webkit-animation-name: fade-image;
  -webkit-animation-duration: 2.5s;
  animation-name: fade-image;
  animation-duration: 2.5s;
}
  
@-webkit-keyframes fade-image
{
  from {opacity: .8} 
  to {opacity: 1}
}
  
@keyframes fade-image
{
  from {opacity: .8} 
  to {opacity: 1}
}
.many
{
	color:#A5B4FC;
	font-weight: 600;
  	font-size:35px;
  	top: 8%;
  	left:22%;
  	padding: 15px;
  	text-align: center;
  	position: absolute;
  	font-fa
  	
}

.more{
  position: absolute;
  z-index:10;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  font-weight: 600;
  font-size: 30px;
  padding: 20px;
  cursor:pointer;
  background:transparent;
  opacity: 0.8;
  border-radius:10px;
  border:none;
  color:white;
  border: 2px solid white;
}

.more:hover{
  background-color:whitesmoke;
  color:black;
}
	
</style>
</head>
<body>
<div class="images fade">
    
    <img src="https://images.unsplash.com/photo-1580273916550-e323be2ae537?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=940&dpr=2&h=650" alt="photo1">
  </div>
  
  <div class="images fade">
    <img src="https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=940&dpr=2&h=650" alt="">
  </div>
  
  <div class="images fade">
    <img src="https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=940&dpr=2&h=650" alt="">
  </div>
  
  <div class="images fade">
    <img src="https://images.unsplash.com/photo-1542282088-fe8426682b8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Y2FyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=940&dpr=2&h=650" alt="">
  </div>
  <div><h1 class ="many" >WELCOME TO OUR CAR SERVICE CENTER MANAGEMENT SYSTEM</h1></div>
 
  <a href = "main" class ="more">Get Started To Know More</a>
  
</div>


<script type="text/javascript">
var slideIndex = 0;
showPics();

function showPics(){  

  var i = 0;
  var slides = document.getElementsByClassName("images");

  for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none"; 
  }
  
  slideIndex++; 

  if (slideIndex > slides.length) {
        slideIndex = 1;
  }
   for (i = 0; i < slides.length; i++) {
       slides[slideIndex - 1].style.display = "block";
    }
      setTimeout(showPics, 2000); 

}


</script>
</body>
</html>