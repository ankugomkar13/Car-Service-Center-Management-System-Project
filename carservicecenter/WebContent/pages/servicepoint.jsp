<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	a,
        a:active,
        a:focus {
            color: #6f6f6f;
            text-decoration: none;
            transition-timing-function: ease-in-out;
            -ms-transition-timing-function: ease-in-out;
            -moz-transition-timing-function: ease-in-out;
            -webkit-transition-timing-function: ease-in-out;
            -o-transition-timing-function: ease-in-out;
            transition-duration: .2s;
            -ms-transition-duration: .2s;
            -moz-transition-duration: .2s;
            -webkit-transition-duration: .2s;
            -o-transition-duration: .2s;
        }
.fancy-title-view1 {
    float: left;
    width: 100%;
    margin-bottom: 70px;
    text-align: center;
}
.fancy-title-view1 h2 {
    margin-bottom: 8px;
    font-size: 40px;
    font-weight: 700;
    display: block;
}
.fancy-title-view1 p {
    margin-bottom: 0px;
    display: inline-block;
    width: 65%;
}
.fancy-title-view1 i {
    font-size: 22px; }
.fancy-title-view1-color h2,
.fancy-title-view1-color p {
    color: #ffffff;
}

        .light-transparent {
    position: absolute;
    left: 0px;
    top: 0px;
    width: 100%;
    height: 100%;
    opacity: 0.65;
    background-color: #000;
}
.categories-view1-full {
    padding: 80px 0px 80px 0px;
    margin-top: 0;
    margin-bottom: 0;
    background: url(https://i.ibb.co/r4xf3sK/newslater.jpg);
    background-attachment: fixed;
    position: relative;
    min-height: 100vh;
}
.categories,.categories-view1-wrap {
    float: left;
    width: 100%;
}
.categories ul li       { list-style: none; }
.categories > ul > li   {
    float: none;
    display: inline-block;
    margin: 0px 0px 30px 0px;
    vertical-align: top;
}
.categories-view1-wrap {
    box-shadow: 0px 0px 25px 0px rgba(0,0,0,0.08);
    padding: 30px 50px 30px 95px;
    border-radius: 10px;
    position: relative;
    background-color: #ffffff;
}
.categories-view1 i {
    position: absolute;
    left: 0px;
    top: 50%;
    font-size: 30px;
        color: #fb236a;
    width: 70px;
    height: 70px;
    border-radius: 0 100% 100% 0;
    text-align: center;
    padding-top: 18px;
    margin-top: -36px;
    background-color: #ffffff;
    border: 1px solid #eee;
    border-left: none;
    -webkit-transition: all 0.4s ease-in-out;
       -moz-transition: all 0.4s ease-in-out;
        -ms-transition: all 0.4s ease-in-out;
         -o-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
}
.categories-view1 li:hover i {
    color: #ffffff;
    background-color: #274160;
}
.categories-view1 a {
    display: block;
    font-size: 18px;
    font-weight: 700;
    margin-bottom: 0px;
}
.categories-view1 small {
    font-size: 13px;
    color: #666;
}
.categories-view1 span {
    position: absolute;
    right: 5px;
    top: 8px;
    font-size: 90px;
    font-weight: 500;
    color: #999;
    opacity: 0.07;
    line-height: 1;
}
.main-load-btn {
    float: left;
    width: 100%;
    text-align: center;
    margin: 30px 0px;
}
.main-load-btn a {
    display: inline-block;
    line-height: 1;
    padding: 18px 45px;
    color: #ffffff;
    border-radius: 40px;
    font-size: 16px;
    font-weight: 600;
    -webkit-transition: all 0.4s ease-in-out;
    -moz-transition: all 0.4s ease-in-out;
    -ms-transition: all 0.4s ease-in-out;
    -o-transition: all 0.4s ease-in-out;
    transition: all 0.4s ease-in-out;
    background-color: #fb236a;
}
.main-load-btn a:hover {
    background-color: #274160;
}
.more-spacer {
    float: left;
    width: 100%;
    margin: 10px 0px;
}



</style>
</head>
<body>
	<div class="main-section categories-view1-full">
                <span class="light-transparent"></span>
                <div class="container">
                    <div class="row">

                        <div class="col-md-12">
                            
                            <!-- FancyTitle -->
                            <div class="fancy-title-view1 fancy-title-view1-color">
                                <h2>Top Categories</h2>
                                <p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Etiam in dui velit Fusce accumsan.</p>
                            </div>
                            <!-- FancyTitle -->

                            <!-- Categories List -->
                            <div class="categories categories-view1">
                                <ul class="row">
                                    <li class="col-md-4">
                                        <div class="categories-view1-wrap">
                                            <i class="fas fa-biohazard"></i>
                                            <a href="#">Lorem Ipsum</a>
                                            <small>(3 Open Vacancies)</small>
                                            <span>01</span>
                                        </div>
                                    </li>
                                    <li class="col-md-4">
                                        <div class="categories-view1-wrap">
                                            <i class="fas fa-broadcast-tower"></i>
                                            <a href="#">Lorem Ipsum</a>
                                            <small>(2 Open Vacancies)</small>
                                            <span>02</span>
                                        </div>
                                    </li>
                                    <li class="col-md-4">
                                        <div class="categories-view1-wrap">
                                            <i class="far fa-chart-bar"></i>
                                            <a href="#">Lorem Ipsum</a>
                                            <small>(13 Open Vacancies)</small>
                                            <span>03</span>
                                        </div>
                                    </li>
                                    <li class="col-md-4">
                                        <div class="categories-view1-wrap">
                                            <i class="fab fa-codepen"></i>
                                            <a href="#">Lorem Ipsum</a>
                                            <small>(22 Open Vacancies)</small>
                                            <span>04</span>
                                        </div>
                                    </li>
                                    <li class="col-md-4">
                                        <div class="categories-view1-wrap">
                                            <i class="fas fa-dna"></i>
                                            <a href="#">Lorem Ipsum</a>
                                            <small>(18 Open Vacancies)</small>
                                            <span>05</span>
                                        </div>
                                    </li>
                                    <li class="col-md-4">
                                        <div class="categories-view1-wrap">
                                            <i class="fas fa-layer-group"></i>
                                            <a href="#">Lorem Ipsum</a>
                                            <small>(4 Open Vacancies)</small>
                                            <span>06</span>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- Categories List -->

                            <div class="more-spacer"></div>
                            <div class="main-load-btn"> <a href="#">click here to book your services</a> </div>

                        </div>

                    </div>
                </div>
            </div>
</body>
</html>