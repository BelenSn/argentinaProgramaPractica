const deportista = {
    nombre: 'Messi',
    champions: 4,
}

console.log(JSON.stringify(deportista));//transforma en string

const deportista2 = '{"nombre":"Messi","champions":4}';

console.log(JSON.parse(deportista2));


fetch('http://127.0.0.1:5500/javaScript/pasajeros/pasajeros.json')
.then((response)=>response.json())
/* .then((data) => console.log(data)); */
.then((pasajeros) => {
    const nombresDePAsajeros = pasajeros.map((pasajero) => pasajero.nombre)
    console.log(nombresDePAsajeros);
});