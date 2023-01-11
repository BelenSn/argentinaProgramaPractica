

<%@page import="java.util.List"%>
<%@page import="logica.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page - Lista de Personas</title>
        
         <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        
        <style>
            p{
                font-size:18px;
            }
        </style>
    </head>
    <body>
        
        <div class="container">
            
            <div class="row p-5">
            
                <h1 class="pt-5 pb-3">Lista de Personas</h1>

                <%
                    List <Persona> listaPersonas = (List) request.getSession().getAttribute("listaPersonas");
                    //Casteo → (List) 

                    //recorrido de la lista → por cada persona de listaPersonas
                    for(Persona per : listaPersonas){
                 %>

                 <p><b>DNI: </b><%=per.getDni() %></p>
                 <p><b>Nombre: </b><%=per.getNombre() %></p>
                 <p><b>Apellido: </b><%=per.getApellido() %></p>
                 <p><b>Teléfono: </b><%=per.getTelefono() %></p>
                 <hr>
                 <%


                     }
                %>                 
                 
                
            </div>
        </div>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin= "anonymous"></script>
    </body>
</html>
