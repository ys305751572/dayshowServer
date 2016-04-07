package com.leoman.dao;

import com.leoman.entity.Record;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

/**
 * Created by Administrator on 2016/3/16.
 */
public interface RecordDao extends JpaRepository<Record, Long>,JpaSpecificationExecutor<Record> {
}
