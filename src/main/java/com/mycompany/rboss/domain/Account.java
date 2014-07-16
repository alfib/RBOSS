/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.domain;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Version;

/**
 *
 * @author naimi_000
 */
@Entity
@NamedNativeQueries({
@NamedNativeQuery(name = "Account_findAccountByNo",query = "SELECT a FROM Account a where a.accNo = :aNo"),
@NamedNativeQuery(name = "Account_findAll",query = "SELECT a FROM Account a")
})
public class Account implements Serializable{
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    
    private String accName, accNo, expDate;
    private String pin;
    private long money=5000;
    @Version
    private long versionL;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccName() {
        return accName;
    }

    public void setAccName(String accName) {
        this.accName = accName;
    }

    public String getAccNo() {
        return accNo;
    }

    public void setAccNo(String accNo) {
        this.accNo = accNo;
    }

    public String getExpDate() {
        return expDate;
    }

    public void setExpDate(String expDate) {
        this.expDate = expDate;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public long getMoney() {
        return money;
    }

    public void setMoney(long money) {
        this.money = money;
    }

    public long getVersionL() {
        return versionL;
    }

    public void setVersionL(long versionL) {
        this.versionL = versionL;
    }
    
    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Account)) {
            return false;
        }
        
        if(object == null){
            return false;
        }
        
        Account other = (Account) object;
        if (this.accName.equalsIgnoreCase(other.getAccName())) {
            if (this.accNo.equals(other.getAccNo())) {
                if (this.expDate.equals(other.getExpDate())) {
                    if (this.pin.equals(other.getPin())) {
                        return true;
                    } else {
                        return false;
                    }
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    @Override
    public String toString() {
        return "Account{" + "id=" + id + ", accName=" + getAccName() + ", accNo=" + getAccNo() + ", expDate=" + getExpDate() + ", pin=" + getPin() + ", money=" + money +'}';
    }

}
