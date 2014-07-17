/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.DAO;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;
import com.mycompany.rboss.domain.MyOrder;

/**
 *
 * @author ib
 */
@Transactional
public class OrderDAO {
    
     private SessionFactory sessionFactory;

    public OrderDAO() {
    }
     
     private Session openSession() {  
        return sessionFactory.getCurrentSession();  
    }  

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

     public List<MyOrder> getAll(){
         Query q = openSession().createQuery("from MyOrder");
         return q.list();
     
     }
     
     public void add(MyOrder order){
         openSession().persist(order);
     }
     
     public MyOrder get(int id){
       return  (MyOrder) openSession().get(MyOrder.class, id);
         
     }
    
     public void update(MyOrder o){
         openSession().merge(o);
     }
     
     public void delete(int id){
         MyOrder o = get(id);
         openSession().delete(o);
     }
     
    
}
