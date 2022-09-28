//INTERFACES

//Permiten crear nuevos tipos y asi comprobar los tipo de variables

interface a{
    b:number;
}

interface b extends a{
    c:string;
}

class test implements b{
    b: number;
    c:string;

    constructor(b:number,c:string){
        this.b = b;
        this.c = c;
    }
}

// La clase test hereda de b, quien hereda de a. Teniendo test acceso

//INTERFACE PERSONA

interface IPersona{
    nombre:string; 
    edad:number;
    direccion:{ // IDireccion; 
        calle:string;
        pais:string;
        ciudad:string;
    }

    mostrarDireccion:()=>string;
}

//Al instanciar un objeto con respecto a su interfaz, tenemos:

const persona1 : IPersona={
    nombre:'Jose', 
    edad:30,
    direccion:{
        calle:'San Martin',
        pais:'Argentina',
        ciudad:'Córdoba',
    },

    mostrarDireccion(){
        return this.nombre + ', '+ this.direccion.ciudad + ', '+ this.direccion.pais;
    }   
}

 console.log(persona1.mostrarDireccion());


//Permite separar en mas de una interfaz
//para evitar el anidamiento

/*
interface IDireccion{
    calle:string;
    pais:string;
    ciudad:string;
}
*/

/*
direccion:IDireccion;
*/


interface Window {
    name: string;
  }
  interface Window {
    app: string;
  }