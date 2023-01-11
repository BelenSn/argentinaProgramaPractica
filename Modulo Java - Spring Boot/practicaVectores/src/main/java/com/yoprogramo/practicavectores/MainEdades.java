/*
En un vector de 15 posiciones se almacenan las edades de 15 alumnos. 
Se desea un programa que sea capaz de determinar cuál es la mayor edad 
y cuál es la menor edad que se encuentra entre los estudiantes
*/


package com.yoprogramo.practicavectores;
import java.util.Scanner;

public class MainEdades {

   
    public static void main(String[] args) {
        
        int vector[] = new int [4];
        
        Scanner sc = new Scanner(System.in);
        
        //ingreso de edades
        for (int i = 0; i < vector.length; i++) {
            
            System.out.println(i + ")Ingrese la edad para el alumno " + (i+1));
            vector[i] = sc.nextInt(); 
        }//for
        
        //inicializo numeros
        int nMayor = vector[0];
        int nMenor = vector[0];
        int posMayor = 0;
        int posMenor = 0;
        
        //verificacion de numero mayor y menor
        for (int i = 0; i < vector.length; i++) {
            
            if (vector[i] > nMayor) {                
                nMayor = vector[i];
                posMayor = i+1;
                
            }//if
            
            if (vector[i] < nMenor) {                
                nMenor = vector[i];
                posMenor = i+1;
                
            }
        }
        
        //resultado
        System.out.println("La edad " + nMayor + " es la MAYOR, corresponde al alumno " + posMayor);
        System.out.println("El edad " + nMenor + " es la MENOR, corresponde al alumno " + posMenor);
        
    }
    
}
