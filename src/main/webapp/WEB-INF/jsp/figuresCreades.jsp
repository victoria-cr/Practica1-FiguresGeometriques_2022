<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Figures Geomètriques</title>
    <style>
        nav {

        }

        table {
            text-align: center;
            font-family: 'Oswald', sans-serif;
            margin: 20px;
            border: 4px;
            border-style: solid;
        }

        th {
            font-size: 14pt;
            font-weight: 700;
            padding: 10px;
            border: 2px;
            border-style: solid;
        }
    </style>
</head>
<body>
    <header>
        <nav>
            <a href="/figures">Crear una figura</a>
            <a href="/figuresCreades">Totes les figures creades</a>
            <a href="/lesTevesFigures">Les teves figures</a>
        </nav>
    </header>

    <main>
        <h1>Figures Creades</h1>
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
                <th>Visualitzar</th>
                <th>Esborrar</th>
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
                            <input type="hidden" value="${figureList.figuraID}" name="figuraID">
                            <input type="submit" value="Veure figura">
                        </form>
                    </td>
                    <td>
                        <form action="/esborrarFigura" method="post">
                            <input type="hidden" value="${figureList.figuraID}" name="figuraID">
                            <input type="submit" value="Esborrar figura">
                        </form>
                    </td>
                </tr>
                <td>
            </c:forEach>
        </table>
    </main>
</body>
</html>