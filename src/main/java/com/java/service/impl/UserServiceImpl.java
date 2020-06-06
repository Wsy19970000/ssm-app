package com.java.service.impl;

import com.github.pagehelper.PageHelper;
import com.java.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements com.java.service.UserService {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<Map<String,Object>> findSystemUsers(Integer pageNum, Integer pageSize){
        PageHelper.startPage(pageNum,pageSize);
        return userMapper.selectSystemUsers();
    }
}
