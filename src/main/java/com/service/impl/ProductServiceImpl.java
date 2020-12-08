package com.service.impl;

import com.dao.ProductMapper;
import com.model.pojo.Product;
import com.service.IProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ProductServiceImpl implements IProductService {

    @Resource
    private ProductMapper productMapper;


    @Override
    public List<Product> findProducts(Product product) {
        return productMapper.findProducts(product);
    }

    @Override
    public boolean addProduct(Product product) {
        return productMapper.addProduct(product);
    }

    @Override
    public Product getProductById(Product product) {
        return productMapper.getProductById(product);
    }

    @Override
    public boolean updateProduct(Product product) {
        return productMapper.updateProduct(product);
    }

    @Override
    public boolean delProduct(Product product) {
        return productMapper.delProduct(product);
    }
}
