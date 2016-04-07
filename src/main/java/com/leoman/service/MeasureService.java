package com.leoman.service;

import com.leoman.entity.Measure;
import com.leoman.service.common.ICommonService;
import org.springframework.data.domain.Page;
import org.springframework.ui.Model;

/**
 * Created by Administrator on 2016/3/15.
 */
public interface MeasureService extends ICommonService<Measure> {

    public Page<Measure> findPage(Measure measure, int pagenum, int pagesize);

    public void measureDetail(Long id, Model model);
}
