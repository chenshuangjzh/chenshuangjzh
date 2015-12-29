package com.chenshuangjzh.controller;

import com.chenshuangjzh.controller.base.BaseController;
import com.chenshuangjzh.service.TimesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.inject.Inject;

/**
 * Created by ninemax-jzh on 2015/12/29.
 */
@Controller
@RequestMapping("/times/")
public class TimesController extends BaseController {

    @Inject
    private TimesService timesService;

    @RequestMapping(value = "running",method = RequestMethod.GET)
    public String running(Model model){
        model.addAttribute("time",timesService.calculateTime());
        return "times/home";
    }
}
