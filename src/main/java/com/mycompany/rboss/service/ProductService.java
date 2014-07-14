/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import com.mycompany.rboss.DAO.ProductDAO;
import com.mycompany.rboss.domain.Product;

/**
 *
 * @author ib
 */
@Transactional
public class ProductService {
    
    private ProductDAO productDAO;

    public ProductService() {
    }

    public ProductDAO getProductDAO() {
        return productDAO;
    }

    public void setProductDAO(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }
    
        public List<Product> getAll() {
        return productDAO.getAll();        
    }
    
    public void add(Product product) {
        productDAO.add(product);        
    }

    public Product get(int id) {
        return productDAO.get(id);        
    }
   public void update(Product product) {
        productDAO.update(product);      
    }

    public void delete(int id) {
       // productDAO.delete(id);        
       Product product= productDAO.get(id);
       product.setStatus("DELETED");
       productDAO.update(product);
    } 
    
     public List<Product> getProductByName(String name){
        return productDAO.getProductByName(name);
     }
}
