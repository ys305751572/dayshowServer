package com.leoman.dao;

import com.leoman.entity.Level;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

/**
 * Created by Administrator on 2016/3/21.
 */
public interface LevelDao extends JpaRepository<Level, Long> {

    @Query("select a from Level a where a.level = ?1")
    public Level findByLevel(Integer level);
}
