package com.leoman.service.impl;

import com.leoman.dao.RecordDao;
import com.leoman.entity.Record;
import com.leoman.service.RecordService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/3/16.
 */
@Service
public class RecordServiceImpl implements RecordService {

    @Autowired
    private RecordDao dao;

    @Override
    public Page<Record> findPage(final Record record, int pagenum, int pagesize) {
        Specification<Record> spec = new Specification<Record>() {
            @Override
            public Predicate toPredicate(Root<Record> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                List<Predicate> list = new ArrayList<Predicate>();
                Predicate result = null;
                if (StringUtils.isNotBlank(record.getContent())) {
                    list.add(criteriaBuilder.like(root.get("content").as(String.class), '%' + record.getContent() + '%'));
                }
                if (StringUtils.isNotBlank(record.getContact())) {
                    list.add(criteriaBuilder.like(root.get("contact").as(String.class), '%' + record.getContact() + '%'));
                }

            return criteriaBuilder.and(list.toArray(new Predicate[list.size()]));
        }
    };
    return dao.findAll(spec,new PageRequest(pagenum - 1,pagesize, Sort.Direction.DESC,"id"));
}

    @Override
    public List<Record> findAll() {
        return null;
    }

    @Override
    public Page<Record> find(int pageNum, int pageSize) {
        return null;
    }

    @Override
    public Page<Record> find(int pageNum) {
        return null;
    }

    @Override
    public Record getById(Long id) {
        return dao.findOne(id);
    }

    @Override
    public Record deleteById(Long id) {
        Record _record = dao.findOne(id);
        dao.delete(_record);
        return null;
    }

    @Override
    public Record create(Record record) {
        return dao.save(record);
    }

    @Override
    public Record update(Record record) {
        return dao.save(record);
    }

    @Override
    public void deleteAll(Long[] ids) {

    }
}


