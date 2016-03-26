<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>purchase porduct</title>
<h3><center> PURCHASE PRODUCT </center></h3>
<script type="text/javascript">

function validate()
{
	
<%-- Function validate() makes sure that none of the fields are
      null value while submitting the form --%> 
var eid=form1.eid.value;
var pid=form1.pid.value;
var cid=form1.cid.value;
var qty=form1.qty.value;


if (eid.length==0 || eid==null || eid =="")
{
window.alert("EMPLOYEE ID IS EMPTY");
form1.eid.focus();
return false;
}

if (pid.length==0 || pid==null || pid =="")
{
window.alert("PRODUCT ID IS EMPTY");
form1.pid.focus();
return false;
}

if (cid.length==0 || cid==null || cid =="")
{
window.alert("CUSTOMER ID IS EMPTY");
form1.cid.focus();
return false;
}

if (qty.length==0 || qty==null || qty =="")
{
window.alert("QUANTITY IS EMPTY");
form1.qty.focus();
return false;
}

if(isNaN(qty)){
	alert("QUANTITY MUST BE A NUMBER");
	return false;
}
}

</script>
</head>
<%-- Takes inout from the user to 'Purchase product' --%> 
<body style="background-color:#669999;">

<form name="form1" method="post" action="MainServlet">

<fieldset>
<legend>PLEASE ENTER THE DETAILS</legend>

<table>


<tr>
<td> Employee ID  </td> 
<td> <input type="text" name="eid" >  </td>   
</tr>

<tr>
<td> Product ID  </td> 
<td> <input type="text" name="pid" >  </td>   
</tr>

<tr>
<td> Customer ID  </td> 
<td> <input type="text" name="cid" >  </td>   
</tr>

<tr>
<td> Quantity  </td> 
<td> <input type="text" name="qty" >  </td>   
</tr>


<tr><td><input type="hidden" name="selectedPage" value="purchaseProd" /></td></tr>
<tr>
<td> <input type="submit" value="SUBMIT" onclick="return validate(this)"></td>
<td> <input type="reset" value="RESET"></td>
<td><input type="button" value="BACK" onClick="window.location.href='Homepage.jsp'"></td>
</tr>
</tr>

</table>

</fieldset>

</form>
</body>
</html>