<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<center> <h1>MONTHLY SALE INFORMATION </h1>
</center>
<script type="text/javascript">


<%-- function validate makes sure that INPUT PID is not null --%> 
function validate()
{
var field1=form1.pid.value;
if (field1.length==0)
{
window.alert("PRODUCT ID IS EMPTY");
form1.pid.focus();
return false;
}
}

</script>
</head>
<%-- Takes PID as input from user to display monthly sale info of the corresponding product --%> 
<body style="background-color:#669999;">

<form name="form1" method="post" action="MainServlet">

<fieldset>
<legend>ENTER THE PRODUCT ID</legend>

<table>

<tr>
<td> Product ID </td> 
<td> <input type="text" name="pid" >  </td>   
</tr>
<tr><td><input type="hidden" name="selectedPage" value="saleInfo" /></td></tr>
<tr>
<td> <input type="submit" value="SUBMIT" onclick="return validate(this)"> </td>
<td> <input type="reset" value="RESET"> </td>
<td><input type="button" value="BACK" onClick="window.location.href='Homepage.jsp'"></td>
<td> <input type="hidden" name="selectedpage" value="saleInfo"> </td>
</tr>

</table>

</fieldset>

</form>
</body>
</html>