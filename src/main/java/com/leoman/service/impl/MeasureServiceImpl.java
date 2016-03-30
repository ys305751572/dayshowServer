package com.leoman.service.impl;

import com.leoman.dao.MeasureDao;
import com.leoman.entity.Measure;
import com.leoman.service.MeasureService;
import org.apache.commons.lang.StringUtils;
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
 * Created by Administrator on 2016/3/15.
 */
@Service
public class MeasureServiceImpl implements MeasureService {

    @Autowired
    private MeasureDao dao;

    @Override
    public Page<Measure> findPage(final Measure measure, int pagenum, int pagesize) {
        Specification<Measure> spec = new Specification<Measure>() {
            @Override
            public Predicate toPredicate(Root<Measure> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                List<Predicate> list = new ArrayList<Predicate>();
                Predicate result = null;
                if(StringUtils.isNotBlank(measure.getUser().getMobile())) {
                    list.add(criteriaBuilder.like(root.get("user").get("mobile").as(String.class), '%' + measure.getUser().getMobile() + '%'));
                }
                if(StringUtils.isNotBlank(measure.getUser().getNickname())){
                    list.add(criteriaBuilder.like(root.get("user").get("nickname").as(String.class), '%' + measure.getUser().getNickname() + '%'));
                }
                if(measure.getPart() != null) {
                    list.add(criteriaBuilder.equal(root.get("part").as(Integer.class), measure.getPart()));
                }
                return criteriaBuilder.and(list.toArray(new Predicate[list.size()]));
            }
        };
        return dao.findAll(spec,new PageRequest(pagenum - 1,pagesize, Sort.Direction.DESC,"id"));
    }

    @Override
    public List<Measure> findAll() {
        return null;
    }

    @Override
    public Page<Measure> find(int pageNum, int pageSize) {
        return null;
    }

    @Override
    public Page<Measure> find(int pageNum) {
        return null;
    }

    @Override
    public Measure getById(Long id) {
        return dao.findOne(id);
    }

    @Override
    public Measure deleteById(Long id) {
        Measure _measure = dao.findOne(id);
        dao.delete(_measure);
        return null;
    }

    @Override
    public Measure create(Measure measure) {
        return dao.save(measure);
    }

    @Override
    public Measure update(Measure measure) {
        return dao.save(measure);
    }

    @Override
    public void deleteAll(Long[] ids) {

    }
}
