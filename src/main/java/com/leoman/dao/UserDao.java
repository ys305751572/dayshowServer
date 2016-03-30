package com.leoman.dao;

import com.leoman.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

/**
 * Created by wangbin on 2015/9/1.
 */
public interface UserDao  extends JpaRepository<User, Long>,JpaSpecificationExecutor<User> {


}
