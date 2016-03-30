package com.leoman.dao;

import com.leoman.entity.Measure;
import com.leoman.entity.MeasureConfig;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by Administrator on 2016/3/15.
 */
public interface MeasureConfigDao extends JpaRepository<MeasureConfig, Long>, JpaSpecificationExecutor<MeasureConfig> {

    @Query(value = "select a from MeasureConfig a where a.level = 0")
    public List<MeasureConfig> findAllLevel1();
}
