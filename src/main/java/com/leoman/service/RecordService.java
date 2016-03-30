package com.leoman.service;

import com.leoman.entity.Record;
import com.leoman.service.common.ICommonService;
import org.springframework.data.domain.Page;

/**
 * Created by Administrator on 2016/3/16.
 */
public interface RecordService extends ICommonService<Record> {

    public Page<Record> findPage(Record record, int pagenum, int pagesize);

}
