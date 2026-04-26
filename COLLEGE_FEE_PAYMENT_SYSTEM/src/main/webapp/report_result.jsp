<%@ page import="java.sql.*" %>

<html>
<head>
<style>
body {
    margin:0;
    font-family: Arial;
    background:url("bg.jpg");
    background-size:cover;
}

/* BOX */
.container {
    width:80%;
    margin:80px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    text-align:center;
    color:black;
}

/* TABLE */
table {
    width:100%;
    border-collapse:collapse;
    margin-top:20px;
    background:white;
    color:black;
}

/* CELLS */
th, td {
    padding:10px;
    border-bottom:1px solid #ddd;
    border-right:1px solid #ccc;  /* ✅ vertical separator */
}

/* REMOVE LAST COLUMN BORDER */
th:last-child, td:last-child {
    border-right:none;
}

/* HEADER */
th {
    background:#f5f5f5;
    color:blue;
    border-bottom:2px solid blue;
}

/* ROW HOVER */
tr:hover {
    background:#f9f9f9;
}

/* FOOTER */
.footer {
    position:fixed;
    bottom:0;
    width:100%;
    text-align:center;
    background:#002147;
    padding:10px;
}

/* BACK BUTTON */
.back-btn {
    background:white;
    color:#002147;
    padding:10px 20px;
    text-decoration:none;
    border-radius:8px;
    font-weight:bold;
}
.back-btn:hover {
    background:#e6e6e6;
}
</style>
</head>

<body>

<div class="container">
<h2>Report Result</h2>

<table>
<tr>
<th>ID</th><th>Name</th><th>Date</th><th>Amount</th><th>Status</th>
</tr>

<%
ResultSet rs = (ResultSet)request.getAttribute("rs");
while(rs.next()){
%>
<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getDouble(5)%></td>
<td><%=rs.getString(6)%></td>
</tr>
<%
}
%>

</table>
</div>

<div class="footer">
<a href="report_form.jsp" class="back-btn">Back</a>
</div>

</body>
</html>