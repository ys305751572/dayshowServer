package com.leoman.entity;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/22.
 */
@Entity
@Table(name = "tb_share")
public class Share extends BaseEntity{

    @Column(name = "number")
    private String number;

    @Column(name = "name")
    private String name;

    @Column(name = "level")
    private Integer level;

    private String content;

    @OneToOne
    @JoinColumn(name = "cover_image_id")
    private Image image;

    public Image getImage() {
        return image;
    }

    public void setImage(Image image) {
        this.image = image;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
