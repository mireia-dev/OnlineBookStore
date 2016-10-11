
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>     
        <center>
            <form action="Login" method="post">
            Introduce título:<input type="text" name="titulo"/>
            <br/>
            Introduce autor:<input type="text" name="autor"/>
            <br/>
            Selecciona tema:<select name="tema">
                                <option value="0">Todos</option>
                                <c:forEach var="t" items="${requestScope.temas}">
                                <option value="${t.idtema}">${s.tema}</option>
                                </c:forEach>
                            </select>
            <br/>
            Introduce precio:<input type="text" name="precio"/>
            <br/>
            <input type="submit" value="Validar"/>
            </form>           
        </center>
    </body>
</html>
