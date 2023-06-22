<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Document</title>
    <style>
      * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
  }
  body {
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 30px;
    /* background:rgb(195, 195, 243); */
    background:rgb(255,237,213);
    /* background: rgb(255,165,0); */
  }
  .container {
    position: relative;
    max-width: 590px;
    width: 100%;
    border: 1px solid black;
    background: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: -1px 0px 10px 0px black;
  }
  .container header {
    font-size: 1.8rem;
    color: #333;
    font-weight: 500;
    text-align: center;
  }
  .container .form {
    margin-top: 30px;
  }
  .form .input-box {
    width: 100%;
    margin-top: 20px;
  }
  .input-box label {
    color: #333;
  }
  .form :where(.input-box input, .select-box) {
    position: relative;
    height: 40px;
    width: 100%;
    outline: none;
    font-size: 1rem;
    color: #707070;
    margin-top: 8px;
    border: 1px solid #ddd;
    border-radius: 6px;
    padding: 0 15px;
  }
  .input-box input:focus {
    box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
  }
  .form .column {
    display: flex;
    column-gap: 15px;
  }
  .form .gender-box {
    margin-top: 20px;
  }
  .gender-box h3 {
    color: #333;
    font-size: 1rem;
    font-weight: 400;
    margin-bottom: 8px;
  }
  .form :where(.gender-option, .gender) {
    display: flex;
    align-items: center;
    column-gap: 50px;
    flex-wrap: wrap;
  }
  .form .gender {
    column-gap: 5px;
  }
  .gender input {
    /* accent-color: rgb(130, 106, 251); */
accent-color: orange;
  }
  .form :where(.gender input, .gender label) {
    cursor: pointer;
  }
  .gender label {
    color: #707070;
  }
  .address :where(input, .select-box) {
    margin-top: 15px;
  }
  .select-box select {
    height: 100%;
    width: 100%;
    outline: none;
    border: none;
    color: #707070;
    font-size: 1rem;
  }
  .form button {
    height: 40px;
    width: 100%;
    color: #fff;
    font-size: 1rem;
    font-weight: 300;
    margin-top: 30px;
    border: none;
    cursor: pointer;
    transition: all 0.2s ease;
    /* background: rgb(130, 106, 251); */
    background-color: orange;
  }
  .form button:hover {
    /* background: rgb(88, 56, 250); */
    background: #6666;
  }
  button a{
    text-decoration: none;
    color: white;
  }
    </style>
</head>
<body >
<h1 style="color: green">${success}</h1>
<h1 style="color: red">${fail}</h1>
<section class="container">
    <header>Registration Form</header>
    <form action="/user/signup" method="post" class="form">
      <div class="input-box">
        <label>Full Name</label>
        <input type="text" placeholder="Enter Full Name" required name="name"/>
      </div>

      <div class="input-box">
        <label>Email Address</label>
        <input type="email" placeholder="Enter Email Address" required name="email"/>
      </div>

      <div class="column">
        <div class="input-box">
          <label>Phone Number</label>
          <input type="number" placeholder="Enter Phone Number" required name="mobile"/>
        </div>
        <!-- <div class="input-box">
          <label>Birth Date</label>
          <input type="date" placeholder="Enter birth date" required />
        </div> -->
      </div>
      <div class="gender-box">
        <h3>Gender</h3>
        <div class="gender-option">
          <div class="gender">
            <input type="radio" id="check-male" value="male" name="gender" checked />
            <label for="check-male">Male</label>
          </div>
          <div class="gender">
            <input type="radio" value="female" id="check-female" name="gender" />
            <label for="check-female">Female</label>
          </div>
    
      <div class="input-box">
        <label>Password</label>
        <input type="password" placeholder="Enter Password" required name="password" />
      </div>
      <div class="input-box">
        <label>Confirm Password</label>
        <input type="password" placeholder="Confirm your Password" required name="confirm_password" />
      </div>
      <!-- <div class="input-box">
        <label>User Role</label>
        <input type="text" placeholder="" required />
      </div> -->
      
        
      <button>Register Now</button>
      <button><a href="/jsp/User_login.jsp">Back</a></button>
    </form>
  </section>
</body>
</html>