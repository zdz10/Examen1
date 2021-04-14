<%@page import="org.apache.jasper.tagplugins.jstl.If"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.prac4.modelo.Producto"%>
<%
    if (session.getAttribute("listapro") == null) {
        ArrayList<Producto> lisaux = new ArrayList();
        session.setAttribute("listapro", lisaux);
    }
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listapro");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registros de Vacunas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/user.jspf" %>
        <div align="right">
            <a href="#">Cerrar sesión</a>
        </div>
        <div align="center">
            <table border="1">
                <tr>
                    <td>
                        <div>
                            <center><h2>PRIMER PARCIAL TEM-742</h2></center>
                            <h3>Nombre: Franz Arturo Lipa Cala</h3>
                            <h3>Carnet: 9963286</h3>
                        </div>
                    </td>
                </tr>
            </table>

            <h1>Registros de Vacunas</h1>
            <a href="MainServlet?op=nuevo">Nuevo</a>
            <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Peso</th>
                    <th>Talla</th>
                    <th>Vacuna</th>
                    <th colspan="2">Acción</th>
                </tr>
                <%
                    if (lista != null) {
                        for (Producto item : lista) {
                %>
                <tr>
                    <td><%= item.getId()%></td>
                    <td><%= item.getNombre()%></td>
                    <td><%= item.getPeso()%></td>
                    <td><%= item.getTalla()%></td>
                    <td><%= item.getVacuna()%></td>
                    <td>
                <a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>"
                       onclick="return (confirm('Está seguro de eliminar ?'))">Eliminar</a>
                </td>
                </tr>
                <%
                        }
                    }
                %>
            </table>
        </div>
    </body>
</html>
