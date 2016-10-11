<%-- 
    Document   : buscarTema
    Created on : 11-oct-2016, 9:39:12
    Author     : USUARIO
--%>

<%@page	language="java" contentType="text/html; charset=UTF-8"%>
<%@page	import="java.util.*"%>
<%@page	pageEncoding="windows-1252"%>

    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<html>
<head>
    <title>Seleccion</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
    <center>
        <form action="ServletListadoTema" method="post" >
            <select name="tema">
                <option value="0">Temas</option>
                <c:forEach var="t" items="${requestScope.temas}">
                   <option value="${t.idtema}">${t.tema}</option>	 
                </c:forEach>
            </select>
            <br/>
            <input type="submit" value="Ver Temas"/>
        </form>
    </center>
</body>
</html>