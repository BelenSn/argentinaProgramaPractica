
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        <style>
            .label, p{
                font-size:18px;
            }
        </style>
    </head>
    
    
    
    <body>
    <div class="container">
        <div class="row p-5">
            
            <!-- Datos de la Persona -------------------- -->
            <h1 class="pt-5">Datos de la Persona</h1>
            <p>Ingrese los datos de la persona</p>
            <form action="SvPersona" method="POST" class="row">
                
                <div class="row pb-2">
                    <label class="label col-form-label-sm col-sm-2">DNI</label>
                    <div class="col-4">
                        <input type="text" name="dni" class="form-control" >
                    </div>                    
                </div>

                <div class="row pb-2">
                    <label class="label col-form-label-sm col-2">Nombre</label>
                    <div class="col-4">
                        <input type="text" name="nombre" class="form-control">
                    </div>
                </div>

                <div class="row pb-2">
                    <label class="label col-form-label-sm col-2">Apellido</label>
                    <div class="col-4">
                        <input type="text" name="apellido" class="form-control">
                    </div>
                </div>

                <div class="row pb-2">
                    <label class="label col-form-label-sm col-2">Teléfono</label>
                    <div class="col-4">
                        <input type="text" name="telefono" class="form-control">
                    </div>
                </div>

                <div class="d-md-flex pt-4">
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </div>
                
            </form>

            <!-- Ver lista de Personas -------------------- -->

            <h1 class="pt-5">Ver lista de Personas</h1>
            <p>Si desea ver todas las personas, haga click en el botón Mostrar Personas</p>
            <form action="SvPersona" method="GET" class="row">                
                <div class="d-md-flex pt-4">
                    <button type="submit" class="btn btn-primary">Mostrar Personas</button>
                </div>
            </form>

            <!-- Eliminar Personas -------------------- -->

            <h1 class="pt-5">Eliminar Personas</h1>
            <p>Ingrese el ID de la persona a eliminar</p>
            <form action="SvEliminar" method="POST" class="row">
                
                <div class="row pb-2">
                    <label class="label col-form-label-sm col-2">ID</label>
                    <div class="col-4">
                        <input type="text" name="id_eliminar" class="form-control">
                    </div>
                </div>

                <div class="d-md-flex pt-4">
                    <button type="submit" class="btn btn-primary">Eliminar</button>
                </div>
            </form>
            
            <!-- Editar Personas 
            
            <h1 class="pt-5">Editar Personas</h1>
            <p>Ingrese el ID de la persona a editar</p>
            <form action="SvModificar" method="POST" class="row">
                
                <div class="row pb-2">
                    <label class="label col-form-label-sm col-2">ID</label>
                    <div class="col-4">
                        <input type="text" name="id_editar" class="form-control">
                    </div>
                </div>

                <div class="d-md-flex pt-4">
                    <button type="submit" class="btn btn-primary">Editar</button>
                </div>
            </form>
            
            -------------------- -->
        </div>
    </div>


    <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin= "anonymous"></script>
</body>
    
    
    <!--formulario sin estilo -->
    <!-- 
    <body>
        <h1>Datos de la Persona</h1>
        <form action="SvPersona" method="POST">
            <p><label>DNI: </label><input type="text" name="dni"></p>
            <p><label>Nombre: </label><input type="text" name="nombre"></p>
            <p><label>Apellido: </label><input type="text" name="apellido"></p>
            <p><label>Teléfono: </label><input type="text" name="telefono"></p>
            <button type="submit">Enviar</button>
        </form>
                
        <h1>Ver lista de Personas</h1>
        <p>Si desea ver todas las personas, haga click en el botón Mostrar Personas</p>
        <form action="SvPersona" method="GET">
            <button type="submit">Mostrar Personas</button>
        </form>
        
        <h1>Eliminar Personas</h1>
        <p>Ingrese el ID de la persona a eliminar</p>
        <form action="SvModificar" method="POST">
            <p><label>ID: </label> <input input type="text" name="id_eliminar" ></p>
            <button type="submit">Eliminar</button>
        </form> 
          
    </body>
    -->
</html>
