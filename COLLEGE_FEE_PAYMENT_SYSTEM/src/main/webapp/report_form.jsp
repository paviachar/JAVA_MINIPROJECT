<html>
<head>
<style>
body {
    background: url("report.png");
    background-size: cover;
    text-align: center;
    color: white;
}
.box {
    margin: 100px auto;
    background: rgba(0,0,0,0.7);
    padding: 20px;
    width: 300px;
}

/* BUTTON STYLE */
.btn {
    margin-top: 10px;
    padding: 10px;
    width: 100%;
    background: #002147;
    color: white;
    border: none;
    cursor: pointer;
}
.btn:hover {
    background: #00152b;
}
</style>
</head>

<body>
<div class="box">
<h2>Generate Report</h2>

<form action="reportCriteria" method="post">

<select name="type">
    <option value="overdue">Overdue Payments</option>
    <option value="paid">Paid Students</option>
    <option value="range">Date Range</option>
</select><br><br>

From Date: <input type="date" name="from"><br><br>
To Date: <input type="date" name="to"><br><br>

<input type="submit" value="Generate" class="btn">

<!-- NEW BUTTON -->
<a href="index.jsp">
    <button type="button" class="btn"> Back</button>
</a>

</form>
</div>
</body>
</html>