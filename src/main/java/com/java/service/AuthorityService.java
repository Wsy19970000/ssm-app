package com.java.service;

import java.util.List;
import java.util.Map;

public interface AuthorityService {
    List<Map<String,Object>> findMenus(String account, Long id);
}
