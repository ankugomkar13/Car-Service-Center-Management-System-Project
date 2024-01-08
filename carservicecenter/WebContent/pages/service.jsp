<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>service</title>
<style>@import url('https://fonts.googleapis.com/css2?family=Merriweather&family=Open+Sans&display=swap');

*,
*::before,
*::after {
  box-sizing: border-box;
}

body {
  width: 100%;
  height: auto;
  margin: 0;
			background: linear-gradient(rgba(255, 255, 255, 0.2), rgba(255, 255, 255, 0.2)), url('https://images.unsplash.com/photo-1580273916550-e323be2ae537?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGNhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60');
			background-repeat: no-repeat;
			background-size: cover;
			font-family: 'Open Sans', sans-serif;
			font-size: 1.2rem;
			line-height: 1.618;
			color: rgb(255, 255, 255);
		}

h1 {
  font-size: 2rem;
  font-family: 'Merriweather', serif;
  text-transform: uppercase;
}

h1, p {
  margin: 1em auto;
  text-align: center;
}

form {
  width: 60vw;
	max-width: 500px;
	min-width: 300px;
	margin: 0 auto;
  padding-bottom: 2em;
}

fieldset {
  border: none;
  padding: 1.2rem 0;
}
label {
  font-size: 1rem;
  font-weight: bold;
  display: block;
	margin: 0.5rem 0;
}

.inline {
  width: unset;
  margin: 0 0.5em 0 0;
  vertical-align: middle;
}

input,
textarea,
select {
  margin: 7px 0 0 15px;
	width: 100%;
  min-height: 2em;
}

select, .room {
			width: 7rem;
      padding: 5px;
			border: none;
			background-color: rgba(255, 255, 255);
      box-shadow: rgba(0,0,0,.1) 0 0 8px;			
		}
select {           
			position: relative;
      border-radius: 5px;
      display: inline-block;
		}

input, textarea {
  border: none;
  border-radius: 5px;
  color: rgba(10, 10, 35, 0.7);
}

input[type="submit"] {
  display: block;
  width: 60%;
  margin: 1em auto;
  height: 2em;
  font-size: 1.1rem;
  background-color: #3b3b4f;
  border-color: white;
  min-width: 300px;
  color: inherit;
}
</style>
</head>
<body>
 <h1>Booking Services</h1>
  <p>Please fill out this form with the required information</p>
  <form action="service">
    
    <fieldset>
      <label>Customer Name 
        <input type="text" name="name" required /></label>
      <label>Email
      <input type="email" name="email" required />
      </label>
      <label>Phone Number 
      <input type="text" name="phone" required />
      </label>
      
      <label>Check-in Date
      <input type="date" name="check-in-date" required />
      </label>
      <label>Check-out Date
      <input type="date" name="check-out-date" required />
      </label>
       </fieldset>
    <fieldset>
      <label>Car Company<input type="text" name="carcmp" min="1" max="100" class="room"/><br><br>
      <label>Car Model<input type="text" name="car" min="1" max="100" class="room"/><br><br>
   
        <label> Select Service<br>
        <label><input type="checkbox" name="service1" class="inline" /> Oil Change</label>
        <label><input type="checkbox" name="service2" class="inline" /> Tyre Changing</label>
        <label><input type="checkbox" name="service3"  class="inline" />Brake Service</label>
        <label><input type="checkbox" name="service4" class="inline" /> Engine Tune-Up</label>
         <label><input type="checkbox" name="service5"  class="inline" />Windshield and lightse</label>
         <label><input type="checkbox" name="service6" class="inline" />Automotive Repair</label>
         <label><input type="checkbox" name="service7"  class="inline" />Part Fabrication</label>
			  </label>
      </label><br>
      <label>Additional Requests
      <textarea name="additional" rows="5" cols="30" placeholder="Your message ..."></textarea>
      </label>
    </fieldset>
    <input type="submit" value="Submit" />
  </form>
</body>
</html>