//El aeroplano esta compuesto de partes que pueden ser elementales (composición) o no (agregación)


class Turbina{
    private numTurbinas:number = 0;

    public constructor(n:number){
        this.numTurbinas = n;
    }

    public toString(){
        return this.numTurbinas + " Turbinas/s";
    }
}

class Cubierta{
    private cabinaTripulacion:boolean = false;
    private cabinaVuelo:boolean = false;
    private sistemaEmergencia:boolean = false;
    private numTanquesCombustible:number = 0;
    private numPuertasSalida:number = 0;

    public constructor(pCabinaTripulacion:boolean,pCabinaVuelo:boolean,pSistemaEmergencia:boolean,pTanquesCombustible:number,pPuertasSalida:number){

        this.cabinaTripulacion =pCabinaTripulacion;
        this.cabinaVuelo = pCabinaVuelo;
        this.sistemaEmergencia = pSistemaEmergencia;
        this.numTanquesCombustible = pTanquesCombustible;
        this.numPuertasSalida = pPuertasSalida;
    }

    public toString(){
        let mensaje = "Cubierta compuesta de : ";

        if(this.cabinaVuelo){
            mensaje += " Cubierta de Vuelo, ";
        }
        if(this.cabinaTripulacion){
            mensaje += " Cubierta de Tripulación, ";
        }
        if(this.sistemaEmergencia){
             mensaje += " Sistema de Emergencia, ";
        }

        mensaje += this.numTanquesCombustible + " Tanques de Combustible, ";
        mensaje += this.numPuertasSalida + " Puertas de Salida.";

        return mensaje;
    }
}

//Turbina y Cubierta
// Forman parte elemental del Aeroplano (asociación de composición)


class Helice{

    private numHelices:number = 0;

    public constructor(n:number){
        this.numHelices = n;
    }

    public toString(){
        return this.numHelices + " hélice/s";
    }

}

class TrenDeAterrizaje{

}

class Alas{

}


class Aeroplano{

    private helice:Helice;
    private trenAterrizaje:TrenDeAterrizaje;
    private alas:Alas;
    private cubierta:Cubierta;

    constructor(phelice:Helice,pTrenAterrizaje:TrenDeAterrizaje,pAlas:Alas,pCubierta:Cubierta){

        this.helice = phelice;
        this.trenAterrizaje = pTrenAterrizaje;
        this.alas = pAlas;
        this.cubierta = pCubierta;
    }

    public toString(){

        let mensaje = "Aeroplano compuesto por: ";

        mensaje += this.helice.toString();
        mensaje += this.alas.toString();
        mensaje += this.trenAterrizaje.toString();
        mensaje += this.cubierta.toString();

        return mensaje;
    }
}