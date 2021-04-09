/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BussinesModelLayer;

import DataAccessLayer.DataAccess;
import javax.swing.table.DefaultTableModel;

/**
 *
 * @author zerme
 */
public class Farmacia {

    private DataAccess dataAccess = DataAccess.Instance();
    private int idFarmacia;
    private String nombre;
    private String direccion;
    private String telefono;
    private int activo;

    public Farmacia() {
    }

    public Farmacia(int idFarmacia, String nombre, String direccion, String telefono, int activo) {
        this.idFarmacia = idFarmacia;
        this.nombre = nombre;
        this.direccion = direccion;
        this.telefono = telefono;
        this.activo = activo;
    }

    public int getIdFarmacia() {
        return idFarmacia;
    }

    public void setIdFarmacia(int idFarmacia) {
        this.idFarmacia = idFarmacia;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombreFar) {
        this.nombre = nombreFar;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getActivo() {
        return activo;
    }

    public void setActivo(int activo) {
        this.activo = activo;
    }

    public DefaultTableModel GetAllModel(){
        String query = "SELECT * FROM farmacias";
        return dataAccess.Query(query);
    }
    
    public void GetById(){
        String query = "SELECT * FROM farmacias WHERE idFarmacia = " + idFarmacia;
        DefaultTableModel res = dataAccess.Query(query);
        idFarmacia = (int)res.getValueAt(0, 0);
        nombre = String.valueOf(res.getValueAt(0, 1));
        direccion = String.valueOf(res.getValueAt(0, 2));
        telefono = String.valueOf(res.getValueAt(0, 3));
        activo = (int)res.getValueAt(0, 4);
    }
    
    public void GetByName(){
        String query = "SELECT * FROM farmacias WHERE nombre = '" + nombre + "'";
        DefaultTableModel res = dataAccess.Query(query);
        idFarmacia = (int)res.getValueAt(0, 0);
        nombre = String.valueOf(res.getValueAt(0, 1));
        direccion = String.valueOf(res.getValueAt(0, 2));
        telefono = String.valueOf(res.getValueAt(0, 3));
        activo = (int)res.getValueAt(0, 4);
    }
    
    public boolean Add(){
        //INSERT INTO TABLA (C1, C2) VALUES (V1, V2);
        String query = "INSERT INTO farmacias(nombre, direccion, telefono, activo) " + 
                "VALUES('" + nombre + "','" + direccion + "','" + telefono + "'," + activo + ");";
        return dataAccess.Execute(query) >= 1;
    }
    
    public boolean Delete(){
        String query = "DELETE FROM farmacias WHERE idFarmacia = " + idFarmacia;
        return dataAccess.Execute(query) >= 1;
    }
    
    public boolean Update(){
        String query = "UPDATE farmacias SET " +
                "nombre = '" + nombre + "', " +
                "direccion = '" + direccion + "', " +
                "telefono = '" + telefono + "', " +
                "activo = " + activo + " " +
                "WHERE idFarmacia = " + idFarmacia;
        return dataAccess.Execute(query) >= 1;
    }
}
