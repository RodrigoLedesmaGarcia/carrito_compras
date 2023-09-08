<%@page contentType="text/html" pageEncoding="UTF-8" import="www.rodrigoledesmagarcia.com.mx.models.*"%>
<%
Carro carro = (Carro) session.getAttribute("carro");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Carro de Compras</title>
</head>
<style>
    .w {
        width: 100%;
        height: 100vh;
        background-color: pink;
        background-size: cover;
        background-position: center; margin: 0;
        padding: 0;
        margin: 0;
        text-align: center;

      }

</style>
<body>
<div class="w">
<h1>Carro de Compras</h1>
<% if(carro == null || carro.getItems().isEmpty()){%>
<p>Lo sentimos no hay productos en el carro de compras!</p>
<%} else { %>
<table>
    <tr>
        <th>id</th>
        <th>nombre</th>
        <th>precio</th>
        <th>cantidad</th>
        <th>total</th>
    </tr>
    <%for(ItemCarro item: carro.getItems()){%>
    <tr>
        <td><%=item.getProducto().getId()%></td>
        <td><%=item.getProducto().getNombre()%></td>
        <td><%=item.getProducto().getPrecio()%></td>
        <td><%=item.getCantidad()%></td>
        <td><%=item.getImporte()%></td>
    </tr>
    <%}%>
    <tr>
        <td colspan="4" style="text-align: right">Total:</td>
        <td><%=carro.getTotal()%></td>
    </tr>
</table>
<%}%>
<p><a href="<%=request.getContextPath()%>/productos">seguir comprando</a></p>
<p><a href="<%=request.getContextPath()%>/index.html">volver</a></p>
</div>
</body>
</html>