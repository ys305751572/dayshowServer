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

    @Query(value = "select a from MeasureConfig a where a.level = 1 and a.part = ?1 and a.typeX = ?2 order by a.skinType,a.typeY")
    public List<MeasureConfig> findByPart(int part,int x);

    @Query(value = "select a from MeasureConfig a where a.part = ?1 and a.level = 0")
    public MeasureConfig findNormalRange(Integer part);

    @Query(value = "select a from MeasureConfig a where a.part = ?1 and a.level = 1 and a.typeX = ?2 and a.typeY = ?3 and a.skinType = ?4")
    public MeasureConfig findResult(Integer part,Integer typeX,Integer typeY,Integer skinType);
}
