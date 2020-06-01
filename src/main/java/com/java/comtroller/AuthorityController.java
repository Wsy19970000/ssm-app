package com.java.comtroller;

import com.java.service.AuthorityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/system")
public class AuthorityController {
    @Autowired
    private AuthorityService authorityService;

    @RequestMapping("getMenu")
    public @ResponseBody List<Map<String,Object>> findMenus(@RequestParam(defaultValue = "") String account,
                                                            @RequestParam(defaultValue = "0") Long id){
        return authorityService.findMenus(account,id);
    }
}
