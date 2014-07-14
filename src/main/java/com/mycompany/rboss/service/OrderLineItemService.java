/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

import java.util.List;
import org.springframework.transaction.annotation.Transactional;
import com.mycompany.rboss.DAO.OrderLineItemDAO;
import com.mycompany.rboss.domain.OrderLineItem;

/**
 *
 * @author ib
 */
@Transactional
public class OrderLineItemService {
    
    private OrderLineItemDAO orderlineDAO;

    public OrderLineItemService() {
    }

    public OrderLineItemDAO getOrderlineDAO() {
        return orderlineDAO;
    }

    public void setOrderlineDAO(OrderLineItemDAO orderlineDAO) {
        this.orderlineDAO = orderlineDAO;
    }
    
       public List<OrderLineItem> getAll() {
        return orderlineDAO.getAll();        
    }
    
    public void add(OrderLineItem olt) {
        orderlineDAO.add(olt);        
    }

    public OrderLineItem get(int id) {
        return orderlineDAO.get(id);        
    }
   public void update(OrderLineItem o) {
        orderlineDAO.update(o);      
    }

    public void delete(int id) {
        orderlineDAO.delete(id);        
    } 
    
    
}
