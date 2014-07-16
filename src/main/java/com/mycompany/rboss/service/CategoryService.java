/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.mycompany.rboss.service;

import com.mycompany.rboss.DAO.CategoryDAO;
import com.mycompany.rboss.domain.Category;
import com.mycompany.rboss.domain.Product;
import java.util.List;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ib
 */
@Transactional
public class CategoryService {
    
    private CategoryDAO categoryDAO;

    public CategoryService() {
    }

    public void setCategoryDAO(CategoryDAO categoryDAO) {
        this.categoryDAO = categoryDAO;
    }
    
    public List<Category> getAll(){
        return categoryDAO.getAll();
    }
    
    public void delete(int id){
        Category category= categoryDAO.get(id);
        category.setStatus("DELETED");
        categoryDAO.update(category);
        categoryDAO.delete(id);
    }
    
    public void update(Category category){
        categoryDAO.update(category);
    }
    
    public Category get(int id){
        return categoryDAO.get(id);
    }
    
    public void add(Category category){
        categoryDAO.add(category);
    }
    
}
