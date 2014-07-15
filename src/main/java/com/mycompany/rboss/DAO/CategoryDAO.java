/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.DAO;

import com.mycompany.rboss.domain.Category;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author ib
 */
@Transactional
public class CategoryDAO {
    
      private SessionFactory sessionFactory;

    public CategoryDAO() {
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
    
    public List<Category> getAll(){
        Query q = openSession().createQuery("from Category");
        return q.list();
    }
    
    public Category get(int id){
        return (Category) openSession().get(Category.class, id);
    }
    
    public void update(Category category){
        openSession().merge(category);
    }
    
    public void delete(int id){
        Category category = get(id);
        openSession().delete(category);
    }
    
    public void add(Category category){
        openSession().persist(category);
    }
    
    
}
