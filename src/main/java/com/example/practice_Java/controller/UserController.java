package com.example.practice_Java.controller;

import com.example.practice_Java.domain.User;
import com.example.practice_Java.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

//@RestController
//public class UserController {
//    private UserService userService;
//    public UserController(UserService userService) {
//        this.userService = userService;
//    }
//    @GetMapping("")
//    public String getHomePage(){
//        return this.userService.handleHello();
//    }
//
//}
@Controller
public class UserController {
    private UserService userService;
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/admin/user")
    public String getHomePage(Model model){
        String test = this.userService.handleHello();
        model.addAttribute("newUser",new User());
        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create1" ,method = RequestMethod.POST)
        public String createUserPage(Model model){
            System.out.println("run here");
            return "hello";
        }
    }


