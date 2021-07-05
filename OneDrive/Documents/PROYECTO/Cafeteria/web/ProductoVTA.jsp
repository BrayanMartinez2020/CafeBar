<%-- 
    Document   : Producto
    Created on : 18/05/2021, 06:57:30 PM
    Author     : Brayan David Martinez C.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href ="css/portada.css"> 
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet"href="https://use.fontawesome.com/releases/v5.0.8/css/solid.css">
    </head>
    
    <body>         
        <div align="center">
            <img src="img/letrero.png" class="img-fluid" alt="Responsive image">
        </div>
        <br>
        <!-------NAV BAR-------------------------------------------------------------------------->
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
        <!-------NAV BAR-------------------------------------------------------------------------->
        <br>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1 class="text-center" style="color: white; font-family: courier; font-size: 60px;">Productos</h1>
                </div>
            </div>
            
            <br>
            <div class="row">
            <!------AGREGAR PRODUCTOS------------------------------------------------------------------->    
                <div class="card col-sm-12" style="background-color: #17202A; opacity: 0.9;">
                    <div class="card-body">
                        <form action="ProductoCTO?menu=Producto" method="POST" enctype="multipart/form-data">
                            <div class="form-group">
                                <label class="AgregarProducto">Nombre producto</label>
                                <input class="form-control" type="text" name="txt_nombre_pro" required="" value="${producto.getNombre_pro()}">
                                <input type="hidden" value="${producto.getId_pro()}" name="txt_id_pro">
                            </div>
                            <div class="form-group">
                                <label class="AgregarProducto">Descripcion producto</label>
                                <input class="form-control" type="text" name="txt_descripcion_pro" required="" value="${producto.getDescripcion_pro()}">
                            </div>
                            <div class="form-group">
                                <label class="AgregarProducto">Valor producto</label>
                                <input class="form-control" type="text" name="txt_valor_pro" required="" value="${producto.getValor_pro()}">                        
                            </div>
                            <div class="form-group">
                                <label class="AgregarProducto">Tipo de producto</label> 
                                <select id="localidad" class="form-control" name="txt_tipo_pro">
                                    <option selected style="font-family: courier; font-size: 25px" width="250">Escoja una opcion</option>
                                    <c:forEach var="objT" items="${lista_tipos}"> 
                                        <option style="font-family: courier; font-size: 25px" value="${objT.getId_tipo()}">${objT.getNombre()}</option>
                                    </c:forEach>
                                </select>                        
                            </div>
                            <div class="form-group">
                                <label class="AgregarProducto">Imagen</label>
                                <input class="form-control" type="file" name="imagen_pro" required="" value="${producto.getImagen_pro()}">                        
                            </div>
                            <br>                           
                            <input style="width: 150px; border-radius: 0px;" class="btn btn-success" type="submit" name="accion" value="Agregar">
                            <input style="width: 150px; border-radius: 0px;" class="btn btn-warning" type="submit" name="accion" value="Actualizar">
                        </form>
                    </div>
                </div>
            <!-------AGREGAR PRODUCTOS------------------------------------------------------------------->  
                <pre></pre> 
            <!-------BUSCAR POR CATEGORIA---------------------------------------------------------------->     
                <div class="card col-sm-10" style="background-color: #17202A; opacity: 0.9;"> 
                    <div class="card-body">
                        <form action="ProductoCTO?menu=Producto" method="POST" enctype="multipart/form-data">
                        <div class="form-row">
                            <a class="text-center" style="border: none; font-size: 30px; color:white; font-family: courier">Menú de bebidas</a>
                            <div class="form-group col-sm-6">
                                <select id="localidad" class="form-control" name="txt_tipo_pro">
                                    <option selected style="font-family: courier; font-size: 25px" width="250">Escoja una opcion</option>
                                    <c:forEach var="objT" items="${lista_tipos}"> 
                                        <option style="font-family: courier; font-size: 25px" value="${objT.getId_tipo()}">${objT.getNombre()}</option>
                                    </c:forEach>
                                </select>                               
                            </div> 
                            <input style="width: 170px; height: 40px;border-radius: 0px;" class="btn btn-success" type="submit" name="accion" value="Buscar">    
                        </div>                        
                        </form>
                    </div>
                </div>          
            <!-------BUSCAR POR CATEGORIA----------------------------------------------------------------> 
                <pre><br></pre>
            <!-------MOSTRAR PRODUCTOS------------------------------------------------------------------->  
                <div class="d-flex flex-wrap">
                    <c:forEach var="objP" items="${lista_productos}">                       
                        <div class="col-sm-3">
                            <div class="card " style="background-color: #17202A; opacity: 0.9; margin-top: 20px; flex: 1 600px;">
                                <div class="card-body">
                                    <h5 style="color: white; font-size: 34px; font-family:courier" class="card-title">${objP.getNombre_pro()}</h5>
                                    <img src="ProductoCTO?menu=Producto&accion=ImagenPro&id=${objP.getId_pro()}" alt="Imagen" width="100%" height="160">        
                                        
                                    <p class="card-text">${objP.getDescripcion_pro()}</p>
                                    <p class="card-text">$ ${objP.getValor_pro()}</p>
   
                                    <a style="width: 100px; border-radius: 0px;" class="btn btn-warning" href="ProductoCTO?menu=Producto&accion=Editar&id=${objP.getId_pro()}">Editar</a>
                                    <a style="width: 100px; border-radius: 0px;" class="btn btn-danger"  href="ProductoCTO?menu=Producto&accion=Eliminar&id=${objP.getId_pro()}">Eliminar</a>  
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>   
            <!-------MOSTRAR PRODUCTOS------------------------------------------------------------------->                            
            </div>
            <br>         
        </div>
        <br>
        
        <!-------REDES SOCIALES-------------------------------------------------------------------------->
        <div>
            <table>
                <tr>
                    <td>
                        <a href="https://www.facebook.com" target ="blank">
                            <img src="img/facebook.png" alt="Imagen facebook" height="100" width="100">
                        </a>
                    </td>
                    <td>   
                        <a href="https://www.instagram.com/?hl=es-la" target ="blank">
                            <img src="img/instagram.png" alt="Imagen facebook" height="100" width="100">
                        </a>
                    </td>
                    <td>   
                        <a href="https://www.instagram.com/?hl=es-la" target ="blank">
                            <img src="img/email.png" alt="Imagen facebook" height="100" width="100">
                        </a>
                    </td>
                </tr>
            </table>  
        </div>
        <!-------REDES SOCIALES-------------------------------------------------------------------------->
        <br>
        
        <footer>
            <p> &copy; Copyright 2021. Diseñado por Brayan David Martinez Calvo &#124 
                      Bogotá D.C - Colombia
            </p>
        </footer>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
        
        
    </body>
</html>
