/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import context.DBContext;
import entity.Ship;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class ShipDAO {

     Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public int createById(Ship ship) {
        try {
            String sql = "INSERT INTO [dbo].[Ship]\n"
                    + "           ([name]\n"
                    + "           ,[phone]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           (?,?,?)\n";
            conn=new DBContext().getConnection();
            ps=conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,ship.getName());
            ps.setString(2,ship.getPhone());
            ps.setString(3,ship.getAddress());
            ps.executeUpdate();
            
            rs =ps.getGeneratedKeys();
            if(rs.next()){
                return rs.getInt(1);
            }
            
        } catch (Exception ex) {
            Logger.getLogger(ShipDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

}
