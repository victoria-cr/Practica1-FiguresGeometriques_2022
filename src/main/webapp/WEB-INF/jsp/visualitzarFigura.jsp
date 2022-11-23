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
    </style>
</head>
<body onload="visualitza()">
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
        <h1>Visualització de la figura</h1>

        <canvas id="canvas" width="1024" height="768" style="border:1px solid black;background-color: white;"></canvas>

        <script>
            const canvas = document.getElementById("canvas");
            const ctx = canvas.getContext("2d");
            var figura = "${figura}";
            var x = ${x};
            var y = ${y};
            var tamany = ${tamany};
            var color = "${color}";;

            function dibuixaCercle(x, y, tamany) {
            	ctx.beginPath();
            	ctx.arc(x, y, tamany, 0, 2*Math.PI);
            	ctx.stroke();
            }

            function dibuixaQuadrat(x, y, tamany) {
            	ctx.beginPath();
            	ctx.rect(x-(tamany/2), y-(tamany/2), tamany, tamany);
            	ctx.stroke();
            }

            function dibuixaPentagon(x, y, tamany) {
            	var nombreDeCostats = 5,
            	    costat  = 2 * Math.PI / nombreDeCostats,
            	    canviDeCostat = (Math.PI / 180.0) * -18;
            	ctx.beginPath();
                for (var i = 0; i <= nombreDeCostats;i++) {
                    var costatActual = i * costat + canviDeCostat;
                    ctx.lineTo (Number(x) + tamany * Math.cos(costatActual), Number(y) + tamany * Math.sin(costatActual));
                }
                ctx.stroke();
            }

            function visualitza() {
                ctx.strokeStyle = this.color;
                dibuix(this.figura);
            }

            function dibuix(figura){
                if(figura == "cercle"){
                    dibuixaCercle(this.x, this.y, this.tamany/2);
                }
                if(figura == "quadrat"){
                    dibuixaQuadrat(this.x, this.y, this.tamany);
                }
                if(figura == "pentagon"){
                    dibuixaPentagon(this.x, this.y, this.tamany);
                }
            }
        </script>
    </main>
</body>
</html>