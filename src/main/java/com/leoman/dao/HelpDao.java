package com.leoman.dao;

import com.leoman.entity.Help;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by Administrator on 2016/3/17.
 */
public interface HelpDao extends JpaRepository<Help, Long> {
}
