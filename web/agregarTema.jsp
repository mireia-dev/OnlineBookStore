<%-- 
    Document   : agregarTema
    Created on : 11-oct-2016, 9:39:12
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Tema</title>
    </head>
    <body>
        <form action="ServletAgregarTema" method="post">
                <table>
                    <tr>
                        <td>Indique el Tema:</td>
                        <td><input type="text" name="tema"/></td>
                    </tr>
                    <tr>
                        <td>Indique el ID del Tema:</td>
                        <td><input type="text" name="idtema"/></td>
                    </tr>
                </table>
            </form>
    </body>
</html>
