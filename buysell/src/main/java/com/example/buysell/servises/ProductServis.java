package com.example.buysell.servises;

import com.example.buysell.models.Image;
import com.example.buysell.models.Product;
import com.example.buysell.models.User;
import com.example.buysell.repository.ProductRepository;
import com.example.buysell.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductServis {
    private final ProductRepository productRepository;
    private UserRepository userRepository;
    public List<Product>ListProduct(String title){
        if (title!=null)return productRepository.findBytitle(title);
        return  productRepository.findAll();
    }
    public void saveProduct(Principal principal, Product product, MultipartFile file1, MultipartFile file2, MultipartFile file3) throws IOException {
        product.setUser(getUserByPrincipal(principal));
        Image image1;
        Image image2;
        Image image3;
        if (file1.getSize()!=0){
            image1=toImageEntity(file1);
            product.addImageToProduct(image1);
        } if (file2.getSize()!=0){
            image2=toImageEntity(file2);
            product.addImageToProduct(image2);
        } if (file3.getSize()!=0){
            image3=toImageEntity(file3);
            product.addImageToProduct(image3);
        }
      log.info("Saveng new Product ,title {}, Author {}",product.getTitle(),product.getUser().getEmail());
        Product productFromDB=productRepository.save(product);
        productFromDB.setPreviewImageId(productFromDB.getImages().get(0).getId());
      productRepository.save(product);
    }

    public User getUserByPrincipal(Principal principal) {
        if (principal==null)return new User();
        return userRepository.findByEmail(principal.getName());
    }

    private Image toImageEntity(MultipartFile file) throws IOException {
     Image image=new Image();
     image.setName(file.getName());
     image.setOriginalFaileName(file.getOriginalFilename());
     image.setContentType(file.getContentType());
     image.setSize(file.getSize());
     image.setBytes(file.getBytes());
     return image;
    }

    public void deleteProduct(Long id){
      productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
    return  productRepository.findById(id).orElse(null);
    }
}
