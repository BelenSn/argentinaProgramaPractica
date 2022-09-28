class Operacion{
    protected valorA : number;
    protected valorB : number;
    protected resultado : number;

    constructor(){
        this.valorA = 0;
        this.valorB = 0;
        this.resultado = 0;
    }

    set ValorA(value:number){
        this.valorA = value;
    }

    set ValorB(value:number){
        this.valorB = value;
    }

    get Resultado():number{
        return this.resultado;
    }
}

//Y utilizar extends, herencia
class Suma extends Operacion{
    Sumar(){
        this.resultado = this.valorA + this.valorB;
    }
}

class Resta extends Operacion{
    Restar(){
        this.resultado = this.valorA - this.ValorB;
    }
}

//Creacion de las instancias de la clase Suma y Resta

let operacionS = new Suma();
operacionS.ValorA = 45;
operacionS.ValorB = 10;
operacionS.Sumar();
console.log("El resultado de la Suma es: "+ operacionS.Resultado);

let operacionR = new Resta();
operacionR.ValorA = 45;
operacionR.ValorB = 10;
operacionR.Restar();
console.log("El resultado de la Resta es: "+ operacionR.Resultado);

//Los modificadores de acceso en la superclase son “protected”
//Estos permiten que la subclase pueda acceder a ellos y manipularlos.

