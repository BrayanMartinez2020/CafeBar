<%-- 
    Document   : Ingreso
    Created on : 18/05/2021, 09:44:43 PM
    Author     : Brayan David Martinez C.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
            
        <link rel="stylesheet" type="text/css" href ="css/Registro.css">
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
            <nav class="navbar navbar-expand-lg">
            <a class="navbar-brand" href="#"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 30px; color:white;" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item active">
                        <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 30px; color:white;" href="ProductoCTO?menu=Producto&accion=Listar">| Menú</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 30px; color:white;" href="ContactoVTA.jsp">| Contactanos</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 30px; color:white;" href="Registro.jsp">| Registrar</a>
                    </li>
                    <li class="nav-item">
                        <a class="btn btn-outline" style="margin-left: 10px; border: none; font-size: 30px; color:white;" href="Ingreso.jsp">| Ingresar</a>
                    </li>
                </div>
            </div>
            </nav> 
        </div>
        <div class="container">
           <section class="form-register">
                <form>
                    <h4>Formulario Registro</h4>
                    <input class="controls" type="text" name="txt_nombres" placeholder="Ingrese su Nombre">                                              
                    <input class="controls" type="text" name="txt_apellidos" placeholder="Ingrese su Apellido" required="">
                    <input class="controls" type="text" name="txt_telefono" placeholder="Ingrese su Telefono"  required="">
                    <label>Fecha de nacimiento</label>
                    <input class="controls" type="date" name="txt_fecha_nacimiento" required="">           
                    <input class="controls" type="email" name="txt_correo" placeholder="Ingrese su Correo" required="">
                    <input class="controls" type="password" name="txt_clave" placeholder="Ingrese su Contraseña" required="">

                    <input class="botons btn-success" type="submit" name="accion" value="Registrar">           
                </form>
            </section> 
        </div>
        <br>
        <footer>
            <p> &copy; Copyright 2021. Diseñado por Brayan David Martinez Calvo &#124 
                      Bogotá D.C - Colombia
            </p>
        </footer> 
        
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.7/js/all.js"></script>
        
    </body>
</html>
