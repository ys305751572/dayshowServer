package com.leoman.service.impl;

import com.leoman.core.Constant;
import com.leoman.dao.LevelDao;
import com.leoman.dao.MeasureConfigDao;
import com.leoman.entity.Level;
import com.leoman.entity.MeasureConfig;
import com.leoman.service.MeasureConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Administrator on 2016/3/15.
 */
@Service
public class MeasureConfigServiceImpl implements MeasureConfigService {


    @Autowired
    private MeasureConfigDao dao;

    @Override
    public List<MeasureConfig> findAll() {
        return dao.findAllLevel1();
    }

    @Override
    public Page<MeasureConfig> find(int pageNum, int pageSize) {
        return dao.findAll(new PageRequest(pageNum - 1, pageSize, Sort.Direction.DESC, "id"));
    }

    @Override
    public Page<MeasureConfig> find(int pageNum) {
        return find(pageNum, Constant.PAGE_DEF_SZIE);
    }

    @Override
    public MeasureConfig getById(Long id) {
        return dao.findOne(id);
    }

    @Override
    public MeasureConfig deleteById(Long id) {
        MeasureConfig measureConfig = dao.findOne(id);
        dao.delete(measureConfig);
        return null;
    }

    @Override
    public MeasureConfig create(MeasureConfig measureConfig) {
        return dao.save(measureConfig);
    }

    @Override
    public MeasureConfig update(MeasureConfig measureConfig) {
        return dao.save(measureConfig);
    }

    @Override
    public void deleteAll(Long[] ids) {

    }

}

