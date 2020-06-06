package com.java.comtroller;

import com.github.pagehelper.PageInfo;
import com.java.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import sun.rmi.server.InactiveGroupException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/getUserInfo")
    public @ResponseBody Map<String,Object> findSystemUsers(@RequestParam(defaultValue = "1") Integer page,
                                                        @RequestParam(defaultValue = "1") Integer rows){
        List<Map<String, Object>> roleList = userService.findSystemUsers(page,rows);
        PageInfo<Map<String, Object>> pageInfo = new PageInfo<>(roleList);
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("rows",pageInfo.getList());
        resultMap.put("total",pageInfo.getTotal());
        System.out.println("123");
        //resultMap.forEach((k,v)-> System.out.println(k+v));
        return resultMap;
    }
}
