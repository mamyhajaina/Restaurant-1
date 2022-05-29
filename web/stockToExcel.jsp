    <%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="model.Stock"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
   LocalDateTime now = LocalDateTime.now();
 //  out.print(dtf.format(now));
%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
    <html>
       <head>
          <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
          <title>Excel Export</title>
       </head>
       <body>
       
          <table cellpadding="1"  cellspacing="1" border="1" bordercolor="gray">
             <tr>
                 <td>Date: <%out.print(dtf.format(now));%></td> 
                <td>Ingredient</td> 
                <td>Total entree</td> 
                <td>Total sortie  </td> 
                <td>Reste stock  </td> 
             </tr>
             <%
                ArrayList<Stock> list  = ( ArrayList<Stock>)request.getAttribute("listStock"); 
                String type=(String)request.getAttribute("type"); 
                 
                      if (list != null) {
                          response.setContentType("application/vnd.ms-excel");
                          response.setHeader("Content-Disposition", "inline; filename="+ "Stock_"+dtf.format(now)+".xls");
                      }
                for(Stock l: list){
                %>
             <tr> 
                 <td> </td>
                <td><%=l.getNom_ingredient()%></td>
                 <td><%=l.getId_stock()%></td>
                  <td><%=l.getPrix()%></td>
                 <td><%=l.getQte_stock()%></td>
             </tr>
             <% 
                }
                %>
          </table>
       </body>
    </html>