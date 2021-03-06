package com.leoman.controller;

import com.leoman.common.exception.GeneralExceptionHandler;
import com.leoman.common.factory.DataTableFactory;
import com.leoman.controller.common.CommonController;
import com.leoman.core.bean.Result;
import com.leoman.entity.Admin;
import com.leoman.entity.Image;
import com.leoman.entity.Share;
import com.leoman.entity.User;
import com.leoman.service.ShareService;
import com.leoman.service.UserService;
import com.leoman.utils.ConfigUtil;
import com.leoman.utils.WebUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * Created by Administrator on 2016/3/22.
 */
@Controller
@RequestMapping(value = "admin/share")
public class ShareController extends CommonController {

    @Autowired
    private ShareService service;

    /**
     * 列表页面
     *
     * @return
     */
    @RequestMapping(value = "/index")
    public String index() {
        return "share/list";
    }

    /**
     * 查询列表
     * @param request
     * @param response
     * @param draw
     * @param start
     * @param length
     * @param _share
     */
    @RequestMapping(value = "/list")
    @ResponseBody
    public void list(HttpServletRequest request,
                     HttpServletResponse response,
                     Integer draw,
                     Integer start,
                     Integer length,
                     Share _share) {
        try {
            int pageNum = getPageNum(start, length);
            Page<Share> page = service.findPage(_share,pageNum,length);
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
                Share share = service.getById(id);
                if(share.getImage() != null) {
                    share.getImage().setPath(ConfigUtil.getString("upload.url") + share.getImage().getPath());
                }
                if(share.getContent() != null) {
                    share.setContent(share.getContent().replace("&lt","<").replace("&gt",">"));
                }
                model.addAttribute("share", share);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "share/add";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public void save(HttpServletResponse response,
                     Share share,Long imageId) {
        try{
            Share _share = null;
            Image coverImage = new Image();
            coverImage.setId(imageId);
            if(share.getId()!=null){
                 _share=service.getById(share.getId());
                _share.setContent(share.getContent());
                _share.setLevel(share.getLevel());
                _share.setName(share.getName());
                _share.setImage(coverImage);
                service.update(_share);
            }
            else {
                share.setImage(coverImage);
                service.create(share);
            }
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
}
