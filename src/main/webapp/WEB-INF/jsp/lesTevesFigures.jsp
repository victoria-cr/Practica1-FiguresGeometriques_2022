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
        <h1>Les teves figures</h1>
        <table>
            <tr>
                <th>ID figura</th>
                <th>Nom figura</th>
                <th>Coordenada x</th>
                <th>Coordenada y</th>
                <th>Tipus de figura</th>
                <th>Color</th>
                <th>Tamany</th>
                <th>ID de usuari</th>
                <th>Data de creació</th>
                <th>Visualitzar</th>
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
                </tr>
            </c:forEach>
        </table>
    </main>
</body>
</html>