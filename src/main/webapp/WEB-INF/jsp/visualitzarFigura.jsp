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
                console.log("Entra en circulo" + x + " " + y + " " + tamany)
                ctx.beginPath();
                ctx.arc(x, y, tamany, 0, 2*Math.PI);
                ctx.stroke();
            }

            function dibuixaQuadrat(x, y, tamany) {
                console.log("Entra en quadrat" + x + " " + y + " " + tamany)
                ctx.beginPath();
                ctx.rect(x-(tamany/2), y-(tamany/2), tamany, tamany);
                ctx.stroke();
            }

            function dibuixaTriangle(x, y, tamany) {
                console.log("Entra en triangle " + x + " " + y + " " + tamany)
                ctx.beginPath();
                var centre =((Math.sqrt(3)*tamany)/2) / 2;
                console.log("Centre del triangle " + centre)
                ctx.moveTo(x, y + centre);
                ctx.lineTo(x + (tamany/2), (y - centre));
                ctx.lineTo(x - tamany/2, y + centre);
                ctx.lineTo(x, y - centre);
                ctx.stroke();
            }

            function visualitza() {
                ctx.strokeStyle = this.color;
                dibuix(this.figura);
            }

            function dibuix(figura){
                if(figura == "cercle"){
                    console.log("Entra en dibuix-cercle");
                    dibuixaCercle(this.x, this.y, this.tamany/2);
                }
                if(figura == "quadrat"){
                    console.log("Entra en dibuix-quadrat");
                    dibuixaQuadrat(this.x, this.y, this.tamany);
                }
                if(figura == "triangle"){
                    console.log("Entra en dibuix-triangle");
                    dibuixaTriangle(this.x, this.y, this.tamany);
                }
            }
        </script>
    </main>
</body>
</html>