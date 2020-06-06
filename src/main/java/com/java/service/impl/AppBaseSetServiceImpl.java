package com.java.service.impl;

import com.java.mapper.AppBaseSetMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class AppBaseSetServiceImpl implements com.java.service.AppBaseSetService {
    @Autowired
    private AppBaseSetMapper appBaseSetMapper;

    @Override
    public List<Map<String,Object>> selectAdvices(){
        return appBaseSetMapper.selectAdvices();
    }
}
