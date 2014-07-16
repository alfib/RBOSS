/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

/**
 *
 * @author naimi_000
 */
import com.mycompany.rboss.DAO.AccountDAO;
import com.mycompany.rboss.DAO.AddressDAO;
import com.mycompany.rboss.domain.Account;
import com.mycompany.rboss.domain.Address;
import java.util.List;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ib
 */

@Transactional
public class AccountService {
    @Autowired
    private AccountDAO accountDAO;

    public AccountService() {
    }

    public void setAddressDAO(AccountDAO accountDAO) {
        this.accountDAO = accountDAO;
    }

    public AccountDAO getAccountDAO() {
        return accountDAO;
    }

    public void setAccountDAO(AccountDAO accountDAO) {
        this.accountDAO = accountDAO;
    }


    
    public List<Account> getAll(){
        return accountDAO.getAll();
    }
    
    public void delete(int id){
        accountDAO.delete(id);
    }
    
    public Account get(int id){
        return accountDAO.get(id);
    }
    
    public void update(Account addr){
        accountDAO.update(addr);
    }
    
    public void addAmount(long money,String uname){
        accountDAO.addAmount(money, uname);
    }
    
    public void deductAmount(long money,String uname){
        accountDAO.deductAmount(money, uname);
    }
    
    public List<Account> getUserByName(String uname){
        return accountDAO.getUserByName(uname);
    }
    
    public void add(Account addr){
        accountDAO.create(addr);
    }
    
}
