<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suppliers Information</title>
<h2> Suppliers Information</h2>
</head>
<%-- To display the SUPPLIERS TABLE DATA  --%> 

<body style="background-color:#669999;">

<form name=form1 action=displayTuples.jsp>
<%@ page language="java" import="bean.*" %>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%
Iterator<Suppliers> itr;
List viewdata=(List)(request.getAttribute("suppliersInfo"));
%>
<table border=1>
<tr>
<th> SID </th>
<th> SNAME</th>
<th> CITY</th>
<th> TELEPHONE#</th>
</tr>
<% for(itr = viewdata.iterator(); itr.hasNext();)  { %>
                        <tr> <%Suppliers suppliers=(Suppliers)itr.next();%>
                      
                      	<td> <%=suppliers.getSid() %> </td>
                      	
                      	<td> <%=suppliers.getSname() %> </td>
                      	
                      	<td> <%=suppliers.getCity() %> </td>
                      	
                      	<td> <%=suppliers.getTelephone() %> </td>
                      	
                       </tr>
                           
                       <% } %></table>

<br>
   <input type=submit value=BACK >
   </form>                     
</body>
</html>