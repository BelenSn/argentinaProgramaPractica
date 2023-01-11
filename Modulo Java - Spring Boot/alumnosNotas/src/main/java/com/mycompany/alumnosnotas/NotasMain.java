/*
Una escuela primaria utiliza una matriz para calcular los promedios de sus alumnos. 
Para ello tienen una matriz de 10 filas, donde cada fila representa a un alumno y 4 columnas. 
Las primeras 3 columnas representan las notas de cada uno de los alumnos, 
mientras que la 4 es el promedio de las mismas. 
Se desea un programa que sea capaz de:
permitir la carga por teclado de las 3 notas de cada alumno, 
de realizar el cálculo automático del promedio, 
de guardar el mismo en la 4 columna 
y luego mostrar por pantalla cada una de las notas y el promedio obtenido
*/


package com.mycompany.alumnosnotas;

import java.util.Scanner;


public class NotasMain {

   
    public static void main(String[] args) {
       
        double matriz[][] = new double[4][4];
        
        Scanner sc = new Scanner(System.in);
        
        System.out.println("NOTAS");
        for (int i = 0; i < 4; i++) {
            System.out.println("ALUMNO " + (i+1));
            
            for (int j = 0; j < 4; j++) {
                
                
                System.out.println("Ingrese la nota " + (j+1)+ ":");
                matriz[i][j] = sc.nextDouble();
                
                
            }
            
            System.out.println("--------------------");
        }
        
        
        //mostrar datos
        for (int i = 0; i < 4; i++) {
            System.out.println("ALUMNO " + (i+1));
            for (int j = 0; j < 4; j++) {
                
                System.out.println(" " + matriz[i][j]);
            }
        }
    }
    
}
