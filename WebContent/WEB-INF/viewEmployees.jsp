<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employees Data</title>
<h2> Employee's Information</h2>
</head>
<%-- To display the EMPLOYEES TABLE DATA  --%> 

<body style="background-color:#669999;">

<form name=form1 action=displayTuples.jsp>
<%@ page language="java" import="bean.*" %>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%
Iterator<Employees> itr;
List<Employees> viewdata=(List<Employees>)(request.getAttribute("employeeInfo"));
%>
<table border=1>
<tr>
<th> EID </th>
<th> ENAME</th>
<th> TELEPHONE#</th>
</tr>
<% for(itr = viewdata.iterator(); itr.hasNext();)  { %>
                        <tr> <%Employees emp=(Employees)itr.next();%>
                      
                      	<td> <%=emp.getEid() %> </td>
                        
                        <td> <%=emp.getEname() %> </td>
                       
                        <td> <%=emp.getTelephone() %> </td>
                       
                       </tr>
                           
                       <% } %></table>

<br>
   <input type=submit value=BACK >
   </form>                     

</body>
</html>