package com.leoman.service.impl;

import com.leoman.core.Constant;
import com.leoman.dao.LevelDao;
import com.leoman.entity.Level;
import com.leoman.service.LevelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/3/17.
 */
@Service
public class LevelServiceImpl implements LevelService {

    @Autowired
    private LevelDao dao;

    @Override
    public List<Level> findAll() {
        return dao.findAll();
    }

    @Override
    public Page<Level> find(int pageNum, int pageSize) {
        return dao.findAll(new PageRequest(pageNum - 1, pageSize, Sort.Direction.DESC, "id"));
    }

    @Override
    public Page<Level> find(int pageNum) {
        return find(pageNum, Constant.PAGE_DEF_SZIE);
    }

    @Override
    public Level getById(Long id) {
        return dao.findOne(id);
    }

    @Override
    public Level deleteById(Long id) {
        Level level = dao.findOne(id);
        dao.delete(level);
        return null;
    }

    @Override
    public Level create(Level level) {
        return dao.save(level);
    }

    @Override
    public Level update(Level level) {
        return dao.save(level);
    }

    @Override
    public void deleteAll(Long[] ids) {

    }

    @Override
    public Level findByLevel(Integer level) {
        return dao.findByLevel(level);
    }
}
