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
import com.mycompany.rboss.domain.OrderLineItem;

/**
 *
 * @author ib
 */
@Transactional
public class OrderLineItemDAO {

    private SessionFactory sessionFactory;

    public OrderLineItemDAO() {
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

     public List<OrderLineItem> getAll(){
         Query q = openSession().createQuery("from OrderLineItem");
         return q.list();
     
     }
     
     public void add(OrderLineItem olt){
         openSession().persist(olt);
     }
     
     public OrderLineItem get(int id){
       return  (OrderLineItem) openSession().get(OrderLineItem.class, id);
         
     }
    
     public void update(OrderLineItem olt){
         openSession().merge(olt);
     }
     
     public void delete(int id){
         OrderLineItem olt = get(id);
         openSession().delete(olt);
     }
     
}
