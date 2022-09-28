
//SWITCH
/* switch(expresion){
    case x:
        // bloque de codigo
    break;
    case y:
        // bloque de codigo
    break;
    default:
        //bloque de codigo
}  */



//FUNCIONES

function nombre(parametro1,parametro2){
    // codigo a ejecutarse
}



//ESTRUCTURAS REPETITIVAS

//FOR
/* for(expresion_inicial; condicion; expresion_final){
    //codigo a ejecutarse
} */


for(var i = 0; i < 10; i++){
    console.log("Número: " + i);
}


//WHILE
/* while(condicion){
    // Codigo a ejecutarse
} */

//DO-WHILE
let resultado = "";
let a = 0;

do{
    a = a + 1;
    resultado = resultado + a;
}while(i < 5);

console.log(resultado);

//Resultado esperado 12345

let b = 0;
//CONTINUE
do{
    b = b + 1;
    continue;
}while(b < 5);

console.log(b);

let c = 0;
//BREAK
do{
    c = c + 1;  
    if (c == 3) break;
} while(c < 5);

console.log(c);