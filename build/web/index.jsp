<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="Verifica_usuario" method="POST">
            <table align="center">
                <tr>
                    <td align="center" colspan="2"><h1>LOGIN</h1></td>
                </tr>
                <tr>
                    <td>Usuario: </td>
                    <td><input type="text" name="usuario" required></td>
                </tr>
                <tr>
                    <td>Clave: </td>
                    <td><input type="password" name="clave" required></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Ingresar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
