package bkap.user.entity;
// Generated 24-Sep-2019 20:07:04 by Hibernate Tools 4.3.1



/**
 * OrderDetailId generated by hbm2java
 */
public class OrderDetailId  implements java.io.Serializable {


     private int orderId;
     private String productId;

    public OrderDetailId() {
    }

    public OrderDetailId(int orderId, String productId) {
       this.orderId = orderId;
       this.productId = productId;
    }
   
    public int getOrderId() {
        return this.orderId;
    }
    
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }
    public String getProductId() {
        return this.productId;
    }
    
    public void setProductId(String productId) {
        this.productId = productId;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof OrderDetailId) ) return false;
		 OrderDetailId castOther = ( OrderDetailId ) other; 
         
		 return (this.getOrderId()==castOther.getOrderId())
 && ( (this.getProductId()==castOther.getProductId()) || ( this.getProductId()!=null && castOther.getProductId()!=null && this.getProductId().equals(castOther.getProductId()) ) );
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getOrderId();
         result = 37 * result + ( getProductId() == null ? 0 : this.getProductId().hashCode() );
         return result;
   }   


}


