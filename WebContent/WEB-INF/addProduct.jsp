<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD PRODUCT</title>
<h3><center> ADD PRODUCT </center></h3>
<script type="text/javascript">

<%-- Function validate() validates the user input, checks for null values and 
     makes sure that fiedls  QOH, QOHTHR, ORIGINAL PRICE, DISCOUNT are "numeric" --%> 

function validate()
{
var pid   = form1.pid.value;
var pname = form1.pname.value;
var qoh   = form1.qoh.value;
var qohthr= form1.qohthr.value;
var origprice = form1.origprice.value;
var discnt= form1.discnt.value;


if (pid.length==0 || pid==null || pid =="")
{
alert("PRODUCT ID IS EMPTY");
form1.pid.focus();
return false;
}

if (pname.length==0 || pname==null || pname =="")
{
alert("PRODUCT NAME IS EMPTY");
form1.pname.focus();
return false;
}

if (qoh.length==0 || qoh==null || qoh =="")
{
alert("QOH IS EMPTY");
form1.qoh.focus();
return false;
}

if(isNaN(qoh)){
	alert("QOH MUST BE A NUMBER");
	return false;
}

if(isNaN(qohthr)){
	alert("QOH THRESHOLD MUST BE A NUMBER");
	return false;
}

if(isNaN(origprice)){
	alert("ORIGINAL PRICE MUST BE A NUMBER");
	return false;
}

if(isNaN(discnt)){
	alert("DISCOUNT MUST BE A NUMBER");
	return false;
}

if(discnt < 0 || discnt > 0.8){
	alert("DISCOUNT MUST BE BETWEEN 0 AND 0.8");
	return false;
}

if (qohthr.length==0 || qohthr==null || qohthr =="")
{
alert("QOH THRESHOLD IS EMPTY");
form1.qohthr.focus();
return false;
}


if (origprice.length==0 || origprice==null || origprice =="")
{
alert("ORIGINAL PRICE IS EMPTY");
form1.origprice.focus();
return false;
}


if (discnt.length==0 || discnt==null || discnt =="")
{
alert("DISCOUNT IS EMPTY");
form1.discnt.focus();
return false;
}
}

</script>
</head>
<body style="background-color:#669999;">
<%-- Form where user inputs the values --%> 
<form name="form1" method="post" action="MainServlet">

<fieldset>
<legend>PLEASE ENTER THE PRODUCT DETAILS</legend>

<table>


<tr>
<td> Product ID  </td> 
<td> <input type="text" name="pid" >  </td>   
</tr>

<tr>
<td> Product Name  </td> 
<td> <input type="text" name="pname" >  </td>   
</tr>

<tr>
<td> QOH ID</td> 
<td> <input type="text" name="qoh" >  </td>   
</tr>

<tr>
<td>QOH Threshold</td> 
<td> <input type="text" name="qohthr" >  </td>   
</tr>

<tr>
<td>Original Price</td> 
<td> <input type="text" name="origprice" >  </td>   
</tr>

<tr>
<td>Discount Rate</td> 
<td> <input type="text" name="discnt" >  </td>   
</tr>


<tr>
<td> <input type="submit" value="SUBMIT" onclick="return validate(this)"></td>
<td> <input type="reset" value="RESET"></td>
<td><input type="button" value="BACK" onClick="window.location.href='Homepage.jsp'"></td>
</tr>
<%-- Passing the hidden variable , value is : 'addProduct' --%> 
<tr><td><input type="hidden" name="selectedPage" value="addProduct" /></td></tr>

</table>

</fieldset>

</form>
</body>
</html>