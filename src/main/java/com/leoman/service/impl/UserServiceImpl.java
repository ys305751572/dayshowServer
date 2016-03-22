package com.leoman.service.impl;

import com.leoman.dao.UserDao;
import com.leoman.entity.User;
import com.leoman.service.UserService;
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
 * Created by Administrator on 2016/3/8.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao dao;


    @Override
    public Page<User> findPage(final User user, int pagenum, int pagesize) {
        Specification<User> spec = new Specification<User>() {
            @Override
            public Predicate toPredicate(Root<User> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                List<Predicate> list = new ArrayList<Predicate>();
                Predicate result = null;
                if(StringUtils.isNotBlank(user.getMobile())) {
                    list.add(criteriaBuilder.like(root.get("mobile").as(String.class), '%' + user.getMobile() + '%'));
                }
                if(StringUtils.isNotBlank(user.getNickname())){
                    list.add(criteriaBuilder.like(root.get("nickname").as(String.class), '%' + user.getNickname() + '%'));
                }
                if(StringUtils.isNotBlank(user.getWeibo())){
                    list.add(criteriaBuilder.equal(root.get("weibo").as(String.class), user.getWeibo()));
                }
                if(StringUtils.isNotBlank(user.getWeixin())){
                    list.add(criteriaBuilder.equal(root.get("weixin").as(String.class), user.getWeixin()));
                }
                if(user.getGender()!=null){
                    list.add(criteriaBuilder.equal(root.get("gender").as(Integer.class), user.getGender()));
                }

            return criteriaBuilder.and(list.toArray(new Predicate[list.size()]));
            }
        };
        return dao.findAll(spec,new PageRequest(pagenum - 1,pagesize, Sort.Direction.DESC,"id"));
    }

    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public Page<User> find(int pageNum, int pageSize) {
        return null;
    }

    @Override
    public Page<User> find(int pageNum) {
        return null;
    }

    @Override
    public User getById(Long id) {
        return dao.findOne(id);
    }

    @Override
    public User deleteById(Long id) {

        User _user = dao.findOne(id);
        dao.delete(_user);
        return null;
    }

    @Override
    public User create(User user) {
        return dao.save(user);
    }

    @Override
    public User update(User user) {
        return dao.save(user);
    }

    @Override
    public void deleteAll(Long[] ids) {

    }

}
