const canvas = document.getElementById("canvas");
const ctx = canvas.getContext("2d");
var figura;
var x;
var y;
var tamany;
var nom;
var color;

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
	console.log("Entra en triangle" + x + " " + y + " " + tamany)
	ctx.beginPath();

	ctx.stroke();
}

function visualitza() {
	this.figura = document.getElementById("figura").value;
	this.x = document.getElementById("x").value;
	this.y = document.getElementById("y").value;
	this.tamany = document.getElementById("tamany").value;
	this.nom = document.getElementById("nom").value;
	this.color = document.getElementById("color").value;
	console.log(figura,x,y,tamany,color);
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