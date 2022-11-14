const canvas = document.getElementById("canvas");
const ctx = canvas.getContext("2d");
var figura;
var x;
var y;
var tamany;
var nom;
var color;

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

function previsualitza() {
	this.figura = document.getElementById("figura").value;
	this.x = document.getElementById("x").value;
	this.y = document.getElementById("y").value;
	this.tamany = document.getElementById("tamany").value;
	this.nom = document.getElementById("nom").value;
	this.color = document.getElementById("color").value;
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