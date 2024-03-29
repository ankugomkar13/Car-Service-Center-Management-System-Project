<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <title>Insert title here</title>
    <style type="text/css">
      @import url("https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700&display=swap");
      * {
        margin: 0px;
        padding: 0px;
        box-sizing: border-box;
      }
      body {
        display: flex;
        align-items: center;
        justify-content: center;
        background-image: url("https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80");
        background-size: cover;
        background-position: center;
        min-height: 700px;
        font-family: "Montserrat", sans-serif;
        background-repeat: no-repeat;
        height: 100vh;
      }
      .box {
        position: relative;
        width: 100%;
        height: 50px;
        background-color: #edf3f9;
        border-radius: 10px;
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
        transition: all 0.3s ease;
      }
      .box::after {
        content: "";
        position: absolute;
        width: 500px;
        height: 500px;
        transition: all 0.3s ease;
      }
      .box::before {
        content: "";
        position: absolute;
        width: 500px;
        height: 500px;
        transition: all 0.3s ease;
      }
      .box-animation::before {
        animation: animateInputBorder 4s linear infinite;
        animation-delay: -2s;
        background-image: conic-gradient(
          transparent,
          transparent,
          transparent,
          #00ccff
        );
      }
      .box-animation::after {
        animation: animateInputBorder 4s linear infinite;
        background-image: conic-gradient(
          transparent,
          transparent,
          transparent,
          #d400d4
        );
      }
      @keyframes animateInputBorder {
        0% {
          transform: rotate(0deg);
        }
        100% {
          transform: rotate(360deg);
        }
      }
      .box span {
        position: absolute;
        inset: 3px;
        background-color: #edf3f9;
        border-radius: 10px;
        z-index: 2;
      }
      .box span input {
        width: 100%;
        height: 100%;
        border: none;
        background-color: transparent;
        color: black;
        font-size: 20px;
        padding: 16px;
        position: relative;
      }
      .box span input:focus {
        outline: none;
        box-shadow: none;
      }
      .form-container {
        padding: 70px 0px;
        background-color: #d0deec;
        border-radius: 10px;
        overflow: hidden;
        position: relative;
        width: 50%;
        transition: 0.3s;
        min-height: 540px;
        z-index: 1;
        display: inline-flex;
        align-items: center;
      }

      .left-right .login-form {
        transform: translateX(-100%);
      }
      .form-wraper .input-group:not(:last-child) {
        margin-bottom: 30px;
      }
      .signUp-form {
        transform: translateX(100%);
      }
      .left-right .signUp-form {
        transform: translateX(0%);
      }
      .form-wraper {
        padding: 0px 40px;
        position: absolute;
        width: 100%;
        transition: 0.3s;
      }
      .action-button button {
        border-radius: 10px;
        font-family: "Avenir Next";
        font-size: 20px;
        padding: 0.5rem 3rem;
        color: black;
        box-shadow: 0 0 6px 0 rgba(157, 96, 212, 0.5);
        border: solid 3px transparent;
        background-image: linear-gradient(
            rgba(255, 255, 255, 0),
            rgba(255, 255, 255, 0)
          ),
          linear-gradient(101deg, #00ccff, #d400d4);
        background-origin: border-box;
        background-clip: content-box, border-box;
        box-shadow: none;
        color: #edf3f9;
        width: 100%;
        padding: 10px;
        margin-top: 30px;
        transition: all 0.3s ease;
      }
      .action-button button:hover {
        color: rgb(20, 20, 20);
        box-shadow: 2px 1000px 1px #edf3f9 inset;
      }
      .form-title {
        margin-bottom: 30px;
      }
      .main-form-container {
        min-width: 900px;
        background-color: rgba(0, 0, 0, 0.152);
        border-radius: 10px;
        position: relative;
        right: 100px;
        height: 0px;
        display: flex;
        align-items: center;
      }
      .bg-btn-container {
        display: flex;
        align-items: center;
        justify-content: space-around;
        position: absolute;
        width: 100%;
        height: 100%;
        top: 0;
        left: 0;
        z-index: 0;
      }
      .left-right {
        transform: translateX(100%);
      }
      .section {
        min-height: 800px;
      }
    </style>
    
 </head>
 
  <body>
    <form action="login">
      <div class="main-form-container">
        <div id="form_section" class="form-container">
          <div class="login-form form-wraper">
            <div>
              <div class="form-title">
                <h2>Login</h2>
              </div>
              <div class="input-group">
                <div class="box">
                  <span>
                    <input
                 	  placeholder="Email"
                      class="myInput"
                      type="text"
                      name="userid"
                    />
                  </span>
                </div>
              </div>
              <div class="input-group">
                <div class="box">
                  <span>
                    <input
                      placeholder="Password"
                      class="myInput"
                      type="password"
                      name="password"
                    />
                  </span>
                </div>
              </div>
             
              <div class="forget-password">
                <a href="">FORGOT PASSWORD</a>
              </div>
              <br />
              <div class="Sign up">
                <a
                  href="registrationform"
                  >SIGN UP</a
                >
              </div>
              <div class="action-button">
                <button>Login</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </form>
    <script>
      const inputs = document.querySelectorAll("input");
      inputs.forEach(function (input) {
        input.addEventListener("focus", function () {
          const parentElement = input.parentElement.parentElement;
          parentElement.classList.add("box-animation");
        });
        input.addEventListener("blur", function () {
          const parentElement = input.parentElement.parentElement;
          parentElement.classList.remove("box-animation");
        });
      });

      const buttons = document.querySelectorAll("#multiple-btn button");
      const form_container = document.getElementById("form_section");
      buttons.forEach((button) => {
        button.addEventListener("click", () => {
          form_container.classList.toggle("left-right");
        });
      });
    </script>
  </body>
</html>