
package com.personasEjemplo.SpringBoot.controller;

import com.personasEjemplo.SpringBoot.model.Persona;
import com.personasEjemplo.SpringBoot.service.IPersonaService;
//import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class Controller {
    /*
    //simulacion de una base de datos
    List <Persona> listaPersonas = new ArrayList();
    
    @GetMapping("/hola")
    public String decirHola(){
        return "Hello World";
    }
    
    
    @GetMapping("/hola/{nombre}")
    public String decirHola2(@PathVariable String nombre){
        return "Hello World " + nombre;
    }
    
    
    @GetMapping("/hola/{nombre}/{apellido}/{edad}")
    public String decirHola3(@PathVariable String nombre,
                             @PathVariable String apellido,
                             @PathVariable int edad){
        return "Hello World " + nombre + " " + apellido + ", de " + edad + " años";
    }
    
    
    @GetMapping ("/chau")
    public String decirChau(@RequestParam String nombre,
                            @RequestParam String apellido,
                            @RequestParam int edad){
        return "Chau mundo. \n" + nombre + " " + apellido + ", de " + edad + " años";
    }
    */
    
    @Autowired
    private IPersonaService pService;
    
    @PostMapping("/new/persona")
    public void agregarPersona(@RequestBody Persona p){
        //listaPersonas.add(p);
        
        pService.crearPersona(p);
    }
    
    @GetMapping("/ver/personas")
    @ResponseBody
    public List<Persona> verPersonas(){
        //return listaPersonas;
        
        return pService.verPersonas();
    }
    
    @DeleteMapping("/delete/{id}")
    public void borrarPersona(@PathVariable Long id){
        pService.borrarPersona(id);
    }
    
    
}
