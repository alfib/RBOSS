/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

import com.mycompany.rboss.DAO.CreditCardDAO;
import com.mycompany.rboss.domain.CreditCard;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ib
 */
@Transactional
public class CreditCardService {
    
    private CreditCardDAO credidCardDAO;

    public CreditCardService() {
    }

    public void setCredidCardDAO(CreditCardDAO credidCardDAO) {
        this.credidCardDAO = credidCardDAO;
    }
    
    public List<CreditCard> getAll(){
        return credidCardDAO.getAll();
    }
    
    public void delete(int id){
        credidCardDAO.delete(id);
    }
    
    public void update(CreditCard cc){
        credidCardDAO.update(cc);
    }
    
    public CreditCard get(int id){
        return credidCardDAO.get(id);
    }
    
   public void add(CreditCard cc){
       credidCardDAO.create(cc);
    }
}
