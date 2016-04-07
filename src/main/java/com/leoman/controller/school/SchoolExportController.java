package com.leoman.controller.school;

import com.leoman.service.UserService;
import com.leoman.utils.ExcelUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/user/export")
public class SchoolExportController {
    // webapp路径
    private static String webpath = (SchoolExportController.class.getResource("/").getPath().substring(0, SchoolExportController.class.getResource("/").getPath().indexOf("WEB-INF")));
    // 临时文件名
    private String tempName = "xywdExcelExportTempFile.xlsx";
    // 临时文件路径,不需要修改
    private String tempFilePath = webpath + tempName;

    // 统计数据导出模版
    private static String STATISTICS_TEMPLATE = webpath + "excelTemplate" + "/" + "statistics.xlsx";

    // 报名统计数据
    public static String STATISTICS_FIELD = "mobile,nickname,weibo,weixin,createDate,gender,height,weight,year,skin";

    // 导出文件名
    // 报名统计数据
    public static String STATISTICS_EXCEL_NAME = "会员列表" + getNowTime() + ".xlsx";

    @Autowired
    private UserService Service;


    /**
     * 导出报名统计数据
     *
     * @author
     */
    @RequestMapping(value = {"/exportStatistics"})
    public void exportStatistics(HttpServletRequest request,
                                 HttpServletResponse response,
                                 @RequestParam Map<String, Object> map) throws Exception {
        List<Map<String, Object>> list = Service.pageToExcel(map);
        ExcelUtil.createExcel(STATISTICS_TEMPLATE, STATISTICS_FIELD, list, tempFilePath);
        download(request, response, STATISTICS_EXCEL_NAME);
    }

    /**
     * 文件下载
     *
     * @author gaolei
     */
    public void download(HttpServletRequest request, HttpServletResponse response, String exportName) throws Exception {
        // 解决文件名乱码问题
        if (request.getHeader("User-Agent").toUpperCase().indexOf("MSIE") > 0) { // IE浏览器
            exportName = URLEncoder.encode(exportName, "UTF-8");
        } else { // 其他浏览器
            exportName = new String(exportName.getBytes("UTF-8"), "ISO8859-1");
        }

        InputStream inStream;
        inStream = new FileInputStream(tempFilePath);
        // 设置输出的格式
        response.setContentType("application/x-download");// 设置为下载application/x-download
        response.addHeader("content-type ", "application/x-msdownload");
        response.setContentType("application/octet-stream");
        // 设置输出的文件名
        response.setHeader("Content-Disposition", "attachment; filename=\"" + exportName + "\"");
        // 循环取出流中的数据
        byte[] b = new byte[100];
        int len;
        OutputStream outStream = response.getOutputStream();
        PrintStream out = new PrintStream(outStream);

        while ((len = inStream.read(b)) > 0) {
            out.write(b, 0, len);
            out.flush();
        }
        out.close();
        inStream.close();

        // 导出完成，删除文件
        File file = new File(tempFilePath);
        file.delete();
    }

    /**
     * 获取当前时间
     *
     * @author gaolei
     */
    public static String getNowTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        Date date = new Date();
        return sdf.format(date);
    }
}
