/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;
import java.sql.Date;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author User
 */
@Builder
@Getter
@Setter
@ToString
public class Order {
    private int id;
    private int account_id;
    private double totalPrice;
    private Date create_date;
    private int shipping_id;
    
}
