/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rboss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.mycompany.rboss.service.OrderService;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.criteria.Order;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import org.apache.commons.io.IOUtils;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import report.NewClass;

/**
 *
 * @author ib
 */
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;
    @Autowired
    ServletContext servletContext;

    public OrderController() {
    }

    public OrderService getOrderService() {
        return orderService;
    }

    public void setOrderService(OrderService orderService) {
        this.orderService = orderService;
    }

    @RequestMapping(value = "/files/{id}", method = RequestMethod.GET)
    public void getFile(
            @PathVariable("id") int fileName,
            HttpServletResponse response) {
        try {
            NewClass nc=new NewClass();
            String path=servletContext.getRealPath("/WEB-INF/");
            System.out.println("in---->>>"+path);
            int i=path.indexOf("RBOSS");
            String npath=path.substring(0, i);
            String outp=npath+"RBOSS/";
            npath+="RBOSS/src/main/java/report/Order.jasper";
            // get your file as InputStream
            InputStream is=null;
            try {
                is = nc.getStream(fileName,npath,outp);
            } catch (JRException ex) {
                Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (FileNotFoundException ex) {
                Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
            }
            // copy it to response's OutputStream
            IOUtils.copy(is, response.getOutputStream());
            response.flushBuffer();
        } catch (IOException ex) {
            System.out.println("Error writing file to output stream. Filename was '" + fileName + "'");
            throw new RuntimeException("IOError writing file to output stream");
        }

    }
    
    @RequestMapping(value = "/adminNewOrders", method = RequestMethod.GET)
    public String getAllNew(Model model) {

        //model.addAttribute("products", productService.getAll());
        return "admin/new_order_list";
    }

    @RequestMapping(value = "/adminAllOrders", method = RequestMethod.GET)
    public String getAll(Model model) {

        model.addAttribute("orders", orderService.getAll());
        return "admin/order_list_all";
    }
    
    
    
     @RequestMapping(value = "/settings", method = RequestMethod.GET)
    public String getSettings(Model model) {

        //model.addAttribute("products", productService.getAll());
        return "admin/settings";
    }
}
