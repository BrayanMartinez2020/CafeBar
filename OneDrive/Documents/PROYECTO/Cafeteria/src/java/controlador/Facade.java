/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.List;
import modelo.dao.ProductoDAO;
import modelo.dao.TipoDAO;
import modelo.dto.ProductoDTO;
import modelo.dto.TipoDTO;

public class Facade 
{
    public boolean crearProducto(ProductoDTO objP)//funcion que crea los productos
    {
        boolean rta = false;
        if(objP !=null)
        {
            ProductoDAO dao = new ProductoDAO();
            rta  = dao.create(objP);
        }
        return rta;
    }
    
    public List<ProductoDTO> listarProductos()//funcion que enlista los productos que se van registrando
    {
        List<ProductoDTO> lst = null;
        ProductoDAO dao = new ProductoDAO();
        lst = dao.readAll();
        return lst;
    }
    
    public List<ProductoDTO> listarProductos2(int id)//funcion que enlista los productos que se van registrando
    {
        List<ProductoDTO> lst = null;
        ProductoDAO dao = new ProductoDAO();
        lst = dao.readAll2(id);
        return lst;
    }

    public List<TipoDTO> listarTipos()//funcion que enlista los productos que se van registrando
    {
        List<TipoDTO> lst = null;
        TipoDAO dao = new TipoDAO();
        lst = dao.readAll();
        return lst;
    }
    
    public ProductoDTO verProducto(ProductoDTO item) //funcion que muestra los datos de un producto registrado
    {
        ProductoDTO obj;
        ProductoDAO dao = new ProductoDAO();
        obj=dao.read(item);
        return obj;        
    }
    
    
    public boolean actualizarProducto(ProductoDTO objP) //funcion que actualiza los datos de un producto registrado
    {
        boolean rta = false;
        if(objP!=null)
        {
            ProductoDAO dao = new ProductoDAO();
            rta = dao.update(objP);
        }
        return rta;
    }
    
    public boolean eliminarProducto(ProductoDTO objP)
    {
        boolean rta = false;
        if(objP !=null)
        {
            ProductoDAO dao = new ProductoDAO();
            rta = dao.delete(objP);
        }
        return rta;
    }
}

