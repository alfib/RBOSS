/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.domain;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.SecondaryTables;
import javax.validation.Valid;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author bin
 */
@Entity
@SecondaryTables(
        @SecondaryTable(name = "userrole", pkJoinColumns = {
            @PrimaryKeyJoinColumn(name = "user_id", referencedColumnName = "id")
        })
)
public class User {
    
    @Id @GeneratedValue
    private int id;
    @NotEmpty
    private String firstName;
    @NotEmpty
    private String lastName;
    @Email
    private String email;
    @NotEmpty
    private String userName;
    @NotEmpty
    private String password;
  
    private boolean enabled=true;   
    
     private String activationLink;
     
//     private String parentCompany;

    public User() {
    }

     @Column(table = "userrole")
    private String authority;

    @OneToMany(cascade = CascadeType.ALL)
    private List<MyOrder> orders;
    @OneToOne(cascade = CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private ShoppingCart cart=new ShoppingCart();
    @OneToMany(cascade = CascadeType.ALL)
    private List<Address> addresses = new ArrayList<>();
    @OneToMany(cascade = CascadeType.ALL)
    private List<CreditCard> creditcards = new ArrayList<>();
    @OneToMany(cascade = CascadeType.ALL)
    private List<Product> vendorProducts = new ArrayList<>();
    
    @OneToMany
    private List<Account> account=new ArrayList<>();

    public User(String firstName, String lastName, String email, String username, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.userName = username;
        this.password = password;        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    public String getAuthority() {
        return authority;
    }

    public void setAuthority(String authority) {
        this.authority = authority;
    }


    public List<MyOrder> getOrders() {
        return orders;
    }

    public void setOrders(List<MyOrder> orders) {
        this.orders = orders;
    }

    public ShoppingCart getCart() {
        return cart;
    }

    public void setCart(ShoppingCart cart) {
        this.cart = cart;
    }

    public List<Address> getAddresses() {
        return addresses;
    }

    public void setAddresses(List<Address> addresses) {
        this.addresses = addresses;
    }

    public List<CreditCard> getCreditcards() {
        return creditcards;
    }

    public void setCreditcards(List<CreditCard> creditcards) {
        this.creditcards = creditcards;
    }

    public String getActivationLink() {
        return activationLink;
    }

    public void setActivationLink(String activationLink) {
        this.activationLink = activationLink;
    }

    public List<Product> getVendorProducts() {
        return vendorProducts;
    }

    public void setVendorProducts(List<Product> vendorProducts) {
        this.vendorProducts = vendorProducts;
    }

    public User(String firstName, String lastName, String email, String userName, String password, String parentCompany) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.userName = userName;
        this.password = password;
       // this.parentCompany = parentCompany;
    }

//    public String getParentCompany() {
//        return parentCompany;
//    }
//
//    public void setParentCompany(String parentCompany) {
//        this.parentCompany = parentCompany;
//    }

    public List<Account> getAccount() {
        return account;
    }

    public void setAccount(List<Account> account) {
        this.account = account;
    }

    
    
    
    
       
    
}
