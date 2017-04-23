package com.shupv.tools;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by Dell on 2017/4/22.
 */

public class SecurityTools {
    public static String md5(String plainText) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            try {
                md.update(plainText.getBytes("UTF8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            byte b[] = md.digest();
            int i;
            StringBuffer buf = new StringBuffer(200);
            for (int offset = 0; offset < b.length; offset++) {
                i = b[offset] & 0xff;
                if (i < 16) buf.append("0");
                buf.append(Integer.toHexString(i));
            }
            return buf.toString();
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String encoding(String id) {
        return id + "@#$%!" + 66666;
    }

    public static Integer decoding(String t) {
        return Integer.valueOf(t.split("[@#$%!]+")[0]);
    }
    public static Object nullCheck(Object o){
        return o == null ? "" : o;
    }
}
