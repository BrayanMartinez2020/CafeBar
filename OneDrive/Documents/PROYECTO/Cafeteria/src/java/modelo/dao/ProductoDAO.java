/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import com.mysql.jdbc.PreparedStatement;
import conexiones.ConexionMsql;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletResponse;
import modelo.dto.ProductoDTO;

/**
 *
 * @author braya
 */
public class ProductoDAO 
{
    private static final String SQL_INSERT = "INSERT INTO tb_producto"
            +"(nombre_producto, descripcion, valor, tipo_pro, imagen_producto) VALUES(?,?,?,?,?)";
    private static final String SQL_DELETE = "DELETE FROM tb_producto WHERE id_producto = ?";
    private static final String SQL_UPDATE = "UPDATE tb_producto SET nombre_producto = ?,descripcion = ?,valor = ?, tipo_pro, imagen_producto = ? WHERE id_producto = ?";
    private static final String SQL_READ = "SELECT * FROM tb_producto WHERE id_producto = ?";
    private static final String SQL_READALL = "SELECT * FROM tb_producto";
    private static final String SQL_READTIPO = "SELECT * FROM tb_producto WHERE tipo_pro = ?";
   
    private static final ConexionMsql con=ConexionMsql.getInstance();
    
    public boolean create(ProductoDTO c)//Crea un producto que se registra
    {
        try
        {
            PreparedStatement ps;
            ps = (PreparedStatement) con.getCnn().prepareStatement(SQL_INSERT);
            ps.setString(1, c.getNombre_pro());
            ps.setString(2, c.getDescripcion_pro());
            ps.setInt(3, c.getValor_pro());
            ps.setInt(4, c.getTipo_pro());
            ps.setBinaryStream(5, c.getImagen_pro());
            
            if(ps.executeUpdate()>0)
            {
                return true;
            }
            
        }catch(SQLException ex)
        {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
            
        }finally
        {
            con.cerrarConexion();
        }
        return false;
    }
    public List<ProductoDTO>readAll2(int id) //conecta con la base y lee todos los productos registrados
    {
        List<ProductoDTO> lst = null;
        PreparedStatement psnt;       
        try
        {
            psnt = (PreparedStatement) con.getCnn().prepareStatement(SQL_READTIPO);
            psnt.setInt(1, id);
            ResultSet rs = psnt.executeQuery();
            lst = new ArrayList<>();
            while(rs.next())
            {
                ProductoDTO obj = new ProductoDTO(rs.getInt("id_producto"),
                        rs.getString("nombre_producto"),
                        rs.getString("descripcion"),
                        rs.getInt("valor"),
                        rs.getInt("tipo_pro"),
                        rs.getBinaryStream("imagen_producto"));
                lst.add(obj);
            }
            
        }catch(SQLException ex)
        {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally
        {
            con.cerrarConexion();
        }
        return lst;
    }
    
    public List<ProductoDTO>readAll() //conecta con la base y lee todos los productos registrados
    {
        List<ProductoDTO> lst = null;
        PreparedStatement psnt;
        
        try
        {
            psnt = (PreparedStatement) con.getCnn().prepareStatement(SQL_READALL);
            ResultSet rs = psnt.executeQuery();
            lst = new ArrayList<>();
            while(rs.next())
            {
                ProductoDTO obj = new ProductoDTO(rs.getInt("id_producto"),
                        rs.getString("nombre_producto"),
                        rs.getString("descripcion"),
                        rs.getInt("valor"),
                        rs.getInt("tipo_pro"),
                        rs.getBinaryStream("imagen_producto"));
                lst.add(obj);
            }
            
        }catch(SQLException ex)
        {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally
        {
            con.cerrarConexion();
        }
        return lst;
    }
    
    public void listarImg(int id, HttpServletResponse response)
    {              
        PreparedStatement psnt;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream=null;
        BufferedOutputStream bufferedOutputStream = null;
        response.setContentType("image/*");              
        try
        {
            outputStream=response.getOutputStream();
            psnt = (PreparedStatement) con.getCnn().prepareStatement(SQL_READ);
            psnt.setInt(1, id);
            ResultSet rs = psnt.executeQuery();
            if(rs.next())
            {
                inputStream=rs.getBinaryStream("imagen_producto");
            }
            bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i=0;
            while((i=bufferedInputStream.read())!=-1)
            {
                bufferedOutputStream.write(i);
            }
            
        }catch(IOException | SQLException e)
        {
            
        }finally
        {
            con.cerrarConexion();
        }      
    }  
    
    public ProductoDTO read(ProductoDTO filter)//conecta con la base y lee un producto registrado en especifico
    {
        ProductoDTO objRes=null;
        PreparedStatement psnt;
        try
        {
            psnt = (PreparedStatement) con.getCnn().prepareStatement(SQL_READ);
            psnt.setInt(1, filter.getId_pro());
            ResultSet rs = psnt.executeQuery();
            while(rs.next())
            {
                objRes= new ProductoDTO(
                        rs.getInt("id_producto"),
                        rs.getString("nombre_producto"),
                        rs.getString("descripcion"),                      
                        rs.getInt("valor"),
                        rs.getInt("tipo_pro"),
                        rs.getBinaryStream("imagen_producto")
                        );
            }
        }catch(SQLException ex)
        {
            Logger.getLogger(ProductoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally
        {
            con.cerrarConexion();
        }
        return objRes;
    }  
    
    public boolean update(ProductoDTO item )//conecta con la base y actualiza un producto registrado
    {
        PreparedStatement ps;
        try
        {
            ps = (PreparedStatement) con.getCnn().prepareStatement(SQL_UPDATE);
            ps.setString(1, item.getNombre_pro());
            ps.setString(2, item.getDescripcion_pro());
            ps.setInt(3, item.getValor_pro());
            ps.setInt(4, item.getTipo_pro());
            ps.setBinaryStream(5, item.getImagen_pro());
            ps.setInt(6, item.getId_pro());           
            if(ps.executeUpdate()>0)
            {
                return true;
            }           
        }catch(SQLException ex)
        {
            System.out.println("Error al actualizar"+ex.getMessage());
        }finally
        {
            con.cerrarConexion();
        }
        return false;
    }
    
    public boolean delete(ProductoDTO item) //conecta con la base y elimina un producto registrado
    {
        PreparedStatement ps;
        try
        {
            ps = (PreparedStatement) con.getCnn().prepareStatement(SQL_DELETE);
            ps.setInt(1, item.getId_pro());
            if(ps.executeUpdate()>0)
            {
                return true;
            }
        }catch(SQLException ex)
        {
            throw new Error(ex.getMessage());
        }finally
        {
            con.cerrarConexion();
        }
        return false;
    }
    
}
