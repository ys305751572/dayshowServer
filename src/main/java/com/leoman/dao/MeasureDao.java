package com.leoman.dao;

import com.leoman.entity.Measure;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by Administrator on 2016/3/15.
 */
public interface MeasureDao extends JpaRepository<Measure, Long>,JpaSpecificationExecutor<Measure> {
}
