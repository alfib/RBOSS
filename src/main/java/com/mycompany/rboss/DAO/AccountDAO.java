/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.DAO;

import com.mycompany.rboss.domain.Account;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author naimi_000
 */
@Transactional
public class AccountDAO {
    
     private SessionFactory sessionFactory;

    public AccountDAO() {
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

    public AccountDAO(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
    
    public List<Account> getAll(){
        Query q = openSession().createQuery("from Account");
          return q.list();
    }
    
    public Account get(int id){
        return (Account) openSession().get(Account.class, id);
    }
    
    public void create(Account account){
        openSession().persist(account);
    }
    
    public void update(Account address){
        openSession().merge(address);
    }
        
     public void addAmount(long money,String uname){
        Query q = openSession().createQuery("UPDATE ACCOUNT SET ACCOUNT.money=ACCOUNT.money+"+money+" where ACCOUNT.accName=:uname");
        q.setParameter("uname", uname);
        q.executeUpdate();
    }
    
    public void deductAmount(long money,String uname){
        Query q = openSession().createQuery("UPDATE ACCOUNT SET ACCOUNT.money=ACCOUNT.money-"+money+" where ACCOUNT.accName=:uname");
        q.setParameter("uname", uname);
        q.executeUpdate();
    }
    
    public List<Account> getUserByName(String uname){
        //Query q = openSession().createQuery("FROM ACCOUNT where ACCOUNT.accName=:uname");
        Query q = openSession().createQuery("FROM ACCOUNT");
        SQLQuery q1= openSession().createSQLQuery("Select * FROM ACCOUNT where ACCOUNT.accName=:uname");
        
       // q1.setParameter("uname", uname);
        return q.list();
    }
    
    public void delete(int id){
        Account addr = get(id);
        openSession().delete(addr);
    }
    
    
    
    
}
