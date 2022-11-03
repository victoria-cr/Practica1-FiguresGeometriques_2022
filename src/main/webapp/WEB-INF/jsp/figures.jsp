<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Figures Geomètriques</title>
    <style>
        canvas{
            background-color: white;
            border:1px solid black;
        }
    </style>
</head>
<body>
    <h1>Figures Geomètriques</h1>

    <header></header>

    <main>
        <form method="post" action"/figures">
            <br>
            <canvas id="canvas" width="500" height="500"></canvas>

            <br><br>

            <label>Coordenada x:</label>
            <input type="number" name="coordenadaX">

            <label>Coordenada y:</label>
            <input type="number" name="coordenadaY">

            <br>

            <label>Tipus de figura:</label>
            <select name="servei">
                <option value="blanc"> </option>
                <option value="cercle">Cercle</option>
                <option value="quadrat">Quadrat</option>
                <option value="triangle">Triangle</option>
                <option value="pentagon">Pentàgon</option>
                <option value="estrella">Estrella de 7 puntes</option>
            </select>

            <br>

            <label>Nom:</label>
            <input type="text" name="nom">

            <br>

            <label>Grandària:</label>
            <input type="range" name="grandaria">

            <br>

            <label>Color:</label>
            <select name="servei">
                <option value="blanc"> </option>
                <option value="negro">Negre</option>
                <option value="verd">Verd</option>
                <option value="vermell">Vermell</option>
                <option value="blai">Blau</option>
                <option value="groc">Groc</option>
                <option value="gris">Gris</option>
            </select>
        </form>
    </main>
</body>
</html>