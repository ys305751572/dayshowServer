package com.leoman.dao;

import com.leoman.entity.Share;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by Administrator on 2016/3/22.
 */
public interface ShareDao extends JpaRepository<Share, Long>,JpaSpecificationExecutor<Share> {
}
