package com.java.service.impl;

import com.java.mapper.AuthorityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AuthorityServiceImpl implements com.java.service.AuthorityService {
    @Autowired
    private AuthorityMapper authorityMapper;


    @Override
    public List<Map<String, Object>> findMenus(String account, Long id) {
        return authorityMapper.selectMenus(account,id);
    }
}
