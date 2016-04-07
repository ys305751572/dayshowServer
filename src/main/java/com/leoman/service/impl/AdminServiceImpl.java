package com.leoman.service.impl;

import com.leoman.dao.AdminDao;
import com.leoman.entity.Admin;
import com.leoman.entity.Measure;
import com.leoman.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2016/3/14.
 */
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminDao dao;

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
    public void deleteAll(Long[] ids) {}


    @Override
    public Admin findByUsername(String username) {
        return dao.findByUsername(username);
    }
}
