<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body onload="visualitza()">
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
</body>
</html>