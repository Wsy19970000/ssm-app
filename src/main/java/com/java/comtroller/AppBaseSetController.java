package com.java.comtroller;

import com.java.service.AppBaseSetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/appBase")
public class AppBaseSetController {
    @Autowired
    private AppBaseSetService appBaseSetService;


    @RequestMapping("/advice")
    public @ResponseBody List<Map<String,Object>> getAdvices(){
        System.out.println("1");
        System.out.println(appBaseSetService.selectAdvices());
        return appBaseSetService.selectAdvices();
    }

    @RequestMapping("/toAbout")
    public String  toAbout(){
        return "/admin/about.jsp";
    }
}
