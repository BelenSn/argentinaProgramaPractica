
package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Persona;
import persistencia.exceptions.NonexistentEntityException;


public class ControladoraPersistencia {
    
    PersonaJpaController persJPA = new PersonaJpaController();
    
    
    //crea una persona
    public void crearPersona(Persona per){        
        persJPA.create(per);
    }
    
    //elimina una persona por su id
    public void eliminarPersona(int id){
        try {
            persJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //elimina una persona recibiendo el objeto completo
    public void eliminarPersona(Persona pers){
        try {
            persJPA.destroy(pers.getId());
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //muestra personas
    public List<Persona> traerPersonas(){
        return persJPA.findPersonaEntities();
    }

    
    //editar datos    
    public void editarDatos(Persona pers){        
       
        try {
            persJPA.edit(pers);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
