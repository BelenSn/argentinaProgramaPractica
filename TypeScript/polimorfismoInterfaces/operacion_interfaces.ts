
//POLIMORFISMO POR INTERFACES

// INTERFAZ es un CONTRATO por lo que define propiedades y métodos, pero no su implementación



interface IOperacion{
    Operar(a:number,b:number):number;
}


//Una clase que implementa una interfaz debe implementar cualquier aspecto de dicha interfaz exactamente como esté definido

//Para implementar la interfaz en la clase Suma y Resta (y lograr el polimorfismo) se debe utilizar la palabra implements

class SumaI implements IOperacion{

    Operar(a: number, b: number): number {
        return a + b;
    }
}


class RestaI implements IOperacion{

    Operar(a: number, b: number): number {
        return a - b;
    }
}