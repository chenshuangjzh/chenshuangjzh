package com.chenshuangjzh.controller;

import com.chenshuangjzh.controller.base.BaseController;
import com.chenshuangjzh.pojo.Whisper;
import com.chenshuangjzh.service.WhisperService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;

/**
 * Created by ninemax-jzh on 2015/12/30.
 */
@Controller
@RequestMapping("/whisper/")
public class WhisperController extends BaseController {

    @Inject
    private WhisperService whisperService;

    @RequestMapping(value = "push",method = RequestMethod.GET)
    @ResponseBody
    public Whisper push(@RequestParam("content") String content,@RequestParam("pushMessageType") String pushMessageType){
        Whisper whisper = whisperService.add(content,pushMessageType);
        return whisper;
    }

    @RequestMapping(value = "all",method = RequestMethod.GET)
    public String all(Model model){
        model.addAttribute("whisperList",whisperService.findAll());
        return "whisper/home";
    }
}
