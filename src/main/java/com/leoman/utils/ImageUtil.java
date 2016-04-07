package com.leoman.utils;

import com.leoman.core.Configue;
import com.leoman.entity.Image;

import com.leoman.entity.vo.FileBo;
import net.coobird.thumbnailator.Thumbnails;
import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by wangbin on 2014/12/30.
 */
public class ImageUtil {



    public static void compactImage(File srcFile,String destDir,String destImage)throws IOException{
        Thumbnails.of(srcFile).scale(1f).outputQuality(0.5).toFile(new File(destDir, destImage));
    }

    public static void thumbImage(File srcFile,String destDir,String destImage,int width,int height)throws IOException {
        BufferedImage srcImage = ImageIO.read(srcFile);
        Thumbnails.of(srcImage)
                .size(width,height)
                .outputQuality(1)
                .keepAspectRatio(false)
                .toFile(new File(destDir, destImage));
    }



    public static void changeImgPath(Image image){
        if(image==null){
            return;
        }
        String path = image.getPath();
        if(path.contains(Configue.getUploadUrl())){
            return;
        }
        image.setPath(Configue.getUploadUrl()+image.getPath());
    }

    public static Map<String, Long> getImgInfo(String imgPath){
        File file = new File(imgPath);
        return getImgInfo(file);
    }


    public static Map<String, Long> getImgInfo(File imgFile) {
        Map<String, Long> map = new HashMap<String, Long>(3);
        try {
            FileInputStream fis = new FileInputStream(imgFile);
            BufferedImage buff = ImageIO.read(imgFile);
            map.put("width", buff.getWidth() * 1L);
            map.put("height", buff.getHeight() * 1L);
            map.put("size",  imgFile.length());
            fis.close();
        } catch (FileNotFoundException e) {
            System.err.println("所给的图片文件" + imgFile.getPath() + "不存在！计算图片尺寸大小信息失败！");
            map = null;
        } catch (IOException e) {
            System.err.println("计算图片" + imgFile.getPath() + "尺寸大小信息失败！");
            map = null;
        }
        return map;
    }

    public FileBo save(MultipartFile file) throws IOException{
        FileBo fileBo =  save(file,String.valueOf(System.currentTimeMillis()));
        return fileBo;
    }

    public FileBo save(MultipartFile file,String fileName) throws IOException{

        FileBo fileBo = new FileBo();
        InputStream inputStream = file.getInputStream();
        String origFileName = file.getOriginalFilename(); //原始名称,如aa.jpg
        String ext =  FileUtil.getFileExt(origFileName); //后缀，如jpg
        String uploadPath = UploadUtil.getImagesUpladPath(); //生成日期目录 image/2014/7/21/
        String foreName = uploadPath+fileName;   //文件名称 image/2014/7/21/221144144554
        String desFilePathName = uploadPath+fileName+ext;//完整文件名称 image/2014/7/21/221144144554.jpg
        File theFile = new File(Configue.getUploadPath(),desFilePathName); //生成的文件对象
        fileBo.setName(fileName);
        fileBo.setForeName(foreName);
        fileBo.setExt(ext);
        fileBo.setPath(desFilePathName);
        fileBo.setFile(theFile);
        FileUtils.copyInputStreamToFile(inputStream,theFile);
        return fileBo;
    }
}
