<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purchase Information</title>
<h2> Purchase Information</h2>
</head>
<%-- To display the PURCHASES TABLE DATA  --%> 

<body style="background-color:#669999;">

<form name=form1 action=displayTuples.jsp>
<%@ page language="java" import="bean.*" %>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%
Iterator<Purchases> itr;
List viewdata=(List)(request.getAttribute("purchaseInfo"));
%>
<table border=1>
<tr>
<th> PUR# </th>
<th> EID</th>
<th> PID</th>
<th> CID</th>
<th> QTY</th>
<th> PTIME</th>
<th> TOTAL PRICE</th>
</tr>
<% for(itr = viewdata.iterator(); itr.hasNext();)  { %>
                        <tr> <%Purchases pur=(Purchases)itr.next();%>
                      
                      	<td> <%=pur.getPur() %> </td>
                      	
                      	<td> <%=pur.getEid() %> </td>
                      	
                      	<td> <%=pur.getPid() %> </td>
                      	
                      	<td> <%=pur.getCid() %> </td>
                      	
                      	<td> <%=pur.getQty() %> </td>
                      	
                      	<td> <%=pur.getPtime() %> </td>
                      	
                      	<td> <%=pur.getTotal_price() %> </td>
                      	
                       </tr>
                           
                       <% } %></table>

<br>
   <input type=submit value=BACK >
   </form>                     
</body>
</html>