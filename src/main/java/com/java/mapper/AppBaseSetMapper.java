package com.java.mapper;

import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface AppBaseSetMapper {
    /**
     * 查询所有意见反馈-分页
     * @return
     */
    @Select("SELECT sa.*,au.`uName` FROM system_advice sa INNER JOIN app_users au\n" +
            "ON sa.appUserId=au.id")
    List<Map<String,Object>> selectAdvices();
}
