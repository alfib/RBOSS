/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

/**
 *
 * @author ib
 */
@Service("emailService")
public class EmailService {
    
    @Autowired
    private JavaMailSender mailSender;

    public void setMailSender(JavaMailSender mailSender) {
        this.mailSender = mailSender;
    }
    
        public void sendemail(){
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo("ibra3760@gmail.com");
        email.setSubject("Order issues");
        email.setText("Check it out");
        mailSender.send(email);
    }
    
    
}
