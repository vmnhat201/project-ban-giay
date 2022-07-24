/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Cart;
import entity.OrderDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author User
 */
public class OrdersDetailDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void saveCart(int orderId, Map<Integer, Cart> carts) {
        try {
            String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                    + "           ([order_id]\n"
                    + "           ,[productName]\n"
                    + "           ,[productImage]\n"
                    + "           ,[productPrice]\n"
                    + "           ,[quantity])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?)";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer productId = entry.getKey();
                Cart cart = entry.getValue();
                ps.setString(2, cart.getProduct().getName());
                ps.setString(3, cart.getProduct().getImage());
                ps.setDouble(4, cart.getProduct().getPrice());
                ps.setDouble(5, cart.getQuantity());
                ps.executeUpdate();
            }

        } catch (Exception ex) {
            Logger.getLogger(ShipDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<OrderDetail> getAllOrderDetail() {
        List<OrderDetail> list = new ArrayList<>();
        try {

            String sql = "SELECT * FROM [dbo].[OrderDetail]";

            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {                
                OrderDetail orderdetail = OrderDetail.builder()
                    .id(rs.getInt(1))
                    .order_id(rs.getInt(2))
                    .productName(rs.getString(3))
                    .productImage(rs.getString(4))
                    .productPrice(rs.getFloat(5))
                    .quantity(rs.getInt(6))
                    .build();
            list.add(orderdetail);
            }
            
        } catch (Exception ex) {
            Logger.getLogger(OrdersDetailDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public static void main(String[] args) {
        OrdersDetailDAO DAO = new OrdersDetailDAO();
        List<OrderDetail> list = DAO.getAllOrderDetail();
        for (OrderDetail o : list) {
            System.out.println(o);
        }
    }
}
