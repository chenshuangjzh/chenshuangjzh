package com.chenshuangjzh.service;

import com.chenshuangjzh.util.properties.PropertyUtil;
import org.springframework.transaction.annotation.Transactional;
import javax.inject.Named;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/**
 * Created by ninemax-jzh on 2015/12/29.
 */
@Named
@Transactional
public class TimesService {

    /**
     * calculate time from begin to now
     * @return
     */
    public Object calculateTime() {
        long result;
        String beginTime = PropertyUtil.getPropertyValue("chenshuangjzh.properties","beginTime");
        Date localDate = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");
        sdf.setTimeZone(TimeZone.getTimeZone("GMT+8:00"));
        String nowDateStr = sdf.format(localDate);
        Date beginDate = null;
        Date nowDate = null;
        try {
            beginDate = sdf.parse(beginTime);
            nowDate = sdf.parse(nowDateStr);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        result = nowDate.getTime() - beginDate.getTime() + 86400000;
        return result;
    }
}
