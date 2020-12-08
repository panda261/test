package com.controller;


import com.model.pojo.Product;
import com.service.IProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Resource
    private IProductService iProductService;

    @RequestMapping("/list")
    public ModelAndView findProducts(Product product) {
        List<Product> products = iProductService.findProducts(product);
        ModelAndView mv = new ModelAndView();
        mv.addObject("pros", products);
        mv.addObject("pn", product);
        mv.setViewName("product/product_list");
        return mv;
    }

    @RequestMapping("/toadd")
    public String toadd() {
        return "product/product_add";
    }

    @RequestMapping("/add")
    public String add(Product product) {
        iProductService.addProduct(product);
        return "redirect:/product/list";
    }

    @RequestMapping("/toupdate")
    public String toupdate(Product product, Model model){
        Product upProduct = iProductService.getProductById(product);
        model.addAttribute("upProduct",upProduct);
        return "product/product_update";
    }

    @RequestMapping("/update")
    public String updatePro(Product product,HttpSession session){
        iProductService.updateProduct(product);
        session.setAttribute("msg","修改成功");
        return "redirect:/product/list";
    }

    @RequestMapping("/del")
    public String del(Product product , HttpSession session){
        iProductService.delProduct(product);
        session.setAttribute("msg","删除成功");
        return "redirect:/product/list";
    }
}
