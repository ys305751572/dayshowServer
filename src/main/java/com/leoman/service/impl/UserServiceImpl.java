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
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/3/8.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao dao;

    @Override
    public Page<User> findPage(final User user, final Integer sortId, int pagenum, int pagesize) {
        boolean isDesc = false;
        String property = "id";

        Specification<User> spec = new Specification<User>() {
            @Override
            public Predicate toPredicate(Root<User> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                List<Predicate> list = new ArrayList<Predicate>();
                Predicate result = null;
                if (StringUtils.isNotBlank(user.getMobile())) {
                    list.add(criteriaBuilder.like(root.get("mobile").as(String.class), '%' + user.getMobile() + '%'));
                }
                if (StringUtils.isNotBlank(user.getNickname())) {
                    list.add(criteriaBuilder.like(root.get("nickname").as(String.class), '%' + user.getNickname() + '%'));
                }
                if (StringUtils.isNotBlank(user.getWeibo())) {
                    list.add(criteriaBuilder.equal(root.get("weibo").as(String.class), user.getWeibo()));
                }
                if (StringUtils.isNotBlank(user.getWeixin())) {
                    list.add(criteriaBuilder.equal(root.get("weixin").as(String.class), user.getWeixin()));
                }
                if (user.getGender() != null) {
                    list.add(criteriaBuilder.equal(root.get("gender").as(Integer.class), user.getGender()));
                }
                return criteriaBuilder.and(list.toArray(new Predicate[list.size()]));
            }
        };
        if(sortId != null) {
            if(sortId == 1) {
                // 最早注册
                property = "createDate";
            }
            else if(sortId == 2) {
                // 年龄最大
                property = "year";
            }
            else if(sortId == 3) {
                // 身高最高
                isDesc = true;
                property = "height";
            }
        }
        return dao.findAll(spec, new PageRequest(pagenum - 1, pagesize, isDesc ? Sort.Direction.DESC : Sort.Direction.ASC, property));
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
    @Transactional
    public void deleteAll(Long[] ids) {
        for (Long id : ids) {
            deleteById(id);
        }
    }

    @Override
    public List<Map<String, Object>> pageToExcel(Map<String, Object> map) {
        List<Map<String, Object>> dataList = new ArrayList<Map<String, Object>>();
        List<User> userList = null;
        Map<String, Object> tempMap = null;
        userList = dao.findAll();
        for (User user : userList) {
            tempMap = new HashMap<String, Object>();
            tempMap.put("mobile", user.getMobile());
            tempMap.put("nickname", user.getNickname());
            tempMap.put("weibo", user.getWeibo());
            tempMap.put("weixin", user.getWeixin());
            tempMap.put("createDate", user.getCreateDate());
            tempMap.put("gender", user.getGender() == 1 ? "男" : "女");
            tempMap.put("height", user.getHeight());
            tempMap.put("weight", user.getWeight());
            tempMap.put("year", user.getYear());
            tempMap.put("skin", user.getSkin());

            dataList.add(tempMap);
        }
        return dataList;
    }
}
