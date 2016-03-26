<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function validate()
{
		document.input.submit();
}
</script>
<%-- Home page of the project - Retail business management system --%> 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Retail Business Management System</title>
<h2><center> Retail Business Management System</center></h2>
</head>
<body style="background-color:#669999;">
<form action="${pageContext.request.contextPath}/ActionClass" method="post">
<table>

<tr><td><br /><br /></td></tr>
<tr><td><a href="displayTuples.jsp" target ="showframe"> Display Table Data</a></td></tr>
<tr><td><br /><br /></td></tr>

<tr><td><br /><br /></td></tr>
<tr><td><a href="reportMonthlySale.jsp" target ="showframe"> Monthly Sale Information</a></td></tr>
<tr><td><br /><br /></td></tr>

<tr><td><br /><br /></td></tr>
<tr><td><a href="addProduct.jsp" target ="showframe"> Add Product</a></td></tr>
<tr><td><br /><br /></td></tr>

<tr><td><br /><br /></td></tr>
<tr><td><a href="purchaseProduct.jsp" target ="showframe"> Purchase Product</a></td></tr>
<tr><td><br /><br /></td></tr>

</table>
</form>
</body>
</html>