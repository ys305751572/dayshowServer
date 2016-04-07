package com.leoman.dao;

import com.leoman.entity.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by Administrator on 2016/3/15.
 */
public interface HadminDao extends JpaRepository<Admin, Long>,JpaSpecificationExecutor<Admin> {
}
