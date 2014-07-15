/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.DAO;

import com.mycompany.rboss.domain.Address;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;


@Transactional
public class AddressDAO {
    
     private SessionFactory sessionFactory;

    public AddressDAO() {
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

    public AddressDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public List<Address> getAll(){
        Query q = openSession().createQuery("from Address");
          return q.list();
    }
    
    public Address get(int id){
        return (Address) openSession().get(Address.class, id);
    }
    
    public void create(Address address){
        openSession().persist(address);
    }
    
    public void update(Address address){
        openSession().merge(address);
    }
        
    public void delete(int id){
        Address addr = get(id);
        openSession().delete(addr);
    }
    
    
    
    
}
