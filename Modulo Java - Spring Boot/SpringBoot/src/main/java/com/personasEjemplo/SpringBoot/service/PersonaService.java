
package com.personasEjemplo.SpringBoot.service;

import com.personasEjemplo.SpringBoot.model.Persona;
import com.personasEjemplo.SpringBoot.repository.PersonaRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonaService implements IPersonaService {
    
    @Autowired
    public PersonaRepository pRepository;

    @Override
    public List<Persona> verPersonas() {
        return pRepository.findAll();
    }

    @Override
    public void crearPersona(Persona p) {
        pRepository.save(p);
    }

    @Override
    public void borrarPersona(Long id) {
        pRepository.deleteById(id);
    }

    @Override
    public Persona buscarPersona(Long id) {
        return pRepository.findById(id).orElse(null);
    }
    
    
}
