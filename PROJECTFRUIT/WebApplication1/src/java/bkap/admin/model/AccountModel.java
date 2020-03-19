/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.admin.model;


import bkap.user.entity.Users;
import bkap.user.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author minh
 */
public class AccountModel {
     public List<Users> getAllUsers(){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        List<Users> listUsers = null;
        try {
            listUsers = session.createQuery("from Users").list();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
            session.getTransaction().commit();
            session.close();
            return listUsers;
    }
     public boolean loginAcc(String email,String pass){       
        boolean check = true;
        try {
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            Query query = session.createQuery("from Users where email=:email and passW=:pass");
            query.setString("email", email);
            query.setString("pass", pass);
            Users user = (Users)query.uniqueResult();
            if(user.getUserName().equals(null)){
                check = false;
            }
            session.getTransaction().commit();
            
        } catch (Exception e) {
            check = false;
            e.printStackTrace();       
        }          
        return check;   
    }
}
