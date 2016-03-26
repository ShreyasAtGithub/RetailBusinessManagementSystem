<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customers Data</title>
<h2> Customer's Data</h2>
</head>
<%-- To display the CUSTOMERS TABLE DATA  --%> 

<body style="background-color:#669999;">

<form name=form1 action=displayTuples.jsp>
<%@ page language="java" import="bean.*" %>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%
Iterator<Customers> itr;
List viewdata=(List)(request.getAttribute("customerInfo"));
%>
<table border=1>
<tr>
<th> CID </th>
<th> CUSTOMER NAME</th>
<th> TELEPHONE#</th>
<th> VISITS MADE</th>
<th> LAST VISIT DATE</th>
</tr>
<% for(itr = viewdata.iterator(); itr.hasNext();)  { %>
                        <tr> <%Customers cust=(Customers)itr.next();%>
                      
                      	<td> <%=cust.getCid() %> </td>
                        
                        <td> <%=cust.getCname() %> </td>
                       
                        <td> <%=cust.getTelephone() %> </td>
                        
                        <td> <%=cust.getVisits_made() %> </td>
                        
                        <td> <%=cust.getLast_visit_made() %> </td>
                       
                       </tr>
                           
                       <% } %></table>

<br>
   <input type=submit value=BACK >

</form>

</body>
</html>