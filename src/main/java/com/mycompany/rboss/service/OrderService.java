/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import com.mycompany.rboss.DAO.OrderDAO;
import com.mycompany.rboss.domain.MyOrder;

/**
 *
 * @author ib
 */
@Transactional
public class OrderService {
    
    private OrderDAO orderDAO;

    public OrderService() {
    }

    public OrderDAO getOrderDAO() {
        return orderDAO;
    }

    public void setOrderDAO(OrderDAO orderDAO) {
        this.orderDAO = orderDAO;
    }
    
       public List<MyOrder> getAll() {
        return orderDAO.getAll();        
    }
    
    public void add(MyOrder order) {
        orderDAO.add(order);        
    }

    public MyOrder get(int id) {
        return orderDAO.get(id);        
    }
   public void update(MyOrder order) {
        orderDAO.update(order);      
    }

    public void delete(int id) {
        orderDAO.delete(id);        
    } 
    
}
