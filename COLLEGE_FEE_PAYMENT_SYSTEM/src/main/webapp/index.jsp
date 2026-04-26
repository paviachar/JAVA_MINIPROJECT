<html>
<head>
<style>
body {
    margin:0;
    font-family: Arial;
    background:url("bg.jpg");
    background-size:cover;
}
.header {
    display:flex;
    justify-content:center;
    align-items:center;
    background:#002147;
    color:white;
    padding:15px;
}
.logo { width:60px; margin-right:10px; }

.container {
    width:350px;
    margin:80px auto;
    background:rgba(0,0,0,0.7);
    padding:30px;
    border-radius:15px;
    text-align:center;
}

a {
    display:block;
    margin:12px;
    padding:12px;
    background:#2196f3;
    color:white;
    text-decoration:none;
    border-radius:8px;
}
a:hover { background:#0b7dda; }

.footer {
    position:fixed;
    bottom:0;
    width:100%;
    text-align:center;
    background:#002147;
    color:white;
    padding:10px;
}
</style>
</head>

<body>

<div class="header">
<img src="logo1.png" class="logo">
<h2>College Fee Payment System</h2>
</div>

<div class="container">
<a href="feepaymentadd.jsp">Add Payment</a>
<a href="feepaymentsdisplay">View Payments</a>
<a href="feepaymentupdate.jsp"> Update</a>
<a href="feepaymentdelete.jsp"> Delete</a>
<a href="report_form.jsp">Reports</a>
</div>

<div class="footer">© 2026 College Fee Payment Portal</div>

</body>
</html>