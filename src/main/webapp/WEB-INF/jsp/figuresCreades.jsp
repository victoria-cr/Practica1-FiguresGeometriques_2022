<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Figures Geomètriques</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body{
            font-size: 16px;
            background-color: #ecf0f1;
            font-family: 'Quicksand';
        }

        nav {
            display: flex;
            align-items: center;
            width: 100%;
        }

        ul {
            display: flex;
            width: 100%;
            margin: 0;
            padding: 0;
            justify-content: space-around;
            align-items: center;
            font-size: 20px;
        }

        li {
            margin: 10px 50px;
            display: flex;
        }

        a {
            text-decoration: none;
            padding: 0px 20px;
            color: black;
        }

        h1 {
            color: black;
            text-shadow: 2px 2px #bdc3c7;
            text-align: center;
            text-transform:uppercase;
            font-weight: lighter;
            font-size: 30px;
            letter-spacing: 0.2em;
            padding: 20px 0px;
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
            <ul>
                <li><a href="/figures">Crear una figura</a></li>
                <li><a href="/figuresCreades">Totes les figures creades</a></li>
                <li><a href="/lesMevesFigures">Les meves figures</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <h1>Figures creades</h1>
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
                    <td>${figureList.date}</td>
                    <td>
                        <form action="/visualitzarFigura" method="post">
                            <input type="hidden" value="${figureList.figuraID}" name="figuraID">
                            <input type="submit" value="Veure figura">
                        </form>
                    </td>
                    <td>
                        <form action="/esborrarFigura" method="post">
                            <input type="hidden" value="${figureList.figuraID}" name="figuraID">
                            <input type="hidden" value="${csrftoken}" name="csrftoken">
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