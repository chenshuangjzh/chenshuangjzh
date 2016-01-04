package com.chenshuangjzh.service;

import com.chenshuangjzh.dao.WhisperDao;
import com.chenshuangjzh.pojo.Whisper;
import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

/**
 * Created by ninemax-jzh on 2015/12/30.
 */
@Named
@Transactional
public class WhisperService {

    @Inject
    private WhisperDao whisperDao;

    /**
     * find all whispers
     * @return
     */
    public Object findAll() {
        List<Whisper> whisperList = whisperDao.findAll();
        return whisperList;
    }

    /**
     * add new whisper
     * @param content
     * @param pushMessageType
     * @return
     */
    public Whisper add(String content, String pushMessageType) {
        Whisper whisper = new Whisper();
        whisper.setContent(content);
        whisper.setPublisher(pushMessageType);
        DateTimeFormatter dtf = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss.SSS");
        whisper.setCreateTime(new DateTime().toString(dtf));
        whisperDao.save(whisper);
        return whisper;
    }
}
