
package com.yoprogramo.practica;


public class Transporte {

    
    public static void main(String[] args) {
        
        
        //Auto auto1 = new Auto();
        
        //Auto auto2 = new Auto(1, "ABC123", 5, "rojo", true);

        //Llama a los metodos
        /*auto2.encender();
        auto2.acelerar(60);
        auto2.frenar(30);
        auto2.apagar();
        */
        
        /*System.out.println("El valor de la id es: " + auto2.getId());
        auto2.setId(3500);
        System.out.println("El nuevo valor de la id es: " + auto2.getId());
        */
        
        /*
        System.out.println("El id del auto1 es: " + auto1.getId());        
        System.out.println("El color del auto1 es: " + auto1.getColor());
        */
        
        //Setea valores
        /*
        auto1.setId(153);
        auto1.setPatente("456DEF");
        auto1.setCant_puertas(3);
        auto1.setColor("azul");
        auto1.setCaja_manual(false);
        */
        /*
        System.out.println("-------------");
        
        System.out.println("El nuevo id del auto1 es: " + auto1.getId());        
        System.out.println("El nuevo color del auto1 es: " + auto1.getColor());
        */
        
        /*
        System.out.println("Auto 1 " + auto1.toString());
        System.out.println("Auto 2 " + auto2.toString());
        */
        
        //Nueva cantidad de parametros, debido a que Auto hereda de la clase Vehiculo
        /*        
        Auto auto2 = new Auto(1, "ABC123", 5, "rojo", true,123456, 4, "Volkswagen", "Gol Trend");
        
        System.out.println("El id del auto2 es: " + auto2.getId());
        
        */
        
        Vehiculo vehiculo = new Vehiculo (12345,4,"Renault","Indefinido");
        Auto auto3 = new Auto(1,"FGH987",5,"Negro",true,65443,4,"Volkswagen","Gol Trend");
        Moto moto = new Moto(125,15689,2,"Yamaha","ZR1252");
        Camion camion = new Camion(6,true,69875,6,"Mercedes","Modelo x");
        
        Vehiculo vector[] = new Vehiculo[4];
        vector[0] = vehiculo;
        vector[1] = auto3;
        vector[2] = moto;
        vector[3] = camion;
        
        for (int i = 0; i < vector.length; i++) {
            System.out.println("Registro N°: " + i + " " + vector[i].getMarca());
            
        }
    }   
        
           
                
    
}
