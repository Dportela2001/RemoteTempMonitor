var fase = document.getElementById("nfase");
var tiempo = document.getElementById("ntiempo");
var temp = document.getElementById("ntemp");

// Esto va dentro de un evento random ajio


window.onload=funcionxd();
function obtenerElemento(elemento){
    switch(elemento){
        case "fase":
            return "01";
        case "tiempo":
            return "02";
        case "temp":
            return "03";
        default:
            return "04";
    }
}

function funcionxd(){
    fase.innerHTML = obtenerElemento("fase");
    tiempo.innerHTML = obtenerElemento("tiempo") + " min";
    temp.innerHTML = obtenerElemento("temp") + " °C";
}