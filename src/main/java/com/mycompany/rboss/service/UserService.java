/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

import java.util.Collection;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import com.mycompany.rboss.DAO.UserDAO;
import com.mycompany.rboss.domain.User;
import org.springframework.web.client.RestTemplate;



/**
 *
 * @author bin
 */

@Transactional
public class UserService {
     public static final String SERVER_URI = "http://localhost:31503/SoftEng/restaccount/";
    private UserDAO userDAO; 

    public UserService() {
    }

    public UserService(UserDAO customerDAO) {
        this.userDAO = customerDAO;
    }

    public UserDAO getUserDAO() {
        return userDAO;
    }

    public void setUserDAO(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
       
    
    public List<User> getAll() {
        return userDAO.getAll();        
    }
    
    public boolean add(User user) {
        String userName=user.getUserName();
        String email=user.getEmail();
        List <User> users=userDAO.uniqueChecker(userName,email);
//        for(User u: users){
//            if(u.getUserName().equals(userName))  { 
//                
//            }
//        }
        if(users.isEmpty()){   // list is empty means, the providedd userName or email doesn't exist in DB
            userDAO.add(user);
             return true;
        }
            
        else{
            return false;   //
        }
       
                
    }

    public User get(int id) {
        return userDAO.get(id);        
    }
   public void update(User customer) {
        userDAO.update(customer);      
    }

    public void delete(int customerId) {
        userDAO.delete(customerId);        
    } 
    
     public User getByUsername(String username){
        return userDAO.getStudentByUsername(username);
    }
     public void updateUser(User user) {

        userDAO.update(user);
        
    }

     public User read(int id){
         return userDAO.read(id);
     }
    
      
     public List<User> searchCustomer(String customerName){
         return userDAO.searchCustomer(customerName);
         
     }
          public boolean activate(String encoded){
         return userDAO.activate(encoded);
     }
    
          
}
