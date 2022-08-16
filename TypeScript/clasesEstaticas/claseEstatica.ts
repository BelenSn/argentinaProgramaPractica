
//CLASE ESTATICA
// static class 

// Se usa sin necesidad de realizar una instancia de la misma

//En Typescript no existen clases estáticas
//Se puede definir sus métodos como estáticos y trabajar con ella sin instanciar el objeto

class MyStaticClass{

    public static myMethod(): void{
        console.log("Método estático");
    }
}