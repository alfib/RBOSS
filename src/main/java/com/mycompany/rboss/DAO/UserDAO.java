
package com.mycompany.rboss.DAO;

import java.security.Principal;
import java.util.Collection;
import java.util.List;
import java.util.Random;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.rboss.domain.User;

@Transactional
public class UserDAO {
    
    
    private SessionFactory sf;
   
    public UserDAO() {
    }
    
    private Session openSession() {  
        return sf.getCurrentSession();  
    }  

    public UserDAO(SessionFactory sf) {
        this.sf = sf;
    }
        
    public void setSessionFactory(SessionFactory sf) {
        this.sf = sf;
    }
    
    public List<User> getAll() {
        Query q = openSession().createQuery("from User");
        return q.list();
    }
    
       public void add(User customer) {
        String userName=customer.getUserName();
          openSession().persist(customer);

          

    }

    public User get(int id) {
        return (User) openSession().load(User.class, id);
    }


    public void delete(int customerId) {
        User c = get(customerId);
        openSession().delete(c);
    } 
    
    /////////////////////////////////////ib methods//////////////
    
    public User getStudentByUsername(String username){
        
            Query q = openSession().createQuery("select u from User as u where u.userName = :name");
            q.setParameter("name", username);
           // q.setParameter("role", "ROLE_ADVISOR");
            
            return (User) q.uniqueResult();
        }
    
    public void update(User user){
        openSession().merge(user);
    }
    
     public Collection<User> getAllStudents(int id){
        
            Query q = openSession().createQuery("select u from User u join u.advisor a where a.id = :id");
            q.setParameter("id", id);
            return q.list();
        }
     
     public User read(int id){
        return (User) openSession().load(User.class, id);
    }

     
     
     
     
     // check if a new registering user will be unique, it checks the new user userName and email don't already 
     //exist in databse
     public List<User> uniqueChecker(String userName, String email){
         Query q=openSession().createQuery("select u from User u where u.userName=:un OR u.email=:em");
         q.setParameter("un", userName);
         q.setParameter("em", email);
         List<User> users=q.list();
         return users;
     }
     
     
      // returns the users who are faculty
     public List<User> getFaculties(){ 
         Query q=openSession().createQuery("select u from User u where u.authority=:r");
          q.setParameter("r", "ROLE_FACULTY");
         return q.list();
         
     }
     
      // returns all  customers(that is those who are not a faculty or an admin) 
     public List<User> getCustomers(){  // returns the users who are faculty
         Query q=openSession().createQuery("select u from User u where u.authority=:r AND u.advisor is null");
          q.setParameter("r", "ROLE_CUSTOMER");
         return q.list();
         
     }
     
     public List<User> searchCustomer(String customerName){
         Query q=openSession().createQuery("select u from User u where u.firstName like :customerName");
         q.setParameter("customerName", customerName);
         return q.list();
     }
     
     
}
