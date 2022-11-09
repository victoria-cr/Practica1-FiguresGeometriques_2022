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

            <br>

            <label>Coordenada X:</label>
            <input id="x" type="number" name="coordenadaX">

            <label>Coordenada Y:</label>
            <input id="y" type="number" name="coordenadaY">

            <br>

            <label>Tamany:</label>
            <input id="tamany" type="range" name="tamany" min="50" max="300">

            <br>

            <label>Nom:</label>
            <input id="nom" type="text" name="nom">

            <br>

            <label>Color:</label>
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