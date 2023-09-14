package modeloDAO;

import config.Conexion;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modelo.Compra;

public class CompraDAO {

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;

    public List listar() {
        ArrayList<Compra> listaCompra = new ArrayList<>();
        String sql = "select * from Compra";

        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Compra nuevaCompra = new Compra();
                nuevaCompra.setIdCompra(rs.getInt("idCompra"));
                nuevaCompra.setIdProveedor(rs.getInt("idProveedor"));
                nuevaCompra.setFecha(rs.getDate("fecha"));
                nuevaCompra.setTotal(rs.getDouble("total"));
                listaCompra.add(nuevaCompra);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listaCompra;
    } 
    
    public int agregar (Compra comp) {
        String sql = "insert into Compra (idProveedor,fecha, total) values (?,?,?)";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, comp.getIdProveedor());
            ps.setDate(2, (Date) comp.getFecha());
            ps.setDouble(3, comp.getTotal());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("No se pudo agregar el registro");
        }
        return resp;
    }
    
    public Compra listarCodigoCompra(int id){
        Compra comp = new Compra();
        String sql = "select * from compra where idCompra ="+ id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()) {
                comp.setIdCompra(rs.getInt(1));
                comp.setIdProveedor(rs.getInt(2));
                comp.setFecha(rs.getDate(3));
                comp.setTotal(rs.getDouble(4));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return comp;
    }
    
    public void eliminar(int id){
        String sql = "delete from compra where idCompra ="+id;
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public int actualizar(Compra comp){
        String sql = "update compra set idProveedor= ?,fecha = ?, total = ? where IdCompra = ?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, comp.getIdProveedor());
            ps.setDate(2, (Date) comp.getFecha());
            ps.setDouble(3, comp.getTotal());
            ps.setInt(4, comp.getIdCompra());
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
}
