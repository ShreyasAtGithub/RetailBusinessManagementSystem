<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<h3><center> PURCHASE PRODUCT </center></h3>
<script type="text/javascript">

</script>
</head>
<%-- To display the New QOH after the purchase has been made --%> 
<body style="background-color:#669999;">

<form name="form1" method="post" action="MainServlet">
<%
String newQoh=(String)(request.getAttribute("newQoh"));
%>

<fieldset>
<legend>The new QOH after Supply</legend>

<table>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><td> The Value of new QOH after supply is : <%= newQoh %></td></tr>

<tr>
<td><input type="button" value="BACK" onClick="window.location.href='Homepage.jsp'"></td>
</tr>
<tr><td> <input type="hidden" name="selectedpage" value="displayNewQty"> </td>
</tr>

</table>

</fieldset>

</form>
</body>
</html>