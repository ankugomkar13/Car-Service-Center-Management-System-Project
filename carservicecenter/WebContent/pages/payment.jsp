<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>

main {
  align-items: center;
  display: flex;
  justify-content: center;
}



.payment-form {
  background-color: var(--color-bg-level3);
  border-radius: 8px;
  box-shadow: var(--elevation-shadow-3);
  display: grid;
  grid-row-gap: 32px;
  margin: 32px;
  min-width: 500px;
  padding: 32px;
  z-index: 1;
}



.main-header {
  align-items: center;
  background: linear-gradient(90deg, var(--color-selection-outline) 0%, var(--color-selection-edge-hover) 100%);
  border-radius: 8px 8px 0 0;
  color: white;
  display: flex;
  font-size: 32px;
  font-weight: bold;
  height: 96px;
  margin-left: -32px;
  margin-right: -32px;
  margin-top: -32px;
  
  span {
    margin-left: 32px;
  }
}



.row {
  display: grid;
  
  &.halves {
    grid-column-gap: 32px;
    grid-template-columns: 1fr 1fr;
  }
}



.product-info {
  background-color: var(--color-bg-level3-accent);
  border-radius: 4px;
  color: var(--color-content-subtle);
  display: flex;
  font-weight: bold;
  justify-content: space-between;
  padding: 24px 20px;
}



.divider {
  background-color: var(--color-bg-level1-accent);
  height: 1px;
  margin-left: -32px;
  margin-right: -32px;
}



input {
  background-color: var(--color-bg-level3);
  border: 1px solid var(--color-bg-level3-accent);
  border-radius: 16px;
  color: var(--color-content-subtle);
  font-family: 'Source Sans Pro', sans-serif;
  font-weight: bold;
  letter-spacing: 0.25px;
  padding: 20px;
  transition: box-shadow 0.1s ease, border-color 0.1s ease;
  width: auto;
  
  &:focus {
    border: var(--input-border-focus);
    box-shadow: var(--input-shadow-focus);
    cursor: pointer;
    transition: box-shadow 0.4s ease, border-color 0.4s ease;
  }
  
  &::-webkit-input-placeholder {
    color: var(--color-content-nonessential);
    font-weight: normal;
  }
}



.save-row {
  align-items: center;
  color: var(--color-content-subtle);
  display: flex;
  justify-content: flex-end;
}

.switch-wrapper {
  margin-left: 24px;
  margin-right: 12px;
  position: relative;
  width: 48px;
  
  &:hover {
    cursor: pointer;
  }
}

.switch-background {
  background: var(--color-bg-level3);
  border: 1px solid var(--color-bg-level3-accent);
  border-radius: 16px;
  height: 15px;
  width: 45px;
  transition: background 0.2s ease;
  
  .switch-wrapper.active & {
    background: var(--switch-background-gradient);
    transition: background 1s ease;
  }
}

.switch-handle {
  background-color: var(--color-bg-level3);
  border: 1px solid var(--color-bg-level3-accent);
  border-radius: 50%;
  box-shadow: var(--switch-handle-shadow);
  height: 30px;
  position: absolute;
  right: 30px;
  top: -7.5px;
  width: 30px;
  transition: box-shadow 0.1s ease, border-color 0.1s ease, right 0.4s ease;
  
  .switch-wrapper:hover & {
    background: var(--switch-handle-gradient);
    box-shadow: var(--switch-handle-shadow-hover);
    transition: box-shadow 0.4s ease, border-color 0.4s ease, right 0.4s ease;
  }
  
  .switch-wrapper.active & {
    right: -7.5px;
  }
}



