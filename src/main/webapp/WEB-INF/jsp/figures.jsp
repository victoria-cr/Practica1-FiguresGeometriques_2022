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

        canvas{
            margin-right: auto;
            margin-left: auto;
            display: block;
        }

        form {
            text-align: center;
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
        <h1>Figures Geomètriques</h1>

        <canvas id="canvas" width="1024" height="768" style="border:1px solid black;background-color: white;"></canvas>

        <form method="post" action"/figures">
            <br>

            <label>Tipus de figura:</label>
            <select id="figura" name="figura">
                <option value="blanc"> </option>
                <option value="cercle">Cercle</option>
                <option value="quadrat">Quadrat</option>
                <option value="triangle">Triangle</option>
                <option value="pentagon">Pentàgon</option>
                <option value="estrella">Estrella de 7 puntes</option>
            </select>

            <label>Nom de la figura:</label>
            <input id="nom" type="text" name="nom">

            <br>

            <label>Coordenada X:</label>
            <input id="x" type="number" name="coordenadaX">

            <label>Coordenada Y:</label>
            <input id="y" type="number" name="coordenadaY">

            <br>

            <label>Tamany de la figura:</label>
            <input id="tamany" type="range" name="tamany" min="50" max="300">

            <label>Color de la figura:</label>
            <select id="color" name="color">
                <option value="blanc"> </option>
                <option id="black" value="black">Black</option>
                <option id="green" value="green">Green</option>
                <option id="red" value="red">Red</option>
                <option id="blue" value="blue">Blue</option>
                <option id="yellow" value="yellow">Yellow</option>
                <option id="grey" value="grey">Grey</option>
            </select>

            <br>

            <button type="button" onclick="previsualitza()">Previsualitza</button>
            <button type="submit">Crear figura</button>
        </form>
    </main>

    <script src="../../../dibuixFigures.js"></script>
</body>
</html>