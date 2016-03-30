package com.leoman.service;

import com.leoman.entity.Share;
import com.leoman.service.common.ICommonService;
import org.springframework.data.domain.Page;

/**
 * Created by Administrator on 2016/3/22.
 */
public interface ShareService extends ICommonService<Share> {

    public Page<Share> findPage(Share share, int pagenum, int pagesize);
}
