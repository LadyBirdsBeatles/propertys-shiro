package com.xiaochen.beatles.util;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Calendar;

/**
 * 对字符串md5加密
 *
 * @return
 */
public class Utils {
    public static String getMD5(String str) {
        try {
            // 生成一个MD5加密计算摘要
            MessageDigest md = MessageDigest.getInstance("MD5");
            // 计算md5函数
            md.update(str.getBytes());
            // digest()最后确定返回md5 hash值，返回值为8为字符串。因为md5 hash值是16位的hex值，实际上就是8位的字符
            // BigInteger函数则将8位的字符串转换成16位hex值，用字符串来表示；得到字符串形式的hash值
            return new BigInteger(1, md.digest()).toString(16);
        } catch (Exception e) {
            throw new SecurityException("MD5加密出现错误");
        }
    }

    public static StringBuffer outTradeNo() {
        Calendar calendar = Calendar.getInstance();
        // 获得年份
        int year = calendar.get(Calendar.YEAR);
        // 获得月份
        int month = calendar.get(Calendar.MONTH) + 1;
        // 获得日期
        int date = calendar.get(Calendar.DATE);
        // 获得小时
        int hour = calendar.get(Calendar.HOUR_OF_DAY);
        // 获得分钟
        int minute = calendar.get(Calendar.MINUTE);
        // 获得秒
        int second = calendar.get(Calendar.SECOND);
        //获取毫秒
        int millissecond = calendar.get(Calendar.MILLISECOND);
        // 获得星期几（注意（这个与Date类是不同的）：1代表星期日、2代表星期1、3代表星期二，以此类推）
        int day = calendar.get(Calendar.DAY_OF_WEEK);
        //生成商户订单号
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(year).append(month).append(date).append(hour).append(minute).append(second).append(millissecond).append(day);

        return stringBuffer;
    }

    /**
     * @Author xiaochen
     * @Description 注册时，进行shiro加密，返回加密后的结果，如果在加入shiro之前，存在用户密码不是此方式加密的，那么将无法登录
     * 使用用户名作为盐值
     * @Date 16:58 2020/4/14
     * @Param [username, password]
     * @Return java.lang.String
     **/
    public static String shiroMd5(String username, String password) {
        // 加密方式
        String hashAlgorithmName = "MD5";
        // 以账号作为盐值
        ByteSource salt = ByteSource.Util.bytes(username);
        // 加密11次
        int hashIterations = 11;
        return new SimpleHash(hashAlgorithmName, password, salt, hashIterations).toString();
    }

}
