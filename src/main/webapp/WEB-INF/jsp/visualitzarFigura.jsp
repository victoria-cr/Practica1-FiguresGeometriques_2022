<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Figures Geomètriques</title>
    <style>
        nav {

        }
    </style>
</head>
<body onload="visualitza()">
    <header>
        <nav>
            <a href="/figures">Crear una figura</a>
            <a href="/figuresCreades">Totes les figures creades</a>
            <a href="/lesTevesFigures">Les teves figures</a>
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