/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo.dao;

import com.mysql.jdbc.PreparedStatement;
import conexiones.ConexionMsql;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.dto.ProductoDTO;
import modelo.dto.TipoDTO;

/**
 *
 * @author braya
 */
public class TipoDAO 
{
    private static final String SQL_READ = "SELECT * FROM tb_tipo";
    private static final ConexionMsql con=ConexionMsql.getInstance();
    
    public List<TipoDTO>readAll() //conecta con la base y lee todos los productos registrados
    {
        List<TipoDTO> lst = null;
        PreparedStatement psnt;
        
        try
        {
            psnt = (PreparedStatement) con.getCnn().prepareStatement(SQL_READ);
            ResultSet rs = psnt.executeQuery();
            lst = new ArrayList<>();
            while(rs.next())
            {
                TipoDTO obj = new TipoDTO(rs.getInt("id_tipo"),
                        rs.getString("nombre"));
                lst.add(obj);
            }
            
        }catch(SQLException ex)
        {
            Logger.getLogger(TipoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally
        {
            con.cerrarConexion();
        }
        return lst;
    }
}
