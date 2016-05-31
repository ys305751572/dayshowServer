package com.leoman.controller;

import com.leoman.common.exception.GeneralExceptionHandler;
import com.leoman.common.factory.DataTableFactory;
import com.leoman.controller.common.CommonController;
import com.leoman.core.bean.Result;
import com.leoman.entity.Admin;
import com.leoman.entity.Help;
import com.leoman.entity.Order;
import com.leoman.entity.Product;
import com.leoman.service.HelpService;
import com.leoman.service.OrderService;
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
import java.util.Map;

/**
 * Created by Administrator on 2016/3/17.
 */
@Controller
@RequestMapping(value = "admin/help")
public class HelpController extends CommonController {
    @Autowired
    private HelpService service;

    /**
     * 列表页面
     *
     * @return
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "help/list";
    }


    /**
     * @param request
     * @param response
     * @param length
     * @param start
     */
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public void list(HttpServletRequest request,
                     HttpServletResponse response,
                     Integer length,
                     Integer start,
                     Help help,
                     Integer draw) {
        try {
            int pageNum = getPageNum(start, length);
            Page<Help> page = service.find(pageNum, length);
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
                Help help = service.getById(id);
                help.setContent(help.getContent().replace("&lt","<").replace("&gt",">"));
                model.addAttribute("help", help);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "help/add";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public void save(HttpServletResponse response,Help help) {
        try{
            service.create(help);
            WebUtil.print(response, new Result(true).msg("操作成功!"));
        } catch (Exception e) {
            e.printStackTrace();
            WebUtil.print(response, new Result(false).msg("操作失败!"));
        }
    }

    /**
     * 详情
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "/detail", method = RequestMethod.GET)
    public String detail(Long id,Model model) {

        Help help = service.getById(id);
        if(help.getContent() != null) {
            help.setContent(help.getContent().replace("&lt","<").replace("&gt",">"));
        }
        model.addAttribute("help",help);
        return "help/details";
    }
}
