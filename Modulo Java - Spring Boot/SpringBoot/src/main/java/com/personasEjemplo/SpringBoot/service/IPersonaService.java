
package com.personasEjemplo.SpringBoot.service;

import com.personasEjemplo.SpringBoot.model.Persona;
import java.util.List;


public interface IPersonaService {
    
    public List<Persona> verPersonas();
    
    public void crearPersona(Persona p);
    
    public void borrarPersona(Long id);
    
    public Persona buscarPersona(Long id);
    
    
}
