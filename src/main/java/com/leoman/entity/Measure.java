package com.leoman.entity;

import org.hibernate.annotations.Columns;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/15.
 */
@Entity
@Table(name = "tb_measure")
public class Measure extends BaseEntity {

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User user;

    @Column(name = "part")
    private Integer part;

    @Column(name = "measure_moisture")
    private Double measureMoisture;

    @Column(name = "measure_grease")
    private Double measureGrease;

    @Column(name = "address")
    private String address;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getPart() {
        return part;
    }

    public void setPart(Integer part) {
        this.part = part;
    }

    public Double getMeasureMoisture() {
        return measureMoisture;
    }

    public void setMeasureMoisture(Double measureMoisture) {
        this.measureMoisture = measureMoisture;
    }

    public Double getMeasureGrease() {
        return measureGrease;
    }

    public void setMeasureGrease(Double measureGrease) {
        this.measureGrease = measureGrease;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
