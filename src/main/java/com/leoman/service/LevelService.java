package com.leoman.service;

import com.leoman.entity.Level;
import com.leoman.service.common.ICommonService;

/**
 * Created by Administrator on 2016/3/21.
 */
public interface LevelService extends ICommonService<Level> {

    // 根据等级查找对应的详情信息
    public Level findByLevel(Integer level);
}
