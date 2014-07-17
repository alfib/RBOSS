/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.controller;

import com.mycompany.rboss.domain.User;
import com.mycompany.rboss.service.CreditCardService;
import com.mycompany.rboss.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author ib
 */
@Controller
public class VendorController {
  
        @Autowired
    private UserService userService;
        
        @Autowired
    private JavaMailSender mailSender;
    @Autowired
    private PasswordEncoder encoder;
    
    
            @RequestMapping(value = "/addVendor", method = RequestMethod.GET)
    public String addUser(@ModelAttribute("vendor") User vendor) {
        return "addVendor";
    }

    @RequestMapping(value = "/addVendor", method = RequestMethod.POST)
    public String addUser( User vendor, RedirectAttributes re,Model model) {
        String view = "redirect:/login";
        //if (!result.hasErrors()) {
        String encodedUser=encoder.encode(vendor.getUserName());
            vendor.setEnabled(false);
            vendor.setAuthority("ROLE_VENDOR");
            vendor.setActivationLink(encodedUser);
            boolean x=userService.add(vendor);
            if(x==false){
                model.addAttribute("msg", "userName/email already exist, please try again ");
                model.addAttribute("customer",vendor);
                 return "addCustomer";
            }
            
     
            //call web service to create dummy credit card
            SimpleMailMessage email = new SimpleMailMessage();
            String link="http://localhost:8080/mycompany.com/activation/"+encodedUser;
            email.setText(link);
            email.setTo(vendor.getEmail());
            email.setSubject("Click the link to activate account");
            mailSender.send(email);
           
        return view;
    }
    
}
