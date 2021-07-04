/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.util.List;
import modelo.dto.ProductoDTO;


public class Cafe {

    public static void main(String[] args) 
    {
        Facade obj  = new Facade();
        List<ProductoDTO> lst = null;
        lst = obj.listarProductos();
                      
        if(lst != null)
        {
            for(ProductoDTO producto : lst)
            {
                System.out.println(producto);
            }
        }else
        {
            System.out.println("No hay productos");
        }
    }
    
}
