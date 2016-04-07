package com.leoman.service;

import com.leoman.entity.User;
import com.leoman.service.common.ICommonService;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Map;

/**
 * Created by wangbin on 2015/9/1.
 */
public interface UserService extends ICommonService<User> {

    public Page<User> findPage(User user,Integer sortId, int pagenum, int pagesize);

    public List<Map<String, Object>> pageToExcel(Map<String, Object> map);

}
