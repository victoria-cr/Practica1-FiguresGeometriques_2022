<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Figures Geomètriques</title>
</head>
<body>
    <header>
        <a href="/figures">Crear una figura</a>
        <a href="/figuresCreades">Totes les figures creades</a>
        <a href="/lesTevesFigures">Les teves figures</a>
    </header>

    <main>
        <h1>Figures Creades</h1>
        <table>
            <tr>
                <th>Figure ID</th>
                <th>Figure Name</th>
                <th>X</th>
                <th>Y</th>
                <th>Type</th>
                <th>Color</th>
                <th>Size</th>
                <th>Usuari</th>
            </tr>
            <c:forEach var="figureList" items="${figureList}">
                <tr>
                    <td>${figureList.figuraID}</td>
                    <td>${figureList.nom}</td>
                    <td>${figureList.coordenadaX}</td>
                    <td>${figureList.coordenadaY}</td>
                    <td>${figureList.figura}</td>
                    <td>${figureList.color}</td>
                    <td>${figureList.tamany}</td>
                    <td>${figureList.usuariID}</td>
                    <td>
                        <form action="/visualitzarFigura" method="post">
                            <input type="hidden" value="${figureList.figuraID}" name="FiguraID">
                            <input type="submit" value="Veure figura">
                        </form>
                    </td>
                </tr>
                <td>
            </c:forEach>
        </table>
    </main>
</body>
</html>