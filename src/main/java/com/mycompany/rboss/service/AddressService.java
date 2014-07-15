/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

import com.mycompany.rboss.DAO.AddressDAO;
import com.mycompany.rboss.domain.Address;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ib
 */

@Transactional
public class AddressService {
    
    private AddressDAO addressDAO;

    public AddressService() {
    }

    public void setAddressDAO(AddressDAO addressDAO) {
        this.addressDAO = addressDAO;
    }


    
    public List<Address> getAll(){
        return addressDAO.getAll();
    }
    
    public void delete(int id){
        addressDAO.delete(id);
    }
    
    public Address get(int id){
        return addressDAO.get(id);
    }
    
    public void update(Address addr){
        addressDAO.update(addr);
    }
    
    public void add(Address addr){
        addressDAO.create(addr);
    }
    
}
