<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Products Data</title>
<h2> Product's Information</h2>
</head>

<%-- To display the PRODUCTS TABLE DATA  --%> 
<body style="background-color:#669999;">

<form name=form1 action=displayTuples.jsp>
<%@ page language="java" import="bean.*" %>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.List"%>

<%
Iterator<Products> itr;
List viewdata=(List)(request.getAttribute("productInfo"));
%>
<table border=1>
<tr>
<th> PRODUCT ID </th>
<th> PRODUCT NAME</th>
<th> QOH</th>
<th> QOH THRESHOLD</th>
<th> ORIGINAL PRICE</th>
<th> DISCOUNT RATE</th>
</tr>
<% for(itr = viewdata.iterator(); itr.hasNext();)  { %>
                        <tr> <%Products prod=(Products)itr.next();%>
                      
                      	<td> <%=prod.getPid() %> </td>
                      	
                      	<td> <%=prod.getPname() %> </td>
                      	
                      	<td> <%=prod.getQoh() %> </td>
                      	
                      	<td> <%=prod.getQoh_threshold() %> </td>
                      	
                      	<td> <%=prod.getOriginal_price() %> </td>
                      	
                      	<td> <%=prod.getDiscnt_rate() %> </td>
                        
                       </tr>
                           
                       <% } %></table>

<br>
   <input type=submit value=BACK >
   </form>                     
</body>

</form>

</body>
</html>