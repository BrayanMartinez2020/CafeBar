<%-- 
    Document   : Principal
    Created on : 26/11/2020, 11:24:33 AM
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav>
            <div id="navbarNav">
                <ul>
                    <li>
                        <a style="margin-left: 10px; border: none" href="#">Inicio</a>
                    </li>
                    <li>
                        <a style="margin-left: 10px; border: none" href="ProductoCTO?menu=Producto&accion=Listar" target="Frame">Producto</a>
                    </li>
                    <li>
                        <a style="margin-left: 10px; border: none" href="#" target="Frame">Cuenta</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div style="height: 530px">
            <iframe name="Frame" style="height: 100%; width: 100%; border: 2px"></iframe>
        </div>
    </body>
</html>
