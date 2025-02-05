package bkap.user.entity;
// Generated 24-Sep-2019 20:07:04 by Hibernate Tools 4.3.1


import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import org.hibernate.annotations.Entity;
import org.hibernate.annotations.Table;

/**
 * Product generated by hbm2java
 */

public class Product  implements java.io.Serializable {


     private String productId;
     private GroupProduct groupProduct;
     private String nameProduct;
     private Double price;
     private String imageLink;
     private String descriptions;
     private Integer quantity;
     private Boolean proStatus;
     private Set orderDetails = new HashSet(0);

    public Product() {
    }

	
    public Product(String productId) {
        this.productId = productId;
    }

    public Product(String productId, GroupProduct groupProduct, String nameProduct, Double price, String imageLink, String descriptions, Integer quantity, Boolean proStatus, Set orderDetails) {
       this.productId = productId;
       this.groupProduct = groupProduct;
       this.nameProduct = nameProduct;
       this.price = price;
       this.imageLink = imageLink;
       this.descriptions = descriptions;
       this.quantity = quantity;
       this.proStatus = proStatus;
       this.orderDetails = orderDetails;
    }
   
    public String getProductId() {
        return this.productId;
    }
    
    public void setProductId(String productId) {
        this.productId = productId;
    }
    public GroupProduct getGroupProduct() {
        
        return this.groupProduct;
    }
    
    public void setGroupProduct(GroupProduct groupProduct) {
        this.groupProduct = groupProduct;
    }
    public String getNameProduct() {
        return this.nameProduct;
    }
    
    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }
    public Double getPrice() {
        return this.price;
    }
    
    public void setPrice(Double price) {
        this.price = price;
    }
    public String getImageLink() {
        return this.imageLink;
    }
    
    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }
    public String getDescriptions() {
        return this.descriptions;
    }
    
    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }
    public Integer getQuantity() {
        return this.quantity;
    }
    
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    public Boolean getProStatus() {
        return this.proStatus;
    }
    
    public void setProStatus(Boolean proStatus) {
        this.proStatus = proStatus;
    }
    public Set getOrderDetails() {
        return this.orderDetails;
    }
    
    public void setOrderDetails(Set orderDetails) {
        this.orderDetails = orderDetails;
    }
}


