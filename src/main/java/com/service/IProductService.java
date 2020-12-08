package com.service;

import com.model.pojo.Product;

import java.util.List;

public interface IProductService {

    List<Product> findProducts(Product product);
    boolean addProduct(Product product);
    Product getProductById(Product product);
    boolean updateProduct(Product product);
    boolean delProduct(Product product);


}
