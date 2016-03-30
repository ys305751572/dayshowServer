package com.leoman.entity;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/22.
 */
@Entity
@Table(name = "tb_measure_config")
public class MeasureConfig extends BaseEntity {

    @Column(name = "part")
    private Integer part;

    @Column(name = "level")
    private Integer level;

    @Column(name = "moisture_up")
    private Double moistureUp;

    @Column(name = "moisture_down")
    private Double moistureDown;

    @Column(name = "grease_up")
    private Double greaseUp;

    @Column(name = "grease_down")
    private Double greaseDown;

    @Column(name = "type_x")
    private Integer typeX;

    @Column(name = "type_y")
    private Integer typeY;

    @Column(name = "skin_type")
    private Integer skinType;

    @Column(name = "result")
    private String result;

    public Integer getPart() {
        return part;
    }

    public void setPart(Integer part) {
        this.part = part;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }

    public Double getMoistureUp() {
        return moistureUp;
    }

    public void setMoistureUp(Double moistureUp) {
        this.moistureUp = moistureUp;
    }

    public Double getMoistureDown() {
        return moistureDown;
    }

    public void setMoistureDown(Double moistureDown) {
        this.moistureDown = moistureDown;
    }

    public Double getGreaseUp() {
        return greaseUp;
    }

    public void setGreaseUp(Double greaseUp) {
        this.greaseUp = greaseUp;
    }

    public Double getGreaseDown() {
        return greaseDown;
    }

    public void setGreaseDown(Double greaseDown) {
        this.greaseDown = greaseDown;
    }

    public Integer getTypeX() {
        return typeX;
    }

    public void setTypeX(Integer typeX) {
        this.typeX = typeX;
    }

    public Integer getTypeY() {
        return typeY;
    }

    public void setTypeY(Integer typeY) {
        this.typeY = typeY;
    }

    public Integer getSkinType() {
        return skinType;
    }

    public void setSkinType(Integer skinType) {
        this.skinType = skinType;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
