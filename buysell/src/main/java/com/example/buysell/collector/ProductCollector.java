package com.example.buysell.collector;

import com.example.buysell.models.Product;
import com.example.buysell.servises.ProductServis;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class ProductCollector {
    private final ProductServis productServis;


    @GetMapping("/")
    public String product(@RequestParam(name = "title",required = false)String title,Principal principal, Model model){
        model.addAttribute("product",productServis.ListProduct(title));
        model.addAttribute("user",productServis.getUserByPrincipal(principal));
        return "products";
    }
    @GetMapping("/product/{id}")
    public  String productInfo(@PathVariable Long id,Model model){
  model.addAttribute("product",productServis.getProductById(id));
        return "product-info";
    }
    @PostMapping("/product/create")
    public String createProduct(@RequestParam("file") MultipartFile file1, @RequestParam("file") MultipartFile file2
                                , @RequestParam("file") MultipartFile file3, Product product, Principal principal) throws IOException {
  productServis.saveProduct(principal,product,file1,file2,file3);
     return "redirect:/";
    }
    @PostMapping("/product/delete/{id}")
    public String deleteProduct(@PathVariable long id){
     productServis.deleteProduct(id);
        return "redirect:/";
    }

}
