package com.leoman.service;

import com.leoman.entity.User;
import com.leoman.service.common.ICommonService;
import org.springframework.data.domain.Page;

/**
 * Created by wangbin on 2015/9/1.
 */
public interface UserService extends ICommonService<User> {

    public Page<User> findPage(User user, int pagenum, int pagesize);

}
