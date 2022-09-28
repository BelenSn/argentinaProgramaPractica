let f: number; //* Inferencia explicita
let g: string; //* Inferencia explicita

let h = 101; // Inferencia implicita

// Variable f es del tipo number
//Variable g es del tipo string
//Variable h infiere que es del tipo number, ya que es el tipo de dato que se le asigno a la variable
//al pasar el mouse sobre la variable h, se abre un tooltip con la declaracion explicita --> let h: number

//h = "one"; //Error
//Marca error ya que h es del tipo number y no admite string

//----> let recursos = ['memoria','disco','procesador'];

//let es la declaracion de un arreglo llamado "recursos"
//El tipo no ha sido definido explicitamente
//al pasar el mouse sobre la variable "recursos", Typescripts entiende que se trata de un arreglo de tipo string

//----> let recursos = ['memoria','disco','procesador', 100];

//Si se introduce un valor de otro tipo, como number, se observa que la el arreglo admite variables del tipo string o number (string | number)
//no es buena practica, por lo que se aconseja especificar el tipo de datos de forma explicita

let recursos: string [] = ['memoria','disco','procesador'];

//De esta manera, si se intenta agregar un elemento de otro tipo, el complilador marcara un error