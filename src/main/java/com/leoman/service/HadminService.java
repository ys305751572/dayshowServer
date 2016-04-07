package com.leoman.service;

import com.leoman.entity.Admin;
import com.leoman.service.common.ICommonService;
import org.springframework.data.domain.Page;

/**
 * Created by Administrator on 2016/3/15.
 */
public interface HadminService extends ICommonService<Admin> {

    public Page<Admin> findPage(Admin admin, int pagenum, int pagesize);
}
