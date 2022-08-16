//POLIMORFISMO
//Clases diferentes (polimórficas) implementan métodos con el mismo nombre
//permite comportamientos diferentes, asociados a objetos distintos compartiendo el mismo nombre


// POLIMORFISMO POR HERENCIA

//Cuando una subclase hereda de una clase base, obtiene todos los métodos, campos, propiedades y eventos de la superclase 
//sin embargo, quizás necesitemos un comportamiento diferente para las clases derivadas (o subclases)


// No es lo mismo dibujar un rectángulo que un círculo por lo que el comportamiento deberá ser distinto (polimorfismo)

class Forma{
    nombre:string = "";

    Dibujar(){
        console.log("Implementación del método Dibujar clase base");
    }
}

class Rectangulo extends Forma{
    base:number = 0;
    altura:number = 0;

    Dibujar(){
        console.log("Implementación método Diujar clase hija Rectángulo");
    }
}

class Circulo extends Forma{
    radio:number = 0;

    Dibujar(){
        console.log("Implementación método Diujar clase hija Círculo");
    }
}

//Creacion de una instancia de la clase Rectangulo y Circulo
//al llamar al metodo Dibujar, el mismo fue reemplazado por la implementacion que se corresponde a la forma

let rectangulo = new Rectangulo();
rectangulo.Dibujar();

let circulo = new Circulo();
circulo.Dibujar();