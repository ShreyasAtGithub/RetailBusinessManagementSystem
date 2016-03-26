<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supply Information</title>
<h2> Supply Information</h2>
</head>

<%-- To display the SUPPLY TABLE DATA  --%> 
<body style="background-color:#669999;">

<form name=form1 action=displayTuples.jsp>
<%@ page language="java" import="bean.*" %>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%
Iterator<Supply> itr;
List viewdata=(List)(request.getAttribute("supplyInfo"));
%>
<table border=1>
<tr>
<th> SUP# </th>
<th> PID</th>
<th> SID</th>
<th> SDATE</th>
<th> QUANTITY</th>
</tr>
<% for(itr = viewdata.iterator(); itr.hasNext();)  { %>
                        <tr> <%Supply supply = (Supply)itr.next();%>
                      
                      	<td> <%=supply.getSup() %> </td>
                      	
                      	<td> <%=supply.getPid() %> </td>
                      	
                      	<td> <%=supply.getSid() %> </td>
                      	
                      	<td> <%=supply.getSdate() %> </td>
                      	
                      	<td> <%=supply.getQuantity() %> </td>
                      	
                       </tr>
                           
                       <% } %></table>

<br>
   <input type=submit value=BACK >
   </form>                     
</body>

</form>

</body>
</html>