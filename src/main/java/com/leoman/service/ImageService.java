package com.leoman.service;


import com.leoman.entity.Image;

/**
 * Created by wangbin on 2014/12/9.
 */
public interface ImageService {

    public Image getById(Long id);

    public Image deleteById(Long id);

    public Image create(Image image);

}
