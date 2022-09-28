//Filter: obtiene elementos de un arreglo que cimplen con una condicion especifica

//Find: obtiene al menos uno de los elementos del arreglo que cumple con una condicion

//Includes: obtiene si un valor especifico es parte del arreglo

//IndezOf: obtiene el indice de un valor especifico



//Array.filter()
//Encontrar elementos dentro de un arreglo que cumplan con cierta condicion
//Obtener todos los elementos mayores a 10

let arreglo = [10,11,3,20,5];

let mayorQueDiez = arreglo.filter(element => element > 10);

console.log(mayorQueDiez);
//resultado esperado: [11,20];


//Array.find()
//Encontrar el primer elemento que cumpla con cierta condicion
//Encontrar el elemento mayor a 10

let existeElementoMayorQueDiez = arreglo.find(element => element > 10);

console.log(existeElementoMayorQueDiez);
//resultado esperado 11 


//Array.includes()
//Determina si un arreglo incluye un valor especifico
//Devuevle verdadero o falso, segun corresponda
//Saber si 20 es un elemento que se encuentra en el arreglo

let incluyeVeinte = arreglo.includes(20);

console.log("¿Incluye veinte? " + incluyeVeinte);
//resultado esperado : true


//MAXIMOS Y MINIMOS
//Busqueda del valor maximo o minimo dentro de una lista

//Funciones
//Math.max()
//Math.min()

console.log(Math.max(1,2,3,4,5)); //Resultado esperado 5
console.log(Math.min(1,2,3,4,5)); //Resultado esperado 1

//Problema: Estas funciones no permiten entradas de tipo array, solo de tipo numerico
//Solucion: emplear aproximaciones, con los metodos reduce() o apply()
//La forma mas facil es aplicar el metodo apply() a la funcion pasando como primer parametro null y como segundo aprametro el array

//Math.max.apply(null, values);
console.log(Math.max.apply(null,arreglo));

//Math.min.apply(null, values) 
console.log(Math.min.apply(null,arreglo));



//BUSQUEDA SECUENCIAL
// Recorrido secuencial FOR
//Compara elemento por elemento hasta encontrar lo/los que buscamos
//Se compara elemento por elemento del vector/array con el valor que buscamos

//Devuelve el indice donde encontro el elemento
//Recibe el valor a buscar y el arreglo donde buscara

function sequentialSearch(element,array){
    for(var i in array){
        if(array[i] == element)
        return i;    
    }
   return -1; 
}

var letters = ["a", "b", "c", "d", "f", "g", "h", "i", "j", "k", "l", "m", "n"];

console.log(sequentialSearch("g",letters));

//ORDENAMIENTO
//JS provee un metodo que ordena los elementos de un arreglo
//Array.prototype.sort([compareFunction(a, b)])
//El modo de ordenar responde a la posicion del valor del string de acurdo a su valor en los caracteres unicode
//Con el metodo sort() los elementos se ordenan en orden ascendente, de la A a la Z

const equipos = ['Real Madrid', 'Manchester Utd', 'Bayern Munich', 'Juventus'];

console.log(equipos.sort()); 

// Resultado esperado   ['Bayern Munich', 'Juventus', 'Manchester Utd', 'Real Madrid']

//El metodo sort() no puede ser utilizado para ordenar numeros

const numeros = [3, 23, 12];

numeros.sort(); // → 12, 23, 3

//El metodo sort() puede ordenar valores negativos, cero y positivos 
//Cuando compara dos valores, se puede enviar la función compareFunction(a, b), como función de comparación y luego se ordenan los valores de acuerdo al resultado devuelto

//Si el resultado es negativo, a se ordena antes que b.
//Si el resultado es positivo, b se ordena antes de a.
//Si el resultado es 0, nada cambia.

//Si queremos ordenar los números en orden ascendente, esta vez necesitamos restar el primero parámetro (a) del segundo (b):

var numbers = [4, 2, 5, 1, 3];

console.log(numbers.sort(function(a, b){
  return a - b;
})); 

// → 1, 2, 3, 4, 5

