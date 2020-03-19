/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.user.model;

import bkap.user.entity.Orders;
import bkap.user.entity.Product;
import bkap.user.util.HibernateUtil;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Le Minh Duc
 */
public class ProductModel {
    public Product getHotProduct(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from Product where nameProduct = 'Táo' AND proStatus = 1");
        Product prohot = (Product)query.uniqueResult();
        session.close();
        return prohot;
    }
    public List<Product> getTop4RauCuQua(){
        List<Product> listpro = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            listpro = session.createQuery("from Product where groupProduct = 'GR02' AND proStatus = 1").setMaxResults(4).list();
             session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().commit();
        }
        session.close();
        return listpro;
    }
    public List<Product> getTop4TraiCay(){
        List<Product> listpro = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            listpro = session.createQuery("from Product where groupProduct = 'GR01' AND proStatus = 1").setMaxResults(4).list();
             session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().commit();
        }
        session.close();
        return listpro;
    }
    public Product getProductById(String productId){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Product prod = null;
        Query query=null;
        try {
            query = session.createQuery("from Product where productId=:proId  AND proStatus = 1");
            query.setString("proId", productId);
            prod = (Product)query.uniqueResult();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        session.close();
        return prod;
    }
    public Product getProductByName(String nameProductt){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Product prod = null;
        try {
            Criteria cr = session.createCriteria(Product.class);
            cr.add(Restrictions.ilike("nameProduct", nameProductt, MatchMode.ANYWHERE));
            prod = (Product)cr.uniqueResult();;
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        session.close();
        return prod;
    }
    public List<Product> getAllProduct(){
        List<Product> listpro = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            listpro = session.createQuery("from Product WHERE proStatus = 1").list();
             session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().commit();
        }
        session.close();
        return listpro;
    }
    public List<Product> getAllTraiCay(){
        List<Product> listpro = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            listpro = session.createQuery("from Product where groupProduct = 'GR01'  AND proStatus = 1").list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        return listpro;
    }
    public List<Product> getAllRauCuQua(){
        List<Product> listpro = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            listpro = session.createQuery("from Product where groupProduct = 'GR02'  AND proStatus = 1").list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        session.close();
        return listpro;
    }
    public List<Product> getAllRandom(){
        List<Product> listpro = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            listpro = session.createQuery("from Product WHERE proStatus = 1 ORDER BY NEWID()").setMaxResults(7).list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        session.close();
        return listpro;
    }
    public List<Product> getProByPrice(String price1,String price2){
        List<Product> listpro = null;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            Double p1 = Double.parseDouble(price1);
            Double p2 = Double.parseDouble(price2);
            Criteria cr = session.createCriteria(Product.class);
            cr.add(Restrictions.between("price", p1, p2));
            listpro = cr.list();
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        session.close();
        return listpro;
    }
   public boolean insertOrder(Orders newOrder){
        boolean check = true;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
             session.save(newOrder); 
             session.getTransaction().commit();
        } catch (Exception e) {
             e.printStackTrace();          
             check = false;
             session.getTransaction().rollback();            
        }
        
        session.close();
        return check;
    }
  
    
}

