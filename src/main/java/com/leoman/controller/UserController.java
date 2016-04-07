package com.leoman.controller;

import com.leoman.common.exception.GeneralExceptionHandler;
import com.leoman.common.factory.DataTableFactory;
import com.leoman.controller.common.CommonController;
import com.leoman.entity.User;
import com.leoman.service.UserService;
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
 * Created by Administrator on 2016/3/8.
 */
@Controller
@RequestMapping(value = "admin/user")
public class UserController extends CommonController {

    @Autowired
    private UserService service;

    /**
     * 列表页面
     *
     * @return
     */
    @RequestMapping(value = "/index")
    public String index() {
        return "user/list";
    }

    /**
     * 查询列表
     *
     * @param request
     * @param response
     * @param draw
     * @param start
     * @param length
     * @param _user
     * @param model
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public void list(HttpServletRequest request,
                     HttpServletResponse response,
                     Integer sortId,
                     Integer draw,
                     Integer start,
                     Integer length,
                     User _user,
                     Model model) {
        try {
            int pageNum = getPageNum(start, length);
            Page<User> page = service.findPage(_user,sortId,pageNum,length);
            Map<String, Object> result = DataTableFactory.fitting(draw, page);
            WebUtil.print(response, result);
        } catch (Exception e) {
            GeneralExceptionHandler.log(e);
            WebUtil.print(response, emptyData);
        }
    }

}