/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import com.mycompany.rboss.DAO.ShoppingCartDAO;
import com.mycompany.rboss.domain.ShoppingCart;

/**
 *
 * @author ib
 */
@Transactional
public class ShoppingCartService {
    
    private ShoppingCartDAO shoppingCartDAO;

    public ShoppingCartService() {
    }

    public ShoppingCartDAO getShoppingCartDAO() {
        return shoppingCartDAO;
    }

    public void setShoppingCartDAO(ShoppingCartDAO shoppingCartDAO) {
        this.shoppingCartDAO = shoppingCartDAO;
    }
    
       public List<ShoppingCart> getAll() {
        return shoppingCartDAO.getAll();        
    }
    
    public void add(ShoppingCart spc) {
        shoppingCartDAO.add(spc);        
    }

    public ShoppingCart get(int id) {
        return shoppingCartDAO.get(id);        
    }
   public void update(ShoppingCart spc) {
        shoppingCartDAO.update(spc);      
    }

    public void delete(int id) {
        shoppingCartDAO.delete(id);        
    } 
    
    public void emptyCart(int id){
        shoppingCartDAO.emptyCart(id);
        
    }
}
