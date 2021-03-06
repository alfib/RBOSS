/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.rboss.DAO;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;
import com.mycompany.rboss.domain.Product;

/**
 *
 * @author ib
 */
@Transactional
public class ProductDAO {

    private SessionFactory sessionFactory;

    public ProductDAO() {
    }

    private Session openSession() {
        return sessionFactory.getCurrentSession();
    }

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public List<Product> getAll() {
        Query q = openSession().createQuery("Select p from Product p where p.status=:status");
        q.setParameter("status", "ACTIVE");
        return q.list();

    }

    public void add(Product product) {
        openSession().persist(product);
    }

    public Product get(int id) {
        return (Product) openSession().get(Product.class, id);

    }

    public void update(Product p) {
        openSession().merge(p);
    }

    public void delete(int id) {
        Product p = get(id);
        openSession().delete(p);
    }

    public List<Product> getProductByName(String name) {
        Query q = openSession().createQuery("select p from Product p where p.name like :name");
        q.setParameter("name", name);
        return q.list();
    }

    public List<Product> getByCat(int id) {

        Query q = openSession().createQuery("select p from Product p where p.category.id = :id AND p.status=:status");
        q.setParameter("status", "ACTIVE");
        q.setParameter("id", id);
        return q.list();
    }

    public List<Product> getAllNew() {
        Query q = openSession().createQuery("Select p from Product p where p.status=:status ORDER BY id DESC");
        q.setParameter("status", "ACTIVE");
        q.setMaxResults(5);
        return q.list();

    }

    public List<Product> getAllFeatured() {
        Query q = openSession().createQuery("Select p from Product p where p.featured=:featured AND p.status=:status");
        q.setParameter("featured", 1);
        q.setParameter("status", "ACTIVE");
        return q.list();

    }

}
