package com.leoman.service.impl;

import com.leoman.dao.HadminDao;
import com.leoman.entity.Admin;
import com.leoman.service.HadminService;
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
public class HadminServiceImpl implements HadminService {

    @Autowired
    private HadminDao dao;

    @Override
    public Page<Admin> findPage(final Admin admin, int pagenum, int pagesize) {
        Specification<Admin> spec = new Specification<Admin>() {
            @Override
            public Predicate toPredicate(Root<Admin> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                List<Predicate> list = new ArrayList<Predicate>();
                Predicate result = null;
                if(StringUtils.isNotBlank(admin.getName())) {
                    list.add(criteriaBuilder.like(root.get("name").as(String.class),'%'+admin.getName()+ '%'));
                }
                if(StringUtils.isNotBlank(admin.getUsername())) {
                    list.add(criteriaBuilder.like(root.get("username").as(String.class),'%'+admin.getUsername()+ '%'));
                }

                return criteriaBuilder.and(list.toArray(new Predicate[list.size()]));
            }
        };
        return dao.findAll(spec,new PageRequest(pagenum - 1,pagesize, Sort.Direction.DESC,"id"));
    }

    @Override
    public List<Admin> findAll() {
        return null;
    }

    @Override
    public Page<Admin> find(int pageNum, int pageSize) {
        return null;
    }

    @Override
    public Page<Admin> find(int pageNum) {
        return null;
    }

    @Override
    public Admin getById(Long id) {
        return dao.findOne(id);
    }

    @Override
    public Admin deleteById(Long id) {
        Admin admin = dao.findOne(id);
        dao.delete(admin);
        return null;
    }

    @Override
    public Admin create(Admin admin) {
        return dao.save(admin);
    }

    @Override
    public Admin update(Admin admin) {
        return dao.save(admin);
    }

    @Override
    public void deleteAll(Long[] ids) {

    }


}
