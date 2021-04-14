<%@page import="com.prac4.modelo.Producto"%>
<%
    Producto reg = (Producto) request.getAttribute("miobjpro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Vacuna</title>
    </head>
    <body>
        <h1>Registro de Vacuna</h1>
        <form action="MainServlet" method="POST">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId()%>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="<%= reg.getNombre()%>"></td>
                </tr>
                <tr>
                    <td>Peso</td>
                    <td><input type="text" name="peso" value="<%= reg.getPeso()%>"></td>
                </tr>
                <tr>
                    <td>Talla</td>
                    <td><input type="text" name="talla" value="<%= reg.getTalla()%>"></td>
                </tr>
                <tr>
                    <td>Vacuna</td>
                    <td><input type="radio" name="vacuna" value="Si" required><label>Si</label>
                    <input type="radio" name="vacuna" value="No" required><label>No</label></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>

