/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.mycompany.rboss.service.OrderLineItemService;

/**
 *
 * @author ib
 */
@Controller
public class OrderLineItemController {
    
    @Autowired
    private OrderLineItemService orderLineItemService;

    public OrderLineItemController() {
    }

    public OrderLineItemService getOrderLineItemService() {
        return orderLineItemService;
    }

    public void setOrderLineItemService(OrderLineItemService orderLineItemService) {
        this.orderLineItemService = orderLineItemService;
    }
    
    
    
}
