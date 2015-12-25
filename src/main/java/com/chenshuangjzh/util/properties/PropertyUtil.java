package com.chenshuangjzh.util.properties;

import java.io.IOException;
import java.util.Properties;

/**
 * Created by ninemax-jzh on 2015/12/25.
 */
public class PropertyUtil {
    public static String getPropertyValue(String fileName,String key){
        Properties properties = new Properties();
        try {
            properties.load(PropertyUtil.class.getClassLoader().getResourceAsStream(fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String result = null;
        result = properties.getProperty(key);
        return result;
    }

    public static String getPropertyValue(String fileName,String key,String defaultValue){
        String propertyValue = getPropertyValue(fileName,key);
        if(propertyValue == null){
            return defaultValue;
        }else{
            return propertyValue;
        }
    }
}
