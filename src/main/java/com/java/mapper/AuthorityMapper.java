package com.java.mapper;

import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface AuthorityMapper {
    @Select("SELECT * FROM system_authoriy WHERE parentId=#{1}")
    List<Map<String,Object>> selectMenus(String account, Long id);
}
