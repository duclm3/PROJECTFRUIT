/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.user.model;

import bkap.user.entity.Product;
import bkap.user.entity.Users;
import bkap.user.util.HibernateUtil;
import java.sql.PreparedStatement;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Le Minh Duc
 */
public class LoginModel {
    public boolean checkAcount(String email, String password){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Users users = null;
        Query query=null;
        boolean checkk = true;
        try {
            query = session.createQuery("FROM Users WHERE email=:emaill and passW=:passwordd");
            query.setString("emaill", email);
            query.setString("passwordd", password);
            users = (Users)query.uniqueResult();
            if(users!=null){
                checkk = true;
            }else{
                checkk = false;
            }
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            checkk = false;
        }
        session.close();
        return checkk;
    }
    public Users getUserByEmail(String email){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Users users = null;
        Query query=null;
        try {
            query = session.createQuery("FROM Users WHERE email=:emaill");
            query.setString("emaill", email);
            users = (Users)query.uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        session.close();
        return users;
    }
    public boolean updateUser(String hoten,String diachi,String sdt,String email){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        LoginModel lgn = new LoginModel();
        boolean check = true;
        Users users = null;
        try {
            users = lgn.getUserByEmail(email);
            users.setUserName(hoten);
            users.setAddresss(diachi);
            users.setPhone(sdt);
            session.update(users);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            check= false;
        }
        session.close();
        return check;
    }
    public boolean updatePassword(String email,String password){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        LoginModel lgn = new LoginModel();
        boolean check = true;
        Users users = null;
        try {
            users = lgn.getUserByEmail(email);
            users.setPassW(password);
            session.update(users);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            check= false;
        }
        session.close();
        return check;
    }
    public boolean checkEmailPhoneSU(String email,String phone){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        boolean check = true;
        Users users = null;
        Query query=null;
        try {
            query = session.createQuery("FROM Users WHERE email=:emaill or phone=:phonee");
            query.setString("emaill", email);
            query.setString("phonee", phone);
            users = (Users)query.uniqueResult();
            if(users!=null){
                check = false;
            }else{
                check = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            check = false;
        }
        return check;
    }
    public boolean insertUser(Users user){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        boolean check = true;
        try {
            session.save(user);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
            check = false;
        }
        session.close();
        return check;
    }
//    public static void main(String[] args) {
//        LoginModel lgn = new LoginModel();
//        Users use = new Users();
//        use.setUserName("Dũng");
//        use.setEmail("dung@gmail.com");
//        use.setPhone("0123456789");
//        use.setAddresss("Hà Nội");
//        use.setUserName("Dũng");
//        use.setPassW("1");
//        use.setUserStatus(true);
//        boolean check = lgn.insertUser(use);
//        System.out.println(check);
//    }
}
