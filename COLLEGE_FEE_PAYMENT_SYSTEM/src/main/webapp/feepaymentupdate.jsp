<html>
<head>
<style>
body { 
    background: url("update.png"); 
    background-size: cover; 
}

/* BOX */
.box { 
    width: 350px; 
    margin: 100px auto; 
    background: white; 
    padding: 20px; 
}

/* COMMON BUTTON STYLE */
.btn {
    width: 100%;
    padding: 10px;
    margin-top: 10px;
    border: none;
    cursor: pointer;
    background: #e0e0e0;
    color: black;
}

/* HOVER EFFECT */
.btn:hover {
    background: #cfcfcf;
}
</style>
</head>

<body>
<div class="box">
<h3>Update Payment</h3>

<form action="updatePayment" method="post">
Payment ID: <input type="text" name="pid"><br>
Student ID: <input type="text" name="sid"><br>
Name: <input type="text" name="sname"><br>
Date: <input type="date" name="date"><br>
Amount: <input type="text" name="amount"><br>

<select name="status">
<option>Paid</option>
<option>Overdue</option>
</select><br>

<input type="submit" value="Update" class="btn">

<!-- BACK BUTTON -->
<a href="index.jsp">
    <button type="button" class="btn">Back</button>
</a>

</form>
</div>
</body>
</html>