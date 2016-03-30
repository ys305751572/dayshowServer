package com.leoman.service.impl;

import com.leoman.dao.ShareDao;
import com.leoman.dao.UserDao;
import com.leoman.entity.Share;
import com.leoman.entity.User;
import com.leoman.service.ShareService;
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
 * Created by Administrator on 2016/3/22.
 */
@Service
public class ShareServiceImpl implements ShareService {

    @Autowired
    private ShareDao dao;


    @Override
    public Page<Share> findPage(final Share share, int pagenum, int pagesize) {
        Specification<Share> spec = new Specification<Share>() {
            @Override
            public Predicate toPredicate(Root<Share> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                List<Predicate> list = new ArrayList<Predicate>();
                Predicate result = null;
                if(StringUtils.isNotBlank(share.getName())) {
                    list.add(criteriaBuilder.like(root.get("name").as(String.class), '%' + share.getName() + '%'));
                }
                return criteriaBuilder.and(list.toArray(new Predicate[list.size()]));
            }
        };
        return dao.findAll(spec,new PageRequest(pagenum - 1,pagesize, Sort.Direction.DESC,"id"));
    }

    @Override
    public List<Share> findAll() {
        return null;
    }

    @Override
    public Page<Share> find(int pageNum, int pageSize) {
        return null;
    }

    @Override
    public Page<Share> find(int pageNum) {
        return null;
    }

    @Override
    public Share getById(Long id) {
        return dao.findOne(id);
    }

    @Override
    public Share deleteById(Long id) {

        Share share = dao.findOne(id);
        dao.delete(share);
        return null;
    }

    @Override
    public Share create(Share share) {
        return dao.save(share);
    }

    @Override
    public Share update(Share share) {
        return dao.save(share);
    }

    @Override
    public void deleteAll(Long[] ids) {

    }
}
