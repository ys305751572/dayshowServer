package com.leoman.service.impl;

import com.leoman.core.Constant;
import com.leoman.dao.HelpDao;
import com.leoman.entity.Help;
import com.leoman.service.HelpService;
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
public class HelpServiceImpl implements HelpService {

    @Autowired
    private HelpDao dao;

    @Override
    public List<Help> findAll() {
        return dao.findAll();
    }

    @Override
    public Page<Help> find(int pageNum, int pageSize) {
        return dao.findAll(new PageRequest(pageNum - 1, pageSize, Sort.Direction.DESC, "id"));
    }

    @Override
    public Page<Help> find(int pageNum) {
        return find(pageNum, Constant.PAGE_DEF_SZIE);
    }

    @Override
    public Help getById(Long id) {
        return dao.findOne(id);
    }

    @Override
    public Help deleteById(Long id) {
        Help help = dao.findOne(id);
        dao.delete(help);
        return null;
    }

    @Override
    public Help create(Help help) {
        return dao.save(help);
    }

    @Override
    public Help update(Help help) {
        return dao.save(help);
    }

    @Override
    public void deleteAll(Long[] ids) {
    }
}
