package com.dao;

import com.model.pojo.Product;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductMapper {

    List<Product> findProducts(Product product);
    boolean addProduct(Product product);
    Product getProductById(Product product);
    boolean updateProduct(Product product);
    boolean delProduct(Product product);

}
