package com.chenshuangjzh.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by ninemax-jzh on 2015/12/18.
 */
@Controller
public class TestController {

    @RequestMapping(value="/",method = RequestMethod.GET)
    public String test(){
        return "index";
    }
}
