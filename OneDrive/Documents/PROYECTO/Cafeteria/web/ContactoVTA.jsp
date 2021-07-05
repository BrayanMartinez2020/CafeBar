<%-- 
    Document   : ContactoVTA
    Created on : 18/05/2021, 09:20:00 PM
    Author     : Brayan David Martinez C.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href ="css/portada.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">                   
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">  
    </head>
    
    <body>
        <div align="center">
            <img src="img/letrero.png" class="img-fluid" alt="Responsive image">
        </div>
        <br>
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark">
                <div class="container-fluid">
                <a class="navbar-brand" href="#"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 35px; color:white;" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 35px; color:white;" href="ProductoCTO?menu=Producto&accion=Listar">Menú</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 35px; color:white;" href="ContactoVTA.jsp">Contactanos</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 35px; color:white;" href="Registro.jsp">Registrar</a>
                        </li>
                        <li class="nav-item">
                            <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 35px; color:white;" href="Ingreso.jsp">Ingresar</a>
                        </li>
                    </ul>
                </div>
                </div>
            </nav> 
        </div>       
        <br>           
            <div class="container">
            <h1>Dejame tu comentario</h1>  
            <br>
            <form>
                <div class="form-row">
                    <div class="form-group col-sm-6">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" id="nombre" 
                               placeholder="Ingrese su nombre">
                    </div>
                    <div class="form-group col-sm-6">
                        <label for="apellido">Apellido</label>
                        <input type="text" class="form-control" id="apellido" 
                               placeholder="Ingrese su apellido">
                    </div>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                        <input type="text" class="form-control" id="Email" 
                               placeholder="Ingrese su email">
                </div>
                
                <div class="form-row">
                    <div class="form-group col-sm-9">
                        <label for="direccion">Dirección</label>
                        <input type="text" class="form-control" id="Direccion" 
                               placeholder="Ingrese su direccion">
                    </div>
                    <div class="form-group col-sm-9">
                        <label for="ciudad">Ciudad</label>
                        <input type="text" class="form-control" id="ciudad" 
                               placeholder="Ingrese su ciudad">
                    </div>
                    <div class="form-group col-sm-3">
                        <label for="localidad">Localidad</label>
                        <select id="localidad" class="form-control">
                            <option selected>Escoja una opcion</option>
                            <option>Fontibon</option>
                            <option>Kennedy</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label for="comentario">Comentario</label>
                    <textarea id="comentario" class="form-control" rows="10"></textarea>
                </div>
                <div class="form-group">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="gridCheck">
                        <label class="form-check-label" for="gridCheck">
                            Quiero que me contacten
                        </label>                       
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>            
        </div>
        <br>
        <footer>
            <p> &copy; Copyright 2021. Diseñado por Brayan David Martinez Calvo &#124 
                      Bogotá D.C - Colombia
            </p>
        </footer>
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script> 
    </body>
</html>
