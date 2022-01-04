package com.example.Freshworld;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class MyController {

    @RequestMapping("index")
    public ModelAndView pay() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("login.jsp");
        return mv;
    }

    @RequestMapping("admin")
    public ModelAndView admin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Adminlogin.jsp");
        return mv;
    }

}
