package com.leoman.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Administrator on 2016/3/21.
 */
@Entity
@Table(name = "tb_level_medal")
public class Level extends BaseEntity{

    @Column(name = "level")
    private Integer level;

    @Column(name = "icon")
    private String icon;

    @Column(name = "number")
    private String number;

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }
}
