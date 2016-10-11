<%-- 
    Document   : agregarTema
    Created on : 11-oct-2016, 9:39:12
    Author     : USUARIO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Tema</title>
    </head>
    <body>     
        <center>
            <form action="ServletAgregarTema" method="post">
            Introduce un Tema:<input type="text" name="tema"/>
            <br/>
            Introduce un ID:<input type="text" name="idtema"/>
            <br/>
            <input type="submit" value="Validar"/>
            </form>           
        </center>
    </body>
</html>