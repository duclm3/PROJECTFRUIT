/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bkap.admin.model;


import bkap.user.entity.GroupProduct;
import bkap.user.entity.Product;
import bkap.user.util.HibernateUtil;
import java.util.List;
import org.hibernate.Query;


import org.hibernate.Session;

/**
 *
 * @author minh
 */
public class GroupProductModel {
    public List<GroupProduct> getAllGroup(){
        Session ss = HibernateUtil.getSessionFactory().openSession();
        ss.getTransaction().begin();       
        List<GroupProduct> listGroup = null;
        try {
            listGroup = ss.createQuery("from GroupProduct").list();
        } catch (Exception e) {
            e.printStackTrace();
            ss.getTransaction().rollback();
        }
        ss.getTransaction().commit();
        ss.close();
        return listGroup;
    }
    
        public boolean insertGroup(GroupProduct newGroup){
        boolean check = true;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
             session.save(newGroup); 
             session.getTransaction().commit();
        } catch (Exception e) {
             e.printStackTrace();          
             check = false;
             session.getTransaction().rollback();            
        }
        
        session.close();
        return check;
    }
    public boolean updateGroup(GroupProduct groupUpdate){
        boolean check = true;
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        try {
            session.update(groupUpdate);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            check = false;
            session.getTransaction().rollback();
        }
        session.close();
        return check;
    }
    public GroupProduct getGroupById(String groupId){
        Session session = HibernateUtil.getSessionFactory().openSession();
        session.getTransaction().begin();
        Query query = session.createQuery("from GroupProduct where groupId=:gPId");
        query.setString("gPId", groupId);
        GroupProduct gP = (GroupProduct)query.uniqueResult();
        session.getTransaction().commit();
        session.close();
        return gP;
    }
    
    public boolean deleteGroup(String groupId){
        boolean check = true;
        GroupProduct group =getGroupById(groupId);
        if(group!=null){
            Session session = HibernateUtil.getSessionFactory().openSession();
            session.getTransaction().begin();
            try {
                 session.delete(group);
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
}
