package util;
import java.util.UUID;

public class ActiveCodeUtil {

    /**
     * 生成激活码
     * @return
     */
    public static String createActiveCode(){

        return UUID.randomUUID().toString();
    }






}
