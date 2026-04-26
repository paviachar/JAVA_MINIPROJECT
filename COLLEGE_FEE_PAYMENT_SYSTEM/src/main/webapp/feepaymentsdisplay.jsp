<%@ page import="java.util.*,com.model.FeePayment" %>

<html>
<head>
<style>
body {
    font-family: Arial;
    background:url("bg.jpg");
    background-size:cover;
}

.header {
    background:#002147;
    color:white;
    padding:15px;
    text-align:center;
}

table {
    width:80%;
    margin:50px auto;
    border-collapse:collapse;
    background:white;
}

th,td {
    padding:10px;
    border:1px solid gray;
}

th {
    background:#2196f3;
    color:white;
}

/* FOOTER */
.footer {
    text-align:center;
    margin:20px;
}

/* BACK BUTTON */
.back-btn {
    background:#002147;
    color:white;
    padding:10px 20px;
    text-decoration:none;
    border-radius:8px;
    font-weight:bold;
}
.back-btn:hover {
    background:#00152b;
}
</style>
</head>

<body>

<div class="header">
<img src="logo.png" width="50">
<h2>Payment Records</h2>
</div>

<table>
<tr>
<th>ID</th>
<th>Name</th>
<th>Date</th>
<th>Amount</th>
<th>Status</th>
</tr>

<%
List<FeePayment> list = (List<FeePayment>)request.getAttribute("data");
for(FeePayment f : list){
%>

<tr>
<td><%=f.getPaymentID()%></td>
<td><%=f.getStudentName()%></td>
<td><%=f.getPaymentDate()%></td>
<td><%=f.getAmount()%></td>
<td><%=f.getStatus()%></td>
</tr>

<% } %>

</table>

<!-- BACK BUTTON -->
<div class="footer">
<a href="index.jsp" class="back-btn"> Back</a>
</div>

</body>
</html>