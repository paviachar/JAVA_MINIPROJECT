<html> 
<head> 
<style> 
body { 
    margin:0; 
    font-family:Arial; 
    background:url("payment.jpg"); 
    background-size:cover; 
} 
.header { 
    background:#002147; 
    color:white; 
    padding:15px; 
    text-align:center; 
} 
.form-box { 
    width:350px; 
    margin:80px auto; 
    background:white; 
    padding:20px; 
    border-radius:10px; 
} 
input,select { 
    width:100%; 
    padding:8px; 
    margin:5px 0; 
} 
button { 
    width:100%; 
    padding:10px; 
    background:green; 
    color:white; 
    border:none; 
} 
</style> 
</head> 
 
<body> 
 
<div class="header"> 
<img src="logo.png" width="50"> 
<h2>Add Payment</h2> 
</div> 
 
<div class="form-box"> 
 
<form action="addPayment" method="post"> 
Student ID: <input type="text" name="sid" pattern="[0-9]+" title="Please enter a number" required><br> 
Name: <input type="text" name="sname"><br> 
Date: <input type="date" name="date"><br> 
Amount: <input type="text" name="amount"><br> 
 
<select name="status"> 
<option>Paid</option> 
<option>Overdue</option> 
</select> 
 
<button type="submit">Submit</button> 
 
</form> 
 
</div> 
 
</body> 
</html>