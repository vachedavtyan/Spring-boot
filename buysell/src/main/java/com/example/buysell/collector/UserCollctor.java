package com.example.buysell.collector;

import com.example.buysell.models.User;
import com.example.buysell.servises.UserServis;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class UserCollctor {
private  final UserServis userServis;
@GetMapping("/login")
public String login(){
    return "login";
}
@GetMapping("/registration")
    public String registration(){
    return "registration";
}
@PostMapping("/registration")
    public String createUser(User user, Model model){
    if (!userServis.createUser(user)){
        model.addAttribute("errrorMessage","User in email: "+user.getEmail()+"Already exists");
        return "registration";
    }
    userServis.createUser(user);
    return "redirect:/login";
}
@GetMapping("/hello")
    public String securatyUrl(){
    return "hello";

}
@GetMapping("/user/{user}")
public String userInfo(@PathVariable("user")User user,Model model){
    model.addAttribute("user", user);
    model.addAttribute("products",user.getProductList());
            return "user-info";
}
}
