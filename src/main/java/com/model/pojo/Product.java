package com.model.pojo;

import org.springframework.stereotype.Component;

@Component
public class Product {

    private Integer productId;
    private String productName;
    private String productUnit;
    private Integer productNum;

    public Product() {
    }

    public Product(Integer productId, String productName, String productUnit, Integer productNum) {
        this.productId = productId;
        this.productName = productName;
        this.productUnit = productUnit;
        this.productNum = productNum;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductUnit() {
        return productUnit;
    }

    public void setProductUnit(String productUnit) {
        this.productUnit = productUnit;
    }

    public Integer getProductNum() {
        return productNum;
    }

    public void setProductNum(Integer productNum) {
        this.productNum = productNum;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", productName='" + productName + '\'' +
                ", productUnit='" + productUnit + '\'' +
                ", productNum=" + productNum +
                '}';
    }
}
