package com.leoman.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Administrator on 2016/3/17.
 */
@Entity
@Table(name = "tb_help")
public class Help extends BaseEntity{

    @Column(name = "content")
    private String content;

    @Column(name = "type")
    private String type;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
