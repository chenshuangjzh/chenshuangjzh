package com.chenshuangjzh.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by ninemax-jzh on 2015/12/25.
 */
public class TimeTest {

    public static void main(String[] args) {
        Date date = new Date();
        int hours = date.getHours();
        System.out.println(hours);
    }

    /*public static void main(String[] args) {
        long time = 13603956734587420L;//2013-02-09 15:41:13
        String date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(time / 10000));
        System.out.println(date);

    }*/

    /*public static void main(String[] args) {
        DateTime dateTime = new DateTime("2013-02-09 15:41:13");
        long time = 13603956734587420L;
        long time2 = dateTime.getMillis();
        System.out.println(time == time2);
    }*/
}
