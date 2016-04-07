package com.leoman.controller;

import com.leoman.common.exception.GeneralExceptionHandler;
import com.leoman.common.factory.DataTableFactory;
import com.leoman.controller.common.CommonController;
import com.leoman.core.Constant;
import com.leoman.entity.Measure;
import com.leoman.entity.User;
import com.leoman.service.MeasureConfigService;
import com.leoman.service.MeasureService;
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
import java.util.Calendar;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/3/15.
 */
@Controller
@RequestMapping(value = "admin/measure")
public class MeasureController extends CommonController {

    @Autowired
    private MeasureService service;

    @Autowired
    private MeasureConfigService measureConfigService;

    /**
     * 列表页面
     *
     * @return
     */
    @RequestMapping(value = "/index")
    public String index() {
        return "measure/list";
    }

    /**
     * 查询列表
     * @param request
     * @param response
     * @param draw
     * @param start
     * @param length
     * @param measure
     * @param model
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public void list(HttpServletRequest request,
                     HttpServletResponse response,
                     Integer draw,
                     Integer start,
                     Integer length,
                     Measure measure,
                     String mobile,
                     String nickname,
                     Model model) {
        try {
            int pageNum = getPageNum(start, length);
            User user = new User();
            user.setMobile(mobile);
            user.setNickname(nickname);
            measure.setUser(user);

            Page<Measure> page = service.findPage(measure,pageNum,length);
            List<Measure> list = page.getContent();
            for(Measure m : list) {
                Calendar calendar = Calendar.getInstance();
                int year = calendar.get(Calendar.YEAR);
                User _u = m.getUser();
                _u.setAge(year - _u.getYear());
            }
            Map<String, Object> result = DataTableFactory.fitting(draw, page);
            WebUtil.print(response, result);
        } catch (Exception e) {
            GeneralExceptionHandler.log(e);
            WebUtil.print(response, emptyData);
        }
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add(HttpServletRequest request, Long id, Model model) {

        service.measureDetail(id,model);
        return "measure/details";
    }
}
