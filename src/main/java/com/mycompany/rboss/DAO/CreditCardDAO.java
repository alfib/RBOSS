/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.DAO;

import com.mycompany.rboss.domain.CreditCard;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ib
 */
@Transactional
public class CreditCardDAO {
    
     private SessionFactory sessionFactory;

    public CreditCardDAO() {
    }

     
     
    public CreditCardDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    
         
     private Session openSession() {  
        return sessionFactory.getCurrentSession();  
    } 

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
     
     public List<CreditCard> getAll(){
          Query q = openSession().createQuery("from CreditCard");
          return q.list();
     }
     
     public void create(CreditCard card){
         openSession().persist(card);
     }
     
     public CreditCard get(int id){
         return (CreditCard) openSession().get(CreditCard.class, id);
     }
     
     public void update(CreditCard card){
         openSession().merge(card);
     }
     
     public void delete(int id){
         CreditCard card = get(id);
         openSession().delete(card);
     }
    
}
