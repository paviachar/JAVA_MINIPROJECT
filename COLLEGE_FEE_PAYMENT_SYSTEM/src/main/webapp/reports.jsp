<html>
<head>
<style>
body {
    margin:0;
    font-family:Arial;
    background:url("report1.jpg");
    background-size:cover;
    color:white;
}

.header {
    background:#002147;
    padding:15px;
    text-align:center;
}

.box {
    width:300px;
    margin:100px auto;
    background:rgba(0,0,0,0.7);
    padding:20px;
    border-radius:10px;
}

input,select {
    width:100%;
    padding:8px;
    margin:5px 0;
}
</style>
</head>

<body>

<div class="header">
<img src="images/logo.png" width="50">
<h2>Reports</h2>
</div>

<div class="box">

<form action="reportCriteria" method="post">

<select name="type">
<option value="overdue">Overdue</option>
<option value="paid">Paid</option>
<option value="range">Date Range</option>
</select>

From: <input type="date" name="from">
To: <input type="date" name="to">

<input type="submit" value="Generate">

</form>

</div>

</body>
</html>