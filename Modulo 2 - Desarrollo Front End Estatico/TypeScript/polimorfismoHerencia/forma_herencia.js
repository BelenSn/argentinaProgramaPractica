//POLIMORFISMO
//Clases diferentes (polimórficas) implementan métodos con el mismo nombre
//permite comportamientos diferentes, asociados a objetos distintos compartiendo el mismo nombre
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
// POLIMORFISMO POR HERENCIA
//Cuando una subclase hereda de una clase base, obtiene todos los métodos, campos, propiedades y eventos de la superclase 
//sin embargo, quizás necesitemos un comportamiento diferente para las clases derivadas (o subclases)
// No es lo mismo dibujar un rectángulo que un círculo por lo que el comportamiento deberá ser distinto (polimorfismo)
var Forma = /** @class */ (function () {
    function Forma() {
        this.nombre = "";
    }
    Forma.prototype.Dibujar = function () {
        console.log("Implementación del método Dibujar clase base");
    };
    return Forma;
}());
var Rectangulo = /** @class */ (function (_super) {
    __extends(Rectangulo, _super);
    function Rectangulo() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.base = 0;
        _this.altura = 0;
        return _this;
    }
    Rectangulo.prototype.Dibujar = function () {
        console.log("Implementación método Diujar clase hija Rectángulo");
    };
    return Rectangulo;
}(Forma));
var Circulo = /** @class */ (function (_super) {
    __extends(Circulo, _super);
    function Circulo() {
        var _this = _super !== null && _super.apply(this, arguments) || this;
        _this.radio = 0;
        return _this;
    }
    Circulo.prototype.Dibujar = function () {
        console.log("Implementación método Diujar clase hija Círculo");
    };
    return Circulo;
}(Forma));
//Creacion de una instancia de la clase Rectangulo y Circulo
//al llamar al metodo Dibujar, el mismo fue reemplazado por la implementacion que se corresponde a la forma
var rectangulo = new Rectangulo();
rectangulo.Dibujar();
var circulo = new Circulo();
circulo.Dibujar();
