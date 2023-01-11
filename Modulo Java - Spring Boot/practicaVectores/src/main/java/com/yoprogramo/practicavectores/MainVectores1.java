
/*   
Se necesita de un vector que sea capaz de almacenar 10 números enteros entre 1 y 100 
Realizar un programa que permita la carga por teclado de los 10 números solicitados
*/
package com.yoprogramo.practicavectores;
import java.util.*;

public class MainVectores1 {

    
    public static void main(String[] args) {
       
        //definicion del vector
       int vector[] = new int[3];
        //clase Scanner
       Scanner entrada = new Scanner(System.in);
       
               
        //carga del vector
        for (int i = 0; i < vector.length; i++) {  
            
            //verifica que los numeros sean entre 1 y 100
            do {
                System.out.println(i + ")Ingrese un número entre 1 y 100 para la posición " + i);
                vector[i] = entrada.nextInt();
                
                if (vector[i] < 0 || vector[i] > 100 ) {
                    System.out.println("El número ingresado debe ser entre 1 y 100");                    
                }
                System.out.println("--------------");
                
            } while (vector[i] < 0 || vector[i] > 100);
            
        }
          
        
        
        //Mostrar datos          
        System.out.print("VECTOR: ");
        
        for (int i = 0; i < vector.length; i++) {            
            System.out.print(" " + vector[i]);
        }
        
        /*
        for (int i : vector){            
            System.out.print(" " + i);
        }
        
        */
        
        
        
    }
    
}
