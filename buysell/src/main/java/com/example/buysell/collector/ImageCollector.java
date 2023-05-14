package com.example.buysell.collector;


import com.example.buysell.models.Image;
import com.example.buysell.repository.ImageRepository;
import com.sun.mail.iap.ByteArray;
import lombok.RequiredArgsConstructor;
import org.apache.coyote.Response;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayInputStream;

@RestController
@RequiredArgsConstructor
public class ImageCollector {
    private final ImageRepository imageRepository;
    @GetMapping("/image/{id}")
    private ResponseEntity<?>getImageById(@PathVariable Long id){
        Image image=imageRepository.findById(id).orElse(null);
        return ResponseEntity.ok()
                .header("FullName",image.getOriginalFaileName())
                .contentType(MediaType.valueOf(image.getContentType()))
                .contentLength(image.getSize())
                .body(new InputStreamResource(new ByteArrayInputStream(image.getBytes())));
    }
}
