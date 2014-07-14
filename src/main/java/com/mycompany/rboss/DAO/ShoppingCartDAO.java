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
import com.mycompany.rboss.domain.ShoppingCart;

/**
 *
 * @author ib
 */
@Transactional
public class ShoppingCartDAO {
    
    private SessionFactory sessionFactory;
    
    private Session openSession() {  
        return sessionFactory.getCurrentSession();  
    }  

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

     public List<ShoppingCart> getAll(){
         Query q = openSession().createQuery("from ShoppingCart");
         return q.list();
     
     }
     
     public void add(ShoppingCart s){
         openSession().persist(s);
     }
     
     public ShoppingCart get(int id){
       return  (ShoppingCart) openSession().get(ShoppingCart.class, id);
         
     }
    
     public void update(ShoppingCart s){
         openSession().merge(s);
     }
     
     public void delete(int id){
         ShoppingCart s = get(id);
         openSession().delete(s);
     }
     
     public void emptyCart(int id){
         ShoppingCart s = get(id);
         s.getItems().clear();
         openSession().merge(s);
         
     }
    
}
