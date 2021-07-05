/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import modelo.dao.ProductoDAO;
import modelo.dto.ProductoDTO;
import modelo.dto.TipoDTO;

/**
 *
 * @author braya
 */
@MultipartConfig
public class ProductoCTO extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {    
            String menu = request.getParameter("menu");
            String accion = request.getParameter("accion");

            if(menu.equalsIgnoreCase("Producto"))
            {
                Facade obj = new Facade();
                Facade obj2 = new Facade();
                switch (accion)
                {
                    case "Listar":
                    {
                        List<ProductoDTO> lis = obj.listarProductos();
                        request.setAttribute("lista_productos", lis);
                        
                        List<TipoDTO> lis2 = obj.listarTipos();
                        request.setAttribute("lista_tipos", lis2);
                        break;
                    }
                    
                    case "Buscar":
                    {                       
                        int tipo = Integer.parseInt(request.getParameter("txt_tipo_pro"));
                        List<ProductoDTO> lis = obj2.listarProductos2(tipo);
                        request.setAttribute("lista_productos", lis);
                        
                        List<TipoDTO> lis2 = obj2.listarTipos();
                        request.setAttribute("lista_tipos", lis2);                      
                        break;
                    }
                    
                    case "Agregar":
                    {
                        String nombre = request.getParameter("txt_nombre_pro");
                        String des = request.getParameter("txt_descripcion_pro");
                        int val = Integer.parseInt(request.getParameter("txt_valor_pro"));
                        int tipo = Integer.parseInt(request.getParameter("txt_tipo_pro"));
                        Part part = request.getPart("imagen_pro");
                        InputStream inputStream = part.getInputStream();                       
                        ProductoDTO nuevo = new ProductoDTO(nombre, des, val, tipo, inputStream);
                        obj.crearProducto(nuevo);
                        request.getRequestDispatcher("ProductoCTO?menu=Producto&accion=Listar").forward(request, response);
                        break;
                    }
                    
                    case "Editar":
                    {
                        ProductoDTO edit = new ProductoDTO();
                        edit.setId_pro(Integer.parseInt(request.getParameter("id")));
                        edit=obj.verProducto(edit);
                        request.setAttribute("producto", edit);
                        request.getRequestDispatcher("ProductoCTO?menu=Producto&accion=Listar").forward(request, response);
                        break;
                    }
                    
                    case "Actualizar":
                    {
                        int id1=Integer.parseInt(request.getParameter("txt_id_pro"));
                        String nombre1=request.getParameter("txt_nombre_pro");
                        String des1=request.getParameter("txt_descripcion_pro");
                        int val1=Integer.parseInt(request.getParameter("txt_valor_pro"));
                        int tipo = Integer.parseInt(request.getParameter("txt_tipo_pro"));
                        Part part1 = request.getPart("imagen_pro");
                        InputStream inputStream = part1.getInputStream();
                        ProductoDTO actual = new ProductoDTO(id1,nombre1,des1,val1, tipo,inputStream);
                        obj.actualizarProducto(actual);
                        request.getRequestDispatcher("ProductoCTO?menu=Producto&accion=Listar").forward(request, response);
                        break;
                    }
                    
                    case "ImagenPro":
                    {
                        ProductoDAO img = new ProductoDAO();
                        int id = Integer.parseInt(request.getParameter("id"));                                        
                        img.listarImg(id, response);
                        break;
                    }  
                    
                    case "Eliminar":
                    {
                        ProductoDTO del = new ProductoDTO();
                        del.setId_pro(Integer.parseInt(request.getParameter("id")));
                        obj.eliminarProducto(del);
                        request.getRequestDispatcher("ProductoCTO?menu=Producto&accion=Listar").forward(request, response);
                        break;
                    }   
                }   
                request.getRequestDispatcher("ProductoVTA.jsp").forward(request, response);
            }                       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
