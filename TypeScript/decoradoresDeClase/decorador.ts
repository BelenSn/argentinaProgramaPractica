
function DecoradorPersona(target:Function){
    console.log(target);
}


/*
function DecoradorPersona(data:string){
    return function <T extends {new(...args: any[]):{}}>(constructor:T){
        return class extends constructor{
            array = data.split(",");
            Nombre = this.array[0];
            Apellido = this.array[1];
        }
    }
}

@DecoradorPersona('Juan,López')
*/
@DecoradorPersona
class Person{
    
    private nombre:string = "";
    private apellido:string = "";
    private anioNac:number = 0;

    
    constructor(nombre:string,apellido:string){
        this.nombre = nombre;
        this.apellido = apellido;
        
    }
}

//Al momento de instanciar el objeto a traves de su contructor
// y luego, accede a la propiedad Nombre, se puede observar que ésta fue reemplazada por Juan López


let person = new Person("Juan","López");
console.log(person.toString());


//INSTANCIAS
// Se utilizan VARIABLES para manipular los objetos, o las instancias de las clases
// Se utiliza el operador NEW

//SINTAXIS PARA INSTANCIAR OBJETOS
// nombreDelObjeto = new NombreDeLaClase(parametros)

/*
let persona = new Persona();
*/

//SINTAXIS PARA INICIALIZAR OBJETOS
// *Por referencia a variables
/*
let persona = new Persona();
persona.apellido = "Rosas";
persona.nombre = "María";
*/

// *Por medio del constructor de la clase
/*
let persona = new Persona("María","Rosas");
*/

// *Por medio de la propiedad setter
/*
let persona = new Persona();
persona.Apellido = "Rosas";
persona.Nombre = "María";
*/