button {
  background-color: var(--color-bg-level3);
  border: 1px solid var(--color-bg-level3-accent);
  border-radius: 16px;
  color: var(--color-content-nonessential);
  font-family: 'Source Sans Pro', sans-serif;
  font-weight: 700;
  padding: 20px;
  transition: box-shadow 0.1s ease, border-color 0.1s ease, color 0.1s ease;
  width: 100%;
  
  &:focus,
  &:hover {
    background: var(--button-background-hover);
    border: 1px solid var(--color-bg-level3);
    box-shadow: var(--button-shadow-hover);
    color: var(--color-content-subtle);
    cursor: pointer;
    transition: box-shadow 0.4s ease, border-color 0.4s ease, color 0.4s ease;
  }
  
  &:active {
    box-shadow: var(--button-shadow-active);
    transition: box-shadow 0.1s ease, border-color 0.1s ease, color 0.1s ease;
  }
}



.gray-block-1,
.gray-block-2 {
  background-color: var(--color-bg-level1-accent);
  height: 500px;
  position: fixed;
  transform: rotate(45deg);
  width: 500px;
}

.gray-block-1 {
  bottom: -250px;
  left: -300px;
}

.gray-block-2 {
  right: -300px;
  top: -250px;
}

#switch-theme {
  position: fixed;
  bottom: 8px;
  left: 8px;
  padding: 8px;
  font-weight: bold;
  color: var(--color-content-subtle);
  
  &:hover {
    color: var(--color-content-default);
    cursor: pointer;
  }
}



* {
  &:focus {
    outline: none;
  }
}

body {
  background-color: var(--color-bg-level3);
  font-family: 'Source Sans Pro', sans-serif;
  height: 100vh;
  position: relative;
}

:root {
  --color-bg-level0: rgba(255, 255, 255, 1);
  --color-bg-level0-accent: rgba(237, 240, 242, 1);
  --color-bg-level1: rgba(249, 250, 251, 1);
  --color-bg-level1-accent: rgba(228, 231, 235, 1);
  --color-bg-level2: rgba(242, 245, 247, 1);
  --color-bg-level2-accent: rgba(220, 225, 230, 1);
  --color-bg-level3: rgba(235, 239, 242, 1);
  --color-bg-level3-accent: rgba(211, 216, 222, 1);
  --color-content-contrast: rgba(19, 41, 63, 1);
  --color-content-default: rgba(19, 41, 63, 0.8);
  --color-content-subtle: rgba(19, 41, 63, 0.65);
  --color-content-nonessential: rgba(19, 41, 63, 0.4);
  
  --elevation-shadow-3: 0 16px 32px rgba(0, 0, 0, 0.2),
    0 0 64px rgba(0, 0, 0, 0.05);
  
  --color-selection-outline: rgba(0, 156, 227, 1);
  --color-selection-edge-hover: rgba(127, 215, 255, 1);
  
  --input-border-focus: 1px solid rgba(226, 231, 237, 1);
  --input-shadow-focus: inset -5px -5px 10px 0 var(--color-bg-level1), inset 5px 5px 10px 0 rgba(200, 204, 207, 1);

  --switch-handle-gradient: linear-gradient(115deg, rgba(100, 100, 100, 0.02), rgba(255, 255, 255, 0.5)), var(--color-bg-level3);
  --switch-handle-shadow: 2px 2px 5px rgba(200, 204, 207, 1);
  --switch-handle-shadow-hover: 5px 5px 10px rgba(200, 204, 207, 1);
  --switch-background-gradient: linear-gradient(115deg, rgba(100, 100, 100, 0.02), rgba(255, 255, 255, 0.5)), var(--color-selection-outline);
  
  --button-background-hover: linear-gradient(115deg, rgba(100, 100, 100, 0.02), rgba(255, 255, 255, 0.5)), var(--color-bg-level3);
  --button-shadow-hover: -10px -10px 20px var(--color-bg-level1), 10px 10px 20px rgba(200, 204, 207, 1);
  --button-shadow-active: -2px -2px 10px var(--color-bg-level1), 2px 2px 5px rgba(200, 204, 207, 1);
}

