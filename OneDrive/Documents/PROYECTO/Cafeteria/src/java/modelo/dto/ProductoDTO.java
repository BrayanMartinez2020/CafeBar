
package modelo.dto;

import java.io.InputStream;
import java.io.Serializable;
import java.sql.Blob;
import java.util.Arrays;
import java.util.Objects;

public class ProductoDTO implements Serializable
{
    private int id_pro;
    private String nombre_pro;
    private String descripcion_pro;
    private int valor_pro;
    private InputStream imagen_pro;

    public ProductoDTO(int id_pro, String nombre_pro, String descripcion_pro, int valor_pro, InputStream imagen_pro) {
        this.id_pro = id_pro;
        this.nombre_pro = nombre_pro;
        this.descripcion_pro = descripcion_pro;
        this.valor_pro = valor_pro;
        this.imagen_pro = imagen_pro;
    }   
    
    public ProductoDTO(String nombre_pro, String descripcion_pro, int valor_pro, InputStream imagen_pro) {
        this.nombre_pro = nombre_pro;
        this.descripcion_pro = descripcion_pro;
        this.valor_pro = valor_pro;
        this.imagen_pro = imagen_pro;
    }

    public ProductoDTO() {
    }

    public int getId_pro() {
        return id_pro;
    }

    public void setId_pro(int id_pro) {
        this.id_pro = id_pro;
    }

    public String getNombre_pro() {
        return nombre_pro;
    }

    public void setNombre_pro(String nombre_pro) {
        this.nombre_pro = nombre_pro;
    }

    public String getDescripcion_pro() {
        return descripcion_pro;
    }

    public void setDescripcion_pro(String descripcion_pro) {
        this.descripcion_pro = descripcion_pro;
    }

    public int getValor_pro() {
        return valor_pro;
    }

    public void setValor_pro(int valor_pro) {
        this.valor_pro = valor_pro;
    }

    public InputStream getImagen_pro() {
        return imagen_pro;
    }

    public void setImagen_pro(InputStream imagen_pro) {
        this.imagen_pro = imagen_pro;
    }

 
    
    @Override
    public String toString() {
        return this.id_pro+ " "+ this.nombre_pro;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final ProductoDTO other = (ProductoDTO) obj;
        if (this.id_pro != other.id_pro) {
            return false;
        }
        if (this.valor_pro != other.valor_pro) {
            return false;
        }
        if (!Objects.equals(this.nombre_pro, other.nombre_pro)) {
            return false;
        }
        if (!Objects.equals(this.descripcion_pro, other.descripcion_pro)) {
            return false;
        }
        if (!Objects.equals(this.imagen_pro, other.imagen_pro)) {
            return false;
        }
        return true;
    }
    
    

    
    
}
