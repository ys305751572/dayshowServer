package com.leoman.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * Created by Administrator on 2016/3/16.
 */
@Entity
@Table(name = "tb_record")
public class Record extends BaseEntity {

    @Column(name = "user_id")
    private Long userid;

    @Column(name = "contact")
    private String contact;

    @Column(name = "content")
    private String content;

    public Long getUserid() {
        return userid;
    }

    public void setUserid(Long userid) {
        this.userid = userid;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
