<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*,beans.*"
	pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   
<html>
<head>
<title>Seleccion</title>
<meta http-equiv="Content-Type" content="text/html;  charset=ISO-8859-1" >
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