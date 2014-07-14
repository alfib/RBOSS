/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.domain;

import javax.persistence.Embeddable;
import org.hibernate.validator.constraints.CreditCardNumber;

/**
 *
 * @author ib
 */
@Embeddable
public class CreditCard {
    
    private String issuer;
    //@CreditCardNumber
    private String creditCardNumber;
    private String expirationDate;

    public CreditCard() {
    }

    public CreditCard(String issuer, String creditCardNumber, String expirationDate) {
        this.issuer = issuer;
        this.creditCardNumber = creditCardNumber;
        this.expirationDate = expirationDate;
    }

    public String getIssuer() {
        return issuer;
    }

    public void setIssuer(String issuer) {
        this.issuer = issuer;
    }

    public String getCreditCardNumber() {
        return creditCardNumber;
    }

    public void setCreditCardNumber(String creditCardNumber) {
        this.creditCardNumber = creditCardNumber;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate) {
        this.expirationDate = expirationDate;
    }
    
    
    
    
    
}
