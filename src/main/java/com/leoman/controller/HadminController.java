package com.leoman.controller;

import com.leoman.common.exception.GeneralExceptionHandler;
import com.leoman.common.factory.DataTableFactory;
import com.leoman.controller.common.CommonController;
import com.leoman.core.bean.Result;
import com.leoman.entity.Admin;
import com.leoman.entity.Image;
import com.leoman.entity.Measure;
import com.leoman.service.HadminService;
import com.leoman.utils.JsonUtil;
import com.leoman.utils.WebUtil;
import org.omg.CORBA.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by Administrator on 2016/3/15.
 */
@Controller
@RequestMapping(value = "admin/hadmin")
public class HadminController extends CommonController {

    @Autowired
    private HadminService service;

    /**
     * 列表页面
     *
     * @return
     */
    @RequestMapping(value = "/index")
    public String index() {
        return "hadmin/list";
    }

    /**
     * 查询列表
     * @param request
     * @param response
     * @param draw
     * @param start
     * @param length
     * @param admin
     * @param model
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public void list(HttpServletRequest request,
                     HttpServletResponse response,
                     Integer draw,
                     Integer start,
                     Integer length,
                     Admin admin,
                     Model model) {
        try {
            int pageNum = getPageNum(start, length);
            Page<Admin> page = service.findPage(admin,pageNum,length);
            Map<String, Object> result = DataTableFactory.fitting(draw, page);
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
                Admin admin = service.getById(id);
                model.addAttribute("admin", admin);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "hadmin/add";
    }


    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public void save(HttpServletResponse response,Admin admin) {
        try{
            service.create(admin);
            WebUtil.print(response, new Result(true).msg("操作成功!"));
        } catch (Exception e) {
            e.printStackTrace();
            WebUtil.print(response, new Result(false).msg("操作失败!"));
        }
    }

    /**
     * 删除
     *
     * @param response
     * @param id
     */
    @RequestMapping(value = "/delete", method = RequestMethod.GET )
    @ResponseBody
    public int delete(HttpServletResponse response, Long id) {
        try {
            service.deleteById(id);
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
            WebUtil.print(response, new Result(false).msg("操作失败!"));
        }
        return 0;
    }

    /**
     * 详情
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String detail(Long id,Model model) {

        Admin admin = service.getById(id);
//        if(admin.getContent() != null) {
//            admin.setContent(admin.getContent().replace("&lt","<").replace("&gt",">"));
//        }
        model.addAttribute("admin",admin);


        return "hadmin/details";
    }

    /**
     *
     * @param response
     * @param ids
     */
    @RequestMapping(value = "/publish", method =  RequestMethod.POST)
    @ResponseBody
    public void publish(HttpServletResponse response,String ids) {
//        Long[] arrayId = JsonUtil.json2Obj(ids, Long[].class);
//        service.publish(arrayId);
//        WebUtil.print(response, new Result(false).msg("操作成功!"));
    }
}
