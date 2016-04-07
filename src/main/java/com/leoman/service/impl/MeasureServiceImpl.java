package com.leoman.service.impl;

import com.leoman.dao.MeasureConfigDao;
import com.leoman.dao.MeasureDao;
import com.leoman.entity.Measure;
import com.leoman.entity.MeasureConfig;
import com.leoman.entity.User;
import com.leoman.service.MeasureConfigService;
import com.leoman.service.MeasureService;
import com.leoman.service.UserService;
import com.leoman.utils.DayshowUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/3/15.
 */
@Service
public class MeasureServiceImpl implements MeasureService {

    @Autowired
    private MeasureDao dao;

    @Autowired
    private MeasureConfigService measureConfigService;

    @Autowired
    private UserService userService;

    @Override
    public Page<Measure> findPage(final Measure measure, int pagenum, int pagesize) {
        Specification<Measure> spec = new Specification<Measure>() {
            @Override
            public Predicate toPredicate(Root<Measure> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                List<Predicate> list = new ArrayList<Predicate>();
                Predicate result = null;
                if(StringUtils.isNotBlank(measure.getUser().getMobile())) {
                    list.add(criteriaBuilder.like(root.get("user").get("mobile").as(String.class), '%' + measure.getUser().getMobile() + '%'));
                }
                if(StringUtils.isNotBlank(measure.getUser().getNickname())){
                    list.add(criteriaBuilder.like(root.get("user").get("nickname").as(String.class), '%' + measure.getUser().getNickname() + '%'));
                }
                if(measure.getPart() != null) {
                    list.add(criteriaBuilder.equal(root.get("part").as(Integer.class), measure.getPart()));
                }
                return criteriaBuilder.and(list.toArray(new Predicate[list.size()]));
            }
        };
        return dao.findAll(spec,new PageRequest(pagenum - 1,pagesize, Sort.Direction.DESC,"id"));
    }

    @Transactional
    @Override
    public void measureDetail(Long id, Model model) {
        if (id != null) {
            try {
                Measure measure = getById(id);
                User user = userService.getById(measure.getUser().getId());

                model.addAttribute("measure", measure);
                // 根据部位查询对应的反馈意见
                MeasureConfig config = measureConfigService.findNormalRange(measure.getPart());
                Double moistureUp = config.getMoistureUp();
                Double moistureDown = config.getMoistureDown();

                Double greaseUp = config.getGreaseUp();
                Double greaseDown = config.getGreaseDown();

                Double measureMoisture = measure.getMeasureMoisture();
                Double measureGrease = measure.getMeasureGrease();

                int typex = 0;
                int typey = 0;

                if(measureMoisture >= moistureDown && measureMoisture <= moistureUp) {
                    typex = 1;
                }
                if(measureMoisture > moistureUp) {
                    typex = 2;
                }

                if(measureGrease >= greaseDown && measureGrease <= greaseUp) {
                    typey = 1;
                }
                if(measureGrease > greaseUp) {
                    typey = 2;
                }
                MeasureConfig config2 = measureConfigService.findResult(measure.getPart(),typex,typey, DayshowUtils.getSkinType(user.getSkin()));
                model.addAttribute("result",config2.getResult());
                model.addAttribute("skin", DayshowUtils.getSkinType(user.getSkin()));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public List<Measure> findAll() {
        return null;
    }

    @Override
    public Page<Measure> find(int pageNum, int pageSize) {
        return null;
    }

    @Override
    public Page<Measure> find(int pageNum) {
        return null;
    }

    @Override
    public Measure getById(Long id) {
        return dao.findOne(id);
    }

    @Override
    public Measure deleteById(Long id) {
        Measure _measure = dao.findOne(id);
        dao.delete(_measure);
        return null;
    }

    @Override
    public Measure create(Measure measure) {
        return dao.save(measure);
    }

    @Override
    public Measure update(Measure measure) {
        return dao.save(measure);
    }

    @Override
    public void deleteAll(Long[] ids) {

    }
}
