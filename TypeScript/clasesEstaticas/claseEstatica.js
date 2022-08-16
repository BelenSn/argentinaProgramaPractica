//CLASE ESTATICA
// static class 
// Se usa sin necesidad de realizar una instancia de la misma
//En Typescript no existen clases estáticas
//Se puede definir sus métodos como estáticos y trabajar con ella sin instanciar el objeto
var MyStaticClass = /** @class */ (function () {
    function MyStaticClass() {
    }
    MyStaticClass.myMethod = function () {
        console.log("Método estático");
    };
    return MyStaticClass;
}());
