package com.leoman.service;

import com.leoman.entity.MeasureConfig;
import com.leoman.service.common.ICommonService;
import org.springframework.ui.Model;

/**
 * Created by Administrator on 2016/3/15.
 */
public interface MeasureConfigService extends ICommonService<MeasureConfig> {

    public Model findByPart(int part, Model model);

    public MeasureConfig findNormalRange(Integer part);

    public MeasureConfig findResult(Integer part,Integer typeX,Integer typeY,Integer skinType);
}
