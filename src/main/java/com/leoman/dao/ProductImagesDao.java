package com.leoman.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.leoman.entity.Image;
import com.leoman.entity.ProductImages;

import java.util.List;

/**
 * Created by wangbin on 2015/4/16.
 */
public interface ProductImagesDao extends JpaRepository<ProductImages, Long> {

    @Modifying
    @Query("delete from ProductImages a where a.product.id =?1")
    public void deleteByProductId(Long productId);

    @Modifying
    @Query("delete from ProductImages a where a.product.id =?1 and a.image.id=?2")
    public void delete(Long productId, Long imageId);

    @Query("select a.image from ProductImages a where a.product.id =?1")
    public List<Image> findImagesByProduct(Long productId);



}
