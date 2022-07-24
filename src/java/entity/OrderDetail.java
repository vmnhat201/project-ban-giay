/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

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
public class OrderDetail {
    private int id;
    private int order_id;
    private String productName;
    private String productImage;
    private float  productPrice;
    private int quantity;
    
    
}
