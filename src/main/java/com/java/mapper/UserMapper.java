package com.java.mapper;

import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface UserMapper {

    @Select("SELECT * FROM system_users")
    List<Map<String,Object>> selectSystemUsers();
}
