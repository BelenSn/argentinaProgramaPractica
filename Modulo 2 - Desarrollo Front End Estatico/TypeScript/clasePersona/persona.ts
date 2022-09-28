// Crear una clase Persona 
//Agregarle los métodos, propiedades(getters y setters) y crear un constructor.


/*
class nombreDeLaClase{
    // Atributos 
    <nombre_variable>: <tipo_de_datos>

    // Constructor
    constructor (parametro:tipo de dato devuelto){
        this.parametro = parametro
    }
    
   // Metodos
    <nombre_método>(<parámetros>:tipo de dato):<tipo_de_datos_devuelto>{
    instrucciones
    }
}
*/
class Persona{
    //Modificadores de acceso - Atributos
    
    //La clase persona, encapsula los atributos a fin de que no tomen valores inconsistentes
    //El ENCAPSULAMIENTO, da lugar al Principio de Ocultamiento: sólo los metodos de una clase deberían tener acceso directo a los atributos de esa clase, para impedir que un atributo sea modificado en forma insegura, o no controlada por la propia clase.

    private nombre:string;
    private apellido:string;
    private anioNac:number;

    //constructor: permite instanciar un objeto
    constructor(nombre:string,apellido:string,anioNac:number){
        this.nombre = nombre;
        this.apellido = apellido;
        this.anioNac = anioNac;
    }


    //Metodos

    public toString():string{
        return this.nombre + this.apellido;
    }

    public edad(anioActual:number):number{
        return(anioActual - this.anioNac);
    }

    //Propiedades (getters y setters)

    get Nombre():string{
        return this.nombre;
    }
    set Nombre(nombre:string){
        this.nombre = nombre;
    }

    get Apellido():string{
        return this.apellido;
    }
    set Apellido(apellido:string){
        this.apellido = apellido;
    }

    get AnioNacimiento():number{
        return this.anioNac;
    }
    set AnioNacimiento(anioNac:number){
        this.anioNac = anioNac;
    }
}

