<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purchase product</title>
<h3><center> PURCHASE PRODUCT </center></h3>
<script type="text/javascript">


</script>
</head>
<%-- To display the NEW QOH VALUE after order has been placed automatically --%> 
<body style="background-color:#669999;">

<form name="form1" method="post" action="MainServlet">

<%
Integer newqoh  =(Integer)(request.getAttribute("newQoh"));
%>


<fieldset>
<legend></legend>

<table>

<tr> </tr>
<tr> </tr>
<tr> </tr>

<tr><td>The QOH had gone below the threshold level</td></tr>
<tr><td>New Supply was required</td></tr>
<tr><td>The Order has been placed automatically</td></tr>
<tr> </tr>
<tr> </tr>
<tr> </tr>
<tr><td>The Value of New QOH is : <%= newqoh %> </td></tr>

<tr><td><input type="button" value="BACK" onClick="window.location.href='Homepage.jsp'"></td></tr>

</table>

</fieldset>

</form>
</body>
</html>