.dark {
  --color-bg-level0: rgba(16, 20, 23, 1);
  --color-bg-level0-accent: rgba(35, 42, 49, 1);
  --color-bg-level1: rgba(25, 31, 36, 1);
  --color-bg-level1-accent: rgba(44, 52, 62, 1);
  --color-bg-level2: rgba(35, 42, 49, 1);
  --color-bg-level2-accent: rgba(49, 59, 69, 1);
  --color-bg-level3: rgba(53, 63, 74, 1);
  --color-bg-level3-accent: rgba(69, 82, 94, 1);
  --color-content-contrast: rgba(230, 242, 255, 1);
  --color-content-default: rgba(230, 242, 255, 0.8);
  --color-content-subtle: rgba(230, 242, 255, 0.65);
  --color-content-nonessential: rgba(230, 242, 255, 0.4);
  
  --elevation-shadow-3: 0 16px 32px rgba(0, 0, 0, 0.3),
    0 0 64px rgba(0, 0, 0, 0.1);
  
  --color-selection-outline: rgba(0, 156, 227, 1);
  --color-selection-edge-hover: rgba(0, 103, 150, 1);
  
  --input-border-focus: 1px solid rgba(29, 24, 18, 0.15);
  --input-shadow-focus: inset -5px -5px 10px 0 var(--color-bg-level3-accent), inset 5px 5px 10px 0 rgba(0, 0, 0, 0.3);

  --switch-handle-gradient: linear-gradient(115deg, rgba(155, 155, 155, 0.02), rgba(0, 0, 0, 0.1)), var(--color-bg-level3);
  --switch-handle-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
  --switch-handle-shadow-hover: 5px 5px 10px rgba(0, 0, 0, 0.3);
  --switch-background-gradient: linear-gradient(115deg, rgba(155, 155, 155, 0.02), var(--color-bg-level3)), var(--color-selection-outline);
  
  --button-background-hover: linear-gradient(115deg, rgba(155, 155, 155, 0.02), rgba(0, 0, 0, 0.1)), var(--color-bg-level3);
  --button-shadow-hover: -10px -10px 20px var(--color-bg-level3-accent), 10px 10px 20px rgba(0, 0, 0, 0.3);
  --button-shadow-active: -2px -2px 10px var(--color-bg-level3-accent), 2px 2px 5px rgba(0, 0, 0, 0.3);
}

</style>
</head>
<body>
<main>
  <div class="payment-form">
    <div class="main-header">
      <span>Payment Details</span>
    </div>

    <section class="row">
      <div class="product-info">
        <div>Total Bill of Car Services</div>
        <div>51000</div>
      </div>
    </section>

    <div class="divider"></div>

    <div class="row">
      <input type="text" placeholder="Name on Card" name = "cardholder" />
    </div>

    <div class="row">
      <input type="text" placeholder="Card Number" name = "cardno" />
    </div>

    <div class="row halves">
      <input type="text" placeholder="Expiration Date" name ="expdate" />

      <input type="text" placeholder="CCV" name = "cvv" />
    </div>

    <div class="row">
      <div class="save-row">
        Save Payment Information
        <div class="switch-wrapper" id="switch">
          <div class="switch-background"></div>
          <div class="switch-handle"></div>
        </div>
      </div>
    </div>

    <div class="divider"></div>

    <section>
     <a href ="http://localhost:8080/carservicecenter/pages/thanks.jsp"><button>Submit Payment</button></a>
    </section>
  </div>
</main>

<div class="gray-block-1"></div>
<div class="gray-block-2"></div>

<div id="switch-theme">Switch Theme</div>
<script type="text/javascript">
	var switchEl = document.getElementById('switch');
	var toggleEl = document.getElementById('switch-theme');
	
	switchEl.addEventListener('click', e => {
	  switchEl.classList.toggle('active');
	});
	
	toggleEl.addEventListener('click', e => {
	  document.body.classList.toggle('dark');
	});

</script>
</body>
</html>