package com.chenshuangjzh.service;

import com.chenshuangjzh.dao.WritingDao;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import javax.inject.Named;

/**
 * Created by ninemax-jzh on 2016/1/29.
 */
@Named
@Transactional
public class WritingService {
    @Inject
    private WritingDao writingDao;
}
