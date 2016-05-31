package com.leoman.controller;

import com.leoman.common.exception.GeneralExceptionHandler;
import com.leoman.common.factory.DataTableFactory;
import com.leoman.controller.common.CommonController;
import com.leoman.core.bean.Result;
import com.leoman.entity.Image;
import com.leoman.entity.Level;
import com.leoman.service.LevelService;
import com.leoman.service.UploadImageService;
import com.leoman.utils.ConfigUtil;
import com.leoman.utils.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/3/21.
 */
@Controller
@RequestMapping(value = "admin/level")
public class LevelController extends CommonController {


    @Autowired
    private LevelService service;

    @Autowired
    private UploadImageService uploadImageService;

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "level/list";
    }

    /**
     *
     * @param response
     * @param draw
     * @param start
     * @param length
     * @param level
     */
    @RequestMapping(value = "/list", method = RequestMethod.POST)
    @ResponseBody
    public void list(HttpServletResponse response,
                     Integer draw,
                     Integer start,
                     Integer length,
                     Level level) {
        try {
            int pageNum = getPageNum(start, length);
            Page<Level> page = service.find(pageNum, length);
            List<Level> list = page.getContent();

            if(list != null && !list.isEmpty()) {
                for (Level _l : list) {
                    _l.setIcon(ConfigUtil.getString("upload.url") + _l.getIcon());
                }
            }

            Map<String, Object> result = DataTableFactory.fitting(draw, page);
            WebUtil.print(response, result);
        } catch (Exception e) {
            GeneralExceptionHandler.log(e);
            WebUtil.print(response, emptyData);
        }
    }

    /**
     *
     * 保存
     *
     * @param response
     * @param multipartRequest
     * @param level1
     */

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public void save(HttpServletResponse response, MultipartRequest multipartRequest, Integer level1) {
        try {
            MultipartFile multipartFile = multipartRequest.getFile("mainImage");

            Level level = service.findByLevel(level1);
            String path = uploadImageService.uploadFile(multipartFile);
            level.setIcon(path);

            service.update(level);

            WebUtil.print(response, new Result(true).msg("操作成功!"));
        } catch (Exception e) {
            e.printStackTrace();
            WebUtil.print(response, new Result(false).msg("操作失败!"));
        }
    }
}
