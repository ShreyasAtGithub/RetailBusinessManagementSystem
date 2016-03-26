<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sale Information</title>
<h2> Monthly Sale Information</h2>
</head>


<body style="background-color:#669999;">
<%-- To display the MONTHLY SALE INFORMATION OF A PRODUCT  --%> 

<form name=form1 action=displayTuples.jsp>
<%@ page language="java" import="bean.*" %>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%
Iterator<MonthlySale> itr;
List viewdata=(List)(request.getAttribute("saleInfo"));
%>
<table border=1>
<tr>
<th> PRODUCT NAME# </th>
<th> MONTH OF PURCHASE</th>
<th> YEAR OF PURCHASE</th>
<th> TOTAL QAUNTITY</th>
<th> TOTAL PRICE</th>
<th> AVG SALE PRICE</th>
</tr>
<% for(itr = viewdata.iterator(); itr.hasNext();)  { %>
                        <tr> <%MonthlySale saleInfo = (MonthlySale)itr.next();%>
                      
                      	<td> <%=saleInfo.getProdName() %> </td>
                      	
                      	<td> <%=saleInfo.getPurMonth() %> </td>
                      	
                      	<td> <%=saleInfo.getPurYear() %> </td>
                      	
                      	<td> <%=saleInfo.getTotalQty() %> </td>
                      	
                      	<td> <%=saleInfo.getTotalPrice() %> </td>
                      	
                      	<td> <%=saleInfo.getAvgSalePrice() %> </td>
                      	
                       </tr>
                           
                       <% } %></table>

<br>
   <input type="button" value="BACK" onClick="window.location.href='reportMonthlySale.jsp'">
   </form>                     

</form>

</body>
</html>