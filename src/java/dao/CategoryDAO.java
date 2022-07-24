/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class CategoryDAO {
     Connection conn=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    
    public List<Category> getAllCate(){
    List<Category> listCategory =new ArrayList<>();
         try {
             
             String query="select * from Category";
             conn=new DBContext().getConnection();
             ps=conn.prepareStatement(query);
             rs=ps.executeQuery();
             while(rs.next()){
                 listCategory.add(new Category(rs.getInt(1), rs.getString(2)));
             }
         } catch (Exception ex) {
             Logger.getLogger(CategoryDAO.class.getName()).log(Level.SEVERE, null, ex);
         }
         return listCategory;
    }
    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
         List<Category> listS = dao.getAllCate();
         for (Category o : listS) {
             System.out.println(o);
        }
    }
}
