
package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;


public class Controladora {
    
    
    ControladoraPersistencia controlP = new ControladoraPersistencia();
    
    //todo se encuentra del lado de la controladora de persistencia
    
    public void crearPersona(Persona per){        
        controlP.crearPersona(per);
    }
    
    //elimina una persona por su id
    public void eliminarPersona(int id){
        controlP.eliminarPersona(id);
    }

    //elimina una persona recibiendo el objeto completo
    public void eliminarPersona(Persona pers){
        controlP.eliminarPersona(pers);
    }

    //muestra personas
    public List<Persona> traerPersonas(){
        return controlP.traerPersonas();
    }
    
    //muestra datos a editar
    public void editarDatos(Persona pers){
        controlP.editarDatos(pers);
    }

    
}
