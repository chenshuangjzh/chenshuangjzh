package com.chenshuangjzh.util;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Response;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;

import java.io.File;

/**
 * Created by jiangzhenghui on 15/12/21.
 */
public class QiniuUpload {

    private static final String ACCESS_KEY = "VYYQv2mNBONrDCgNj6BHTfKQJd3Z9KkOYluRfKf7";
    private static final String SECRET_KEY = "0ei3pSO1YpX93fS6FAA3hCWj0fkYVCx9OYgw1iPx";

    private Auth auth = Auth.create(ACCESS_KEY,SECRET_KEY);

    private UploadManager uploadManager = new UploadManager();

    /**
     * get uptoken
     * @return uptoken
     */
    public String getToken(){
        return auth.uploadToken("chenshuangjzh");
    }

    /**
     * simple upload
     * @param file to upload File
     * @param key to save as name
     * @return
     * @throws QiniuException
     */
    public MyRet upload(File file,String key) throws QiniuException {
        Response res = uploadManager.put(file,key,getToken());
        MyRet ret = res.jsonToObject(MyRet.class);
        return ret;
    }
}
