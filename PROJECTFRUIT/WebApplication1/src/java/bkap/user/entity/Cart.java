/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.user.entity;

/**
 *
 * @author Le Minh Duc
 */
public class Cart {
   public Product pro;
   private int qty; 

    public Cart() {
    }

    public Cart(Product pro, int qty) {
        this.pro = pro;
        this.qty = qty;
    }

    public Product getPro() {
        return pro;
    }

    public void setPro(Product pro) {
        this.pro = pro;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

 
}
