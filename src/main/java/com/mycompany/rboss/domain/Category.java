/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.domain;

import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author ib
 */
@Entity
public class Category {
    @Id
    private int id;
    private String status="ACTIVE";  //ACTIVE- product is not deleted

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    private String category;

    public Category(String category) {
        this.category = category;
    }

    public Category() {
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    
    
    
}
