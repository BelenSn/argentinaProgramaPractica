


//POLIMORFISMO POR ABSTRACCION

//define clases base abstractas (que no se pueden instanciar)
//sirven de base para las clases derivadas
//sólo existen para ser heredadas


//Clase Abstracta
//Se antepone el modificador "abstract" a la clase y al metodo que se quiere que, forzosamente, en las clases derivadas sea implementado

abstract class Operacion2{ //clase abstract
    protected valorA : number;
    protected valorB : number;
    protected resultado : number;

    abstract Operar():void; //metodo abstract

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

class Suma2 extends Operacion2{
    Operar(){
        this.resultado = this.valorA + this.valorB;
    }
}

class Resta2 extends Operacion2{
    Operar(){
        this.resultado = this.valorA - this.ValorB;
    }
}
