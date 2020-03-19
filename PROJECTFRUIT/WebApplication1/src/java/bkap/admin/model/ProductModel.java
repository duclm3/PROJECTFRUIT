/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.admin.model;

import bkap.user.entity.GroupProduct;
import bkap.user.entity.Orders;
import bkap.user.entity.Product;
import bkap.user.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author minh
 */
public class ProductModel {
    public List<Product> getAllProduct(){
        List<Product> listPro = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            listPro = session.createQuery("from Product").list();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            session.getTransaction().commit();
        }   
            return listPro;
    }
    
    public boolean insertProduct(Product newPro){
        boolean check = true;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
             session.save(newPro); 
             session.getTransaction().commit();
        } catch (Exception e) {
             e.printStackTrace();          
             check = false;
             session.getTransaction().rollback();            
        }
        
        session.close();
        return check;
    }
    public boolean updateProduct(Product proUpdate){
        boolean check = true;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            session.update(proUpdate);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            check = false;
            session.getTransaction().rollback();
        }
        session.close();
        return check;
    }
    public Product getProductById(String productId){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product where productId=:proId");
        query.setString("proId", productId);
        Product pro = (Product)query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return pro;
    }
    public boolean deleteProduct(String productId){
        boolean check = true;
        Product pro =getProductById(productId);
        if(pro!=null){
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            try {
                 session.delete(pro);
            } catch (Exception e) {
                e.printStackTrace();
                check = false;
                session.getTransaction().rollback();
            }
            session.getTransaction().commit();
            session.close();                          
        }
        return check;
    }
     public List<Orders> getAllOrder(){
       List<Orders> listorder = null;
       Session session = HibernateUtil.getSessionFactory().openSession();
       session.getTransaction().begin();
       try {
           listorder = session.createQuery("from Orders").list();
       } catch (Exception e) {
           e.printStackTrace();
       }
       session.close();
       return listorder;
   }
    public boolean updateStatusOrder(Orders orders){
        boolean check = true;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
         try {
            session.update(orders);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            check= false;
            session.getTransaction().rollback();
        }
        session.close();
        return check;
    }
    public Orders getOrderbyId(String odId){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Orders where orderId=:odId");
        query.setString("odId", odId);
        Orders order = (Orders)query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return order;
    }
}
