<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
<style>
body {
    margin: 0;
    font-family: Arial;
    background: linear-gradient(135deg, #74ebd5, #ACB6E5);
}

/* Center container */
.box {
width: 450px;
margin: 150px auto;
background: white;
padding: 40px;
border-radius: 15px;
box-shadow: 0px 6px 20px rgba(0,0,0,0.3);
text-align: center;
}

/* Heading */
h2 {
margin-bottom: 20px;
color: #333;
font-size: 28px;
}

/* Input */
input {
width: 100%;
padding: 15px;
margin: 15px 0;
border-radius: 8px;
border: 1px solid #ccc;
font-size: 16px;
}

/* Buttons */
button {
width: 100%;
padding: 15px;
margin-top: 15px; /* ✅ GAP ADDED */
color: white;
border: none;
border-radius: 8px;
font-size: 18px;
font-weight: bold;
cursor: pointer;
}

/* Delete button */
.delete-btn {
background: #dc3545;
}

.delete-btn:hover {
background: #c82333;
}

/* Back button */
.back-btn {
background: #6c757d;
}

.back-btn:hover {
background: #5a6268;
} </style>

</head>

<body>

<div class="box">
    <h2>Delete Payment</h2>

```
<form action="deletePayment" method="post">
    <input type="text" name="pid" placeholder="Enter Payment ID" required>
    
    <button type="submit" class="delete-btn">Delete Payment</button>
    
    <button type="button" class="back-btn" onclick="history.back()">Back</button>
</form>
```

</div>

</body>
</html>
