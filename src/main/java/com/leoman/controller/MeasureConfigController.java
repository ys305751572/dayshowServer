package com.leoman.controller;

import com.leoman.common.exception.GeneralExceptionHandler;
import com.leoman.common.factory.DataTableFactory;
import com.leoman.controller.common.CommonController;
import com.leoman.core.bean.Result;
import com.leoman.entity.MeasureConfig;
import com.leoman.service.MeasureConfigService;
import com.leoman.utils.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/3/25.
 */
@Controller
@RequestMapping(value = "admin/measureConfig")
public class MeasureConfigController extends CommonController {
    @Autowired
    private MeasureConfigService service;

    /**
     * 列表页面
     *
     * @return
     */
    @RequestMapping(value = "/index")
    public String index() {
        return "measureConfig/list";
    }

    /**
     * 查询列表
     * @param request
     * @param response
     * @param draw
     * @param start
     * @param length
     * @param measureConfig
     * @param model
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public void list(HttpServletRequest request,
                     HttpServletResponse response,
                     Integer draw,
                     Integer start,
                     Integer length,
                     MeasureConfig measureConfig,
                     Model model) {
        try {
            int pageNum = getPageNum(start, length);
            List<MeasureConfig> list = service.findAll();
            Map<String, Object> result = DataTableFactory.fittingList(draw, 10 ,list);
            WebUtil.print(response, result);
        } catch (Exception e) {
            GeneralExceptionHandler.log(e);
            WebUtil.print(response, emptyData);
        }
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(Long id, Model model) {

        if (id != null) {
            try {
                MeasureConfig measureConfig = service.getById(id);
                model.addAttribute("measureConfig", measureConfig);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "measureConfig/add";
    }


    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public void save(HttpServletResponse response,MeasureConfig measureConfig) {
        try{
            MeasureConfig _measureConfig = null;
            if(measureConfig.getId()!=null){
                _measureConfig=service.getById(measureConfig.getId());
                _measureConfig.setPart(measureConfig.getPart());
                _measureConfig.setMoistureUp(measureConfig.getMoistureUp());
                _measureConfig.setMoistureDown(measureConfig.getMoistureDown());
                _measureConfig.setGreaseDown(measureConfig.getGreaseDown());
                _measureConfig.setGreaseUp(measureConfig.getGreaseUp());
                service.update(_measureConfig);
            }
            else {
                service.create(measureConfig);
            }
            WebUtil.print(response, new Result(true).msg("操作成功!"));
        } catch (Exception e) {
            e.printStackTrace();
            WebUtil.print(response, new Result(false).msg("操作失败!"));
        }
    }
}
