package org.mall.controller;
import org.mall.bean.user;
import org.mall.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class userController {
    @Autowired
    private userService userService;

    //check login information
    @RequestMapping(value="/check")
    String login(user u, Model model, HttpSession session, HttpServletRequest request){
        String username=u.getUserName();
        String userpwd=u.getUserPwd();
        user user = userService.checkUser(username,userpwd);
        if(user == null){
            return "login";
        }else {
            session.setAttribute("USER_SESSION",user);
            return "forward:/goods/list";
        }
    }

    //put regist information
    @RequestMapping(value = "/putRegist")
    String putRegist(HttpServletRequest request,Model model){
        String username = request.getParameter("userName");
        String userpwd  = request.getParameter("userPwd");
        boolean sign=userService.regisr(username,userpwd);
        if (sign) {
            model.addAttribute("username", username);
            return "login";
        }else {
            return "regist";
        }
    }

    //show cart
    @RequestMapping(value = "/{userId}/cart",
            method = RequestMethod.GET)
    String cart(@PathVariable("userId") long userId, Model model){
        user user = userService.showGoodsByUserId(userId);
        model.addAttribute("user",user);
        return "cart";
    }

    //open login page
    @RequestMapping(value = "/login")
    String login(){
        return "login";
    }

    //open regist page
    @RequestMapping(value = "/regist")
    String regist(){
        return "regist";
    }
}
