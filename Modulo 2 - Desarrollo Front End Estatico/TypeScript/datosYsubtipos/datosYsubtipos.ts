
////https://docs.microsoft.com/en-us/learn/modules/typescript-declare-variable-types/2-types-overview

//https://www.typescriptlang.org/play

//TIPOS DE DATOS Y SUBTIPOS

//ANY
//de cualquier tipo
//Se utiliza cuando no hay informacion del tipo de dato
let cantidad: any = 4;
let desc: any [] = [1,true,"verde"];

//TIPOS DE DATOS PRIMITIVOS

//STRING
//Cadena de caracteres
//Se puede intercalar texto con variables ${expresion}
//alt + 96 --> `

let saludo: string = "Hola Mundo";

let nom: string = "Belén";
let mensaje: string = `Mi nombre es ${nom}. Soy nueva en TypeScrip.` ;
console.log(mensaje);

//NUMBER
//Valores numericos
//enteros (init) o decimales (float)
let codigoProducto: number = 6;

//BOOLEAN
//tipo de variable que solo puede tener dos valores
// true o false
let estadoProducto: boolean = false;


//VOID
//Indica la ausencia de un valor
//como una funcion que no devuelve ningun valor
function mensajeUsuario(): void{
    console.log("Este es un mensaje para el usuario");
}


//ENUM
//Se usa para trabajar con un conjunto de constantes relacionadas
//En JS se transforma en una funcion

//Crear la enumeracion
enum Color{
    Blanco,
    Rojo,
    verde
}

//Declaracion de la variable y asignar un valor de la enumeracion
let colorAuto: Color = Color.Blanco;
console.log(colorAuto); //return 0


//TIPOS DE OBJETOS

//ARRAY
//coleccion de datos (vectores, matrices)

let list : string [] = ['pimiento','papas','tomate'];
let rocosos : boolean[] = [true,false,false,true];
let perdidos : any[] = [9,true,'asteroides'];
let diametro : [string,number] = ['Saturno',116460];


//GENERIC
//tipos genericos

/* function identity<T>(arg : T): T{
    return arg;
} */

//Especie de plantillas 
//se puede aplicar un tipo de dato a varios puntos del codigo
//sive para aprovechar codigo sin la necesidad de duplicarlo, evitando el uso de ANY

//Siguiente funcion
function identity1(arg : number): number{
    return arg;
}

//Que sea valida para otros tipos de datos
//cambia number por any
function identity2(arg : any): any{
    return arg;
}
//Pero esta funcion podria recibir un number y devolver otro tipo de dato
//Para solucionarlo y obligar que el compilador respete el mismo tipo, se utiliza genericos

function identity3<T>(arg : T): T{
    return arg;
} 
//cambia ANY, por la letra T entre < >
//

//OBJECT
//Tipo de dato que engloba la mayoria de los tipo de datos no primitivos

let persona : object = {nombre: "Ana", edad: 45};

//DESESTRUCTURACION
//Permite acceder a los valores de un array o de un objeto

//Desestructuracion de un objeto
var obj = {a:1,b:2,c:3};
console.log(obj.c);

//Desestructuracion de un array
var array = [1,2,3];
console.log(array[2]);

//Desestructuracion con estructuracion
var array2 = [1,2,3,5];
var [x,y, ...rest] = array2;
console.log(rest);

//...rest permite agregar mas parametros
// El resultado sera --> [3,5]

//ESTRUCTURACION
//Facilita que una variable de tipo array reciba gran cantidad de parametros

//Estructuracion en funciones
/*
function rest(first,second,...allOthers){
    console.log(allOthers);
}
*/
//allOthers --> permite pasar mas parametros
// Al llamar la funcion con los siguientes parametros
/*
rest('1','2','3','4','5');
*/
//return 3,4,5

//TIPOS NULL Y UNDEFINED
//Son subtipos de los demas tipos
//No es posible hacer referencia explicita
//https://docs.microsoft.com/es-es/learn/modules/typescript-declare-variable-types/2-types-overview

//ASERCION DE TIPOS (AS)
//Le indica al complilador "confia en mi, se lo que estoy haciendo"
//Le dice al compilador el tipo de dato a fin de acceder a los metodos, propiedades, etc

//Dos posibles sintaxis
/*
(nombre as string).toUpperCase();

(<string>nombre).toUpperCase();
*/

//FUNCIONES
//Conjuntos de instrucciones o sentencias agrupadas
//Que se pueden reutilizar
//Deben ser invocadas por su nombre.
// permiten simplificar el código haciendo más legible y reutilizable
// función consiste en:
//Un nombre
//Una lista de parámetros o argumentos encerrados entre paréntesis.
//Conjunto de sentencias o instrucciones encerradas entre llaves
//Se pueden crear funciones propias y utilizarlas cuando sea necesario

//Sintaxis
/*
function nombreDeLaFuncion(patametro1,parametro2){
    //intrucciones a ejecutar
}*/

/*
function calcularIva(productos:Producto[]) : [number,number]{
    let total = 0;

    productos.forEach(({precio}) => {
        total += precio;
    });
    return [total, total * 0.15];
}

//Clase Producto
class Producto{
    precio : number;
}

*